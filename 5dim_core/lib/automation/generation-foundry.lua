function genFoundry(inputs)
    -- Copy electric furnace
    local item = table.deepcopy(data.raw.item["foundry"])
    local recipe = table.deepcopy(data.raw.recipe["foundry"])
    local entity = table.deepcopy(data.raw["assembling-machine"]["foundry"])
    local tech = table.deepcopy(data.raw.technology["automation"])

    --Item
    if inputs.new then
        item.name = "5d-foundry-" .. inputs.number
    end
    item.icon = "__space-age__/graphics/icons/foundry.png"
    item.subgroup = inputs.subgroup
    item.order = inputs.order
    item.place_result = item.name

    --Recipe
    recipe.name = item.name
    recipe.icon = item.icon
    recipe.icon_size = 64
    if inputs.new then
        recipe.enabled = false
    end
    recipe.ingredients = inputs.ingredients
    recipe.results = { { type = "item", name = item.name, amount = 1 } }

    --Entity
    entity.name = item.name
    entity.next_upgrade = inputs.nextUpdate or nil
    entity.icon = item.icon
    entity.minable.result = item.name
    entity.crafting_speed = inputs.craftingSpeed
    entity.energy_usage = inputs.energyUsage .. "kW"
    entity.module_slots = inputs.moduleSlots
    entity.fast_replaceable_group = "foundry"

    data:extend({ entity, recipe, item })

    -- Technology
    if inputs.tech then
        tech.name = "5d-foundry-" .. inputs.tech.number
        tech.icon = "__space-age__/graphics/technology/foundry.png"
        tech.icon_size =256
        tech.unit.count = inputs.tech.count
        tech.unit.ingredients = inputs.tech.packs
        tech.prerequisites = inputs.tech.prerequisites
        tech.effects = {
            {
                type = "unlock-recipe",
                recipe = item.name
            }
        }
        data:extend({ tech })
    end
end
