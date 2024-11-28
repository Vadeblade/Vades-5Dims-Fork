function genRecycler(inputs)
    -- Copy electric furnace
    local item = table.deepcopy(data.raw.item["recycler"])
    local recipe = table.deepcopy(data.raw.recipe["recycler"])
    local entity = table.deepcopy(data.raw["furnace"]["recycler"])
    local tech = table.deepcopy(data.raw.technology["automation"])

    --Item
    if inputs.new then
        item.name = "5d-recycler-" .. inputs.number
    end
    item.icon = "__quality__/graphics/icons/recycler.png"
    item.subgroup = inputs.subgroup
    item.order = inputs.order
    item.place_result = item.name

    --Recipe
    recipe.name = item.name
    recipe.results = { { type = "item", name = item.name, amount = 1 } }
    recipe.icon = item.icon
    recipe.icon_size = 64
    recipe.enabled = false
    recipe.ingredients = inputs.ingredients

    --Entity
    entity.name = item.name
    entity.next_upgrade = inputs.nextUpdate or nil
    entity.icon = item.icon
    entity.minable.result = item.name
    entity.crafting_speed = inputs.craftingSpeed
    entity.module_slots = inputs.moduleSlots
    entity.energy_usage = inputs.energyUsage .. "kW"
    entity.energy_source.emissions_per_minute = inputs.pollution

    data:extend({entity, recipe, item})

    if inputs.tech then
        -- Technology
        tech.name = "5d-recycling-" .. inputs.tech.number
        tech.icon = "__quality__/graphics/technology/recycling.png"
        tech.unit.count = inputs.tech.count
        tech.unit.ingredients = inputs.tech.packs
        tech.prerequisites = inputs.tech.prerequisites
        tech.effects = {
            {
                type = "unlock-recipe",
                recipe = item.name
            }
        }
        data:extend({tech})
    end
end
