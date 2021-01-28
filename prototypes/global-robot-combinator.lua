-- entity
local globot_entity = table.deepcopy(data.raw["constant-combinator"]["constant-combinator"])
globot_entity.name = "global-robots-combinator"
globot_entity.item_slot_count = 5
globot_entity.minable.result = "global-robots-combinator"
data:extend({globot_entity})

-- item
local globot_item = table.deepcopy(data.raw["item"]["constant-combinator"]) 
globot_item.name = "global-robots-combinator"
globot_item.subgroup = "circuit-network"
globot_item.place_result=globot_item.name
globot_item.order = "c[combinators]-z[global-robots-combinator]"
data:extend({globot_item})

-- recipe
local globot_recipe = {}
globot_recipe.type = "recipe"
globot_recipe.name = "global-robots-combinator"
globot_recipe.enabled = "true"
globot_recipe.ingredients = {{"constant-combinator", 1}, {"advanced-circuit", 1}}
globot_recipe.result = "global-robots-combinator"
data:extend({globot_recipe})
