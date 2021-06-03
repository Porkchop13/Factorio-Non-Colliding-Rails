local container = {}
-- Recipe
local recipe = table.deepcopy(data.raw["recipe"]["rail"])
recipe.name = "ncr-rail"
recipe.result = "ncr-rail"
table.insert(container, recipe)
-- Item
local item = table.deepcopy(data.raw["rail-planner"]["rail"])
item.name = "ncr-rail"
item.place_result = "ncr-straight-rail"
item.straight_rail = "ncr-straight-rail"
item.curved_rail = "ncr-curved-rail"
table.insert(container, item)
-- Straight Rail
local straightRail = table.deepcopy(data.raw["straight-rail"]["straight-rail"])
straightRail.name = "ncr-straight-rail"
straightRail.collision_mask = {"floor-layer"}
straightRail.minable.result = "ncr-rail"
table.insert(container, straightRail)
-- Curved Rail
local curvedRail = table.deepcopy(data.raw["curved-rail"]["curved-rail"])
curvedRail.name = "ncr-curved-rail"
curvedRail.collision_mask = {"floor-layer"}
curvedRail.minable.result = "ncr-rail"
curvedRail.placeable_by.item = "ncr-rail"
table.insert(container, curvedRail)

data:extend(container)
