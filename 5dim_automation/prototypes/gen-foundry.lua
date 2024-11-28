require("__5dim_core__.lib.automation.generation-foundry")

local energy = 2500
local energyIncrementValue = 900

local crafting = 4
local craftingIncrementValue = 4

local modules = 4

local techCount = 750

local increment = 1

-- Electric furnace 01
genFoundry {
    number = "01",
    subgroup = "vulcanus-foundry",
    craftingSpeed = crafting,
    energyUsage = energy,
    moduleSlots = modules,
    new = false,
    order = "a",
    ingredients = {
        { type = "item", name = "steel-plate",         amount = 50 },
        { type = "item", name = "electronic-circuit",     amount = 30 },
        { type = "item", name = "refined-concrete",    amount = 20 },
        { type = "item", name = "tungsten-carbide",       amount = 50 }
    },
    nextUpdate = "5d-foundry-02",
    tech = nil
}

-- Electric furnace 02
genFoundry {
    number = "02",
    subgroup = "vulcanus-foundry",
    craftingSpeed = crafting + (craftingIncrementValue * increment),
    energyUsage = energy + (energyIncrementValue * increment),
    moduleSlots = modules,
    new = true,
    order = "b",
    ingredients = {
        { type = "item", name = "foundry",         amount = 1 },
        { type = "item", name = "steel-plate",         amount = 50 },
        { type = "item", name = "electronic-circuit",     amount = 30 },
        { type = "item", name = "refined-concrete",    amount = 20 },
        { type = "item", name = "tungsten-carbide",       amount = 50 },
    },
    nextUpdate = "5d-foundry-03",
    tech = {
        number = 2,
        count = techCount * 1,
        packs = {
            { "automation-science-pack",   1 },
            { "logistic-science-pack",     1 },
            { "chemical-science-pack",     1 },
            { "production-science-pack",   1 },
            { "utility-science-pack",      1 },
            { "space-science-pack",        1 },
            { "metallurgic-science-pack",   1}
        },
        prerequisites = {
            "foundry"
        }
    }
}

increment = increment + 1

-- Electric furnace 03
genFoundry {
    number = "03",
    subgroup = "vulcanus-foundry",
    craftingSpeed = crafting + (craftingIncrementValue * increment),
    energyUsage = energy + (energyIncrementValue * increment),
    moduleSlots = modules + 1,
    new = true,
    order = "c",
    ingredients = {
        { type = "item", name = "5d-foundry-02",         amount = 1 },
        { type = "item", name = "steel-plate",         amount = 50 },
        { type = "item", name = "electronic-circuit",     amount = 30 },
        { type = "item", name = "refined-concrete",    amount = 20 },
        { type = "item", name = "tungsten-carbide",       amount = 50 },
    },
    nextUpdate = "5d-foundry-04",
    tech = {
        number = 3,
        count = techCount * 2,
        packs = {
            { "automation-science-pack",   1 },
            { "logistic-science-pack",     1 },
            { "chemical-science-pack",     1 },
            { "production-science-pack",   1 },
            { "utility-science-pack",      1 },
            { "space-science-pack",        1 },
            { "metallurgic-science-pack",   1}
        },
        prerequisites = {
            "5d-foundry-2"
        }
    },
    copy = nil
}

increment = increment + 1


-- Electric furnace 04
genFoundry {
    number = "04",
    subgroup = "vulcanus-foundry",
    craftingSpeed = crafting + (craftingIncrementValue * increment),
    energyUsage = energy + (energyIncrementValue * increment),
    moduleSlots = modules + 1,
    new = true,
    order = "d",
    ingredients = {
        { type = "item", name = "5d-foundry-03",         amount = 1 },
        { type = "item", name = "steel-plate",         amount = 50 },
        { type = "item", name = "advanced-circuit",     amount = 30 },
        { type = "item", name = "refined-concrete",    amount = 20 },
        { type = "item", name = "tungsten-carbide",       amount = 50 },
        
        
    },
    nextUpdate = "5d-foundry-05",
    tech = {
        number = 4,
        count = techCount * 3,
        packs = {
            { "automation-science-pack",   1 },
            { "logistic-science-pack",     1 },
            { "chemical-science-pack",     1 },
            { "production-science-pack",   1 },
            { "utility-science-pack",      1 },
            { "space-science-pack",        1 },
            { "metallurgic-science-pack",   1}
        },
        prerequisites = {
            "5d-foundry-3"
        }
    },
    copy = nil
}

increment = increment + 1


-- Electric furnace 05
genFoundry {
    number = "05",
    subgroup = "vulcanus-foundry",
    craftingSpeed = crafting + (craftingIncrementValue * increment),
    energyUsage = energy + (energyIncrementValue * increment),
    moduleSlots = modules + 2,
    new = true,
    order = "e",
    ingredients = {
        { type = "item", name = "5d-foundry-04",         amount = 1 },
        { type = "item", name = "steel-plate",         amount = 50 },
        { type = "item", name = "advanced-circuit",     amount = 30 },
        { type = "item", name = "refined-concrete",    amount = 20 },
        { type = "item", name = "tungsten-carbide",       amount = 50 },
        { type = "item", name = "speed-module",            amount = 5 },
    },
    nextUpdate = "5d-foundry-06",
    tech = {
        number = 5,
        count = techCount * 4,
        packs = {
            { "automation-science-pack",   1 },
            { "logistic-science-pack",     1 },
            { "chemical-science-pack",     1 },
            { "production-science-pack",   1 },
            { "utility-science-pack",      1 },
            { "space-science-pack",        1 },
            { "metallurgic-science-pack",   1}
        },
        prerequisites = {
            "5d-foundry-4"
        }
    },
    copy = nil
}

increment = increment + 1


-- Electric furnace 06
genFoundry {
    number = "06",
    subgroup = "vulcanus-foundry",
    craftingSpeed = crafting + (craftingIncrementValue * increment),
    energyUsage = energy + (energyIncrementValue * increment),
    moduleSlots = modules + 2,
    new = true,
    order = "f",
    ingredients = {
        { type = "item", name = "5d-foundry-05",         amount = 1 },
        { type = "item", name = "steel-plate",         amount = 50 },
        { type = "item", name = "advanced-circuit",     amount = 30 },
        { type = "item", name = "refined-concrete",    amount = 20 },
        { type = "item", name = "tungsten-carbide",       amount = 50 },
        { type = "item", name = "productivity-module",            amount = 5 },
    },
    nextUpdate = "5d-foundry-07",
    tech = {
        number = 6,
        count = techCount * 5,
        packs = {
            { "automation-science-pack",   1 },
            { "logistic-science-pack",     1 },
            { "chemical-science-pack",     1 },
            { "production-science-pack",   1 },
            { "utility-science-pack",      1 },
            { "space-science-pack",        1 },
            { "metallurgic-science-pack",   1}
        },
        prerequisites = {
            "5d-foundry-5"
        }
    },
    copy = nil
}

increment = increment + 1


-- Electric furnace 07
genFoundry {
    number = "07",
    subgroup = "vulcanus-foundry",
    craftingSpeed = crafting + (craftingIncrementValue * increment),
    energyUsage = energy + (energyIncrementValue * increment),
    moduleSlots = modules + 3,
    new = true,
    order = "g",
    ingredients = {
        { type = "item", name = "5d-foundry-06",         amount = 1 },
        { type = "item", name = "steel-plate",         amount = 50 },
        { type = "item", name = "advanced-circuit",     amount = 30 },
        { type = "item", name = "refined-concrete",    amount = 20 },
        { type = "item", name = "tungsten-carbide",       amount = 50 },
        { type = "item", name = "speed-module-2",            amount = 5 },
    },
    nextUpdate = "5d-foundry-08",
    tech = {
        number = 7,
        count = techCount * 6,
        packs = {
            { "automation-science-pack",   1 },
            { "logistic-science-pack",     1 },
            { "chemical-science-pack",     1 },
            { "production-science-pack",   1 },
            { "utility-science-pack",      1 },
            { "space-science-pack",        1 },
            { "metallurgic-science-pack",   1}
        },
        prerequisites = {
            "5d-foundry-6"
        }
    },
    copy = nil
}

increment = increment + 1


-- Electric furnace 08
genFoundry {
    number = "08",
    subgroup = "vulcanus-foundry",
    craftingSpeed = crafting + (craftingIncrementValue * increment),
    energyUsage = energy + (energyIncrementValue * increment),
    moduleSlots = modules + 3,
    new = true,
    order = "h",
    ingredients = {
        { type = "item", name = "5d-foundry-07",         amount = 1 },
        { type = "item", name = "steel-plate",         amount = 50 },
        { type = "item", name = "advanced-circuit",     amount = 30 },
        { type = "item", name = "refined-concrete",    amount = 20 },
        { type = "item", name = "tungsten-carbide",       amount = 50 },
        { type = "item", name = "productivity-module-2",  amount = 5 },
    },
    nextUpdate = "5d-foundry-09",
    tech = {
        number = 8,
        count = techCount * 7,
        packs = {
            { "automation-science-pack",   1 },
            { "logistic-science-pack",     1 },
            { "chemical-science-pack",     1 },
            { "production-science-pack",   1 },
            { "utility-science-pack",      1 },
            { "space-science-pack",        1 },
            { "metallurgic-science-pack",   1}
        },
        prerequisites = {
            "5d-foundry-7"
        }
    },
    copy = nil
}

increment = increment + 1


-- Electric furnace 09
genFoundry {
    number = "09",
    subgroup = "vulcanus-foundry",
    craftingSpeed = crafting + (craftingIncrementValue * increment),
    energyUsage = energy + (energyIncrementValue * increment),
    moduleSlots = modules + 4,
    new = true,
    order = "i",
    ingredients = {
        { type = "item", name = "5d-foundry-08",         amount = 1 },
        { type = "item", name = "steel-plate",         amount = 50 },
        { type = "item", name = "processing-unit",     amount = 30 },
        { type = "item", name = "low-density-structure",    amount = 20 },
        { type = "item", name = "tungsten-carbide",       amount = 50 },
        { type = "item", name = "speed-module-3",       amount = 5 },
    },
    nextUpdate = "5d-foundry-10",
    tech = {
        number = 9,
        count = techCount * 8,
        packs = {
            { "automation-science-pack",   1 },
            { "logistic-science-pack",     1 },
            { "chemical-science-pack",     1 },
            { "production-science-pack",   1 },
            { "utility-science-pack",      1 },
            { "space-science-pack",        1 },
            { "metallurgic-science-pack",   1}
        },
        prerequisites = {
            "5d-foundry-8"
        }
    },
    copy = nil
}

increment = increment + 1


-- Electric furnace 10
genFoundry {
    number = "10",
    subgroup = "vulcanus-foundry",
    craftingSpeed = crafting + (craftingIncrementValue * increment),
    energyUsage = energy + (energyIncrementValue * increment),
    moduleSlots = modules + 4,
    new = true,
    order = "j",
    ingredients = {
        { type = "item", name = "5d-foundry-09",         amount = 1 },
        { type = "item", name = "steel-plate",         amount = 50 },
        { type = "item", name = "processing-unit",     amount = 30 },
        { type = "item", name = "low-density-structure",    amount = 20 },
        { type = "item", name = "tungsten-carbide",       amount = 50 },
        { type = "item", name = "productivity-module-3", amount = 5 },
    },
    tech = {
        number = 10,
        count = techCount * 9,
        packs = {
            { "automation-science-pack",   1 },
            { "logistic-science-pack",     1 },
            { "chemical-science-pack",     1 },
            { "production-science-pack",   1 },
            { "utility-science-pack",      1 },
            { "space-science-pack",        1 },
            { "metallurgic-science-pack",   1}
        },
        prerequisites = {
            "5d-foundry-9"
        }
    },
    copy = nil
}
