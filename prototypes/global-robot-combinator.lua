-- entity
local globot = table.deepcopy(data.raw["constant-combinator"]["constant-combinator"])
globot.name = "global-robots-combinator"
globot.item_slot_count = 5
globot.minable.result = globot.name
data:extend({globot})

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
globot_recipe.name = "globot-combinator"
globot_recipe.enabled = "false"
globot_recipe.ingredients = {{"constant-combinator", 1}, {"electronic-circuit", 1}}
globot_recipe.result = globot_recipe.name
data:extend({globot_recipe})
