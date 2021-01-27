local types = {"roboport", "character"}

local function objectID(entity)
  if entity and entity.valid then
    local pos = entity.position
    if pos then
      return entity.name .. ":" .. pos.x .. ":" .. pos.y
    end
  end
  return nil
end

-- returns {#networks, all_logistics, all_construction, idle_logistics, idle_construction}
-- for the specified object types
local function scan(types)
  -- set up results and dictionary to hold distinct counts per network
  local total, netStats = { 0, 0, 0, 0, 0 }, {}
  -- for each surface, find all relevant entities
  if game then -- otherwise, not yet initialized
    for _, surface in pairs(game.surfaces) do
      for _, entity in pairs(surface.find_entities_filtered{type=types}) do
        local network = entity.logistic_network
        if entity.valid and network then
          local ids = {}
          for i,cell in pairs(network.cells) do
            local cellID = objectID(cell.owner)
            if cellID then
              ids[i] = cellID
            end
          end
          if #ids then
            table.sort(ids)
            netStats[ids[#ids]] = { 1, network.all_logistic_robots, network.all_construction_robots, network.available_logistic_robots, network.available_construction_robots }
          end
        end
      end
    end
    for _, stats in pairs(netStats) do
      for i,value in pairs(stats) do
        total[i] = total[i] + value
        end
    end
  end
  return total
end

script.on_nth_tick(5*60, -- 5 seconds * 60 ticks/second
  function(event)
    local stats = scan(types)
    if stats then
      game.print("Found "
        .. stats[1] .. " networks with "
        .. stats[2] .. " logistics robots (" .. stats[4] .. " idle) and "
        .. stats[3] .. " construction robots (" .. stats[5] .. " idle)")
    end
  end)
