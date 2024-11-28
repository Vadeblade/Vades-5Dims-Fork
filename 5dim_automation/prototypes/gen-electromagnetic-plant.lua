require("__5dim_core__.lib.automation.generation-electromagnetic-plant")

local energy = 2000
local energyIncrementValue = 800

local crafting = 2
local craftingIncrementValue = 2

local modules = 5

local techCount = 750

local increment = 1

-- Electric furnace 01
genElectromagneticPlants {
    number = "01",
    subgroup = "fulgora-electromagnetic",
    craftingSpeed = crafting,
    energyUsage = energy,
    moduleSlots = modules,
    new = false,
    order = "a",
    ingredients = {
        { type = "item", name = "steel-plate",         amount = 50 },
        { type = "item", name = "processing-unit",     amount = 50 },
        { type = "item", name = "refined-concrete",    amount = 100 },
        { type = "item", name = "holmium-plate",       amount = 150 }
    },
    nextUpdate = "5d-electromagnetic-plant-02",
    tech = nil,
    copy = {
        name = "electromagnetic-plant",
        postName = "-1"
    }
}
-- Electric furnace 02
genElectromagneticPlants {
    number = "02",
    subgroup = "fulgora-electromagnetic",
    craftingSpeed = crafting + (craftingIncrementValue * increment),
    energyUsage = energy + (energyIncrementValue * increment),
    moduleSlots = modules,
    new = true,
    order = "b",
    ingredients = {
        { type = "item", name = "electromagnetic-plant",         amount = 1 },
        { type = "item", name = "processing-unit",              amount = 50 },
        { type = "item", name = "refined-concrete",            amount = 100 },
        { type = "item", name = "superconductor",            amount = 20 },
    },
    nextUpdate = "5d-electromagnetic-plant-03",
    tech = {
        number = 2,
        count = techCount,
        packs = {
            { "automation-science-pack",     1 },
            { "logistic-science-pack",       1 },
            { "chemical-science-pack",       1 },
            { "production-science-pack",     1 },
            { "utility-science-pack",        1 },
            { "space-science-pack",          1 },
            { "electromagnetic-science-pack", 1}
        },
        prerequisites = {
            "electromagnetic-plant"
        }
    },
    copy = nil
}

increment = increment + 1

-- Electric furnace 03
genElectromagneticPlants {
    number = "03",
    subgroup = "fulgora-electromagnetic",
    craftingSpeed = crafting + (craftingIncrementValue * increment),
    energyUsage = energy + (energyIncrementValue * increment),
    moduleSlots = modules,
    new = true,
    order = "c",
    ingredients = {
        { type = "item", name = "5d-electromagnetic-plant-02",         amount = 1 },
        { type = "item", name = "processing-unit",              amount = 50 },
        { type = "item", name = "refined-concrete",            amount = 100 },
        { type = "item", name = "supercapacitor",            amount = 5 },
    },
    nextUpdate = "5d-electromagnetic-plant-04",
    tech = {
        number = 3,
        count = techCount * 2,
        packs = {
            { "automation-science-pack",     1 },
            { "logistic-science-pack",       1 },
            { "chemical-science-pack",       1 },
            { "production-science-pack",     1 },
            { "utility-science-pack",        1 },
            { "space-science-pack",          1 },
            { "electromagnetic-science-pack", 1}
        },
        prerequisites = {
            "5d-electromagnetic-plant-2"
        }
    },
    copy = nil
}

increment = increment + 1

-- Electric furnace 04
genElectromagneticPlants {
    number = "04",
    subgroup = "fulgora-electromagnetic",
    craftingSpeed = crafting + (craftingIncrementValue * increment),
    energyUsage = energy + (energyIncrementValue * increment),
    moduleSlots = modules,
    new = true,
    order = "d",
    ingredients = {
        { type = "item", name = "5d-electromagnetic-plant-03",         amount = 1 },
        { type = "item", name = "processing-unit",              amount = 50 },
        { type = "item", name = "refined-concrete",            amount = 100 },
        { type = "item", name = "superconductor",            amount = 20 },
        { type = "item", name = "supercapacitor",            amount = 5 },
        
    },
    nextUpdate = "5d-electromagnetic-plant-05",
    tech = {
        number = 4,
        count = techCount * 3,
        packs = {
            { "automation-science-pack",     1 },
            { "logistic-science-pack",       1 },
            { "chemical-science-pack",       1 },
            { "production-science-pack",     1 },
            { "utility-science-pack",        1 },
            { "space-science-pack",          1 },
            { "electromagnetic-science-pack", 1}
        },
        prerequisites = {
            "5d-electromagnetic-plant-3"
        }
    },
    copy = nil
}

increment = increment + 1

-- Electric furnace 05
genElectromagneticPlants {
    number = "05",
    subgroup = "fulgora-electromagnetic",
    craftingSpeed = crafting + (craftingIncrementValue * increment),
    energyUsage = energy + (energyIncrementValue * increment),
    moduleSlots = modules + 1,
    new = true,
    order = "e",
    ingredients = {
        { type = "item", name = "5d-electromagnetic-plant-04",         amount = 1 },
        { type = "item", name = "processing-unit",              amount = 50 },
        { type = "item", name = "refined-concrete",            amount = 100 },
        { type = "item", name = "superconductor",            amount = 20 },
        { type = "item", name = "supercapacitor",            amount = 5 },
        { type = "item", name = "speed-module",            amount = 15 },
    },
    nextUpdate = "5d-electromagnetic-plant-06",
    tech = {
        number = 5,
        count = techCount * 4,
        packs = {
            { "automation-science-pack",     1 },
            { "logistic-science-pack",       1 },
            { "chemical-science-pack",       1 },
            { "production-science-pack",     1 },
            { "utility-science-pack",        1 },
            { "space-science-pack",          1 },
            { "electromagnetic-science-pack", 1}
        },
        prerequisites = {
            "5d-electromagnetic-plant-4"
        }
    },
    copy = nil
}

increment = increment + 1

-- Electric furnace 06
genElectromagneticPlants {
    number = "06",
    subgroup = "fulgora-electromagnetic",
    craftingSpeed = crafting + (craftingIncrementValue * increment),
    energyUsage = energy + (energyIncrementValue * increment),
    moduleSlots = modules + 1,
    new = true,
    order = "f",
    ingredients = {
        { type = "item", name = "5d-electromagnetic-plant-05",         amount = 1 },
        { type = "item", name = "processing-unit",              amount = 50 },
        { type = "item", name = "refined-concrete",            amount = 100 },
        { type = "item", name = "superconductor",            amount = 20 },
        { type = "item", name = "supercapacitor",            amount = 5 },
        { type = "item", name = "productivity-module",            amount = 15 },
    },
    nextUpdate = "5d-electromagnetic-plant-07",
    tech = {
        number = 6,
        count = techCount * 5,
        packs = {
            { "automation-science-pack",     1 },
            { "logistic-science-pack",       1 },
            { "chemical-science-pack",       1 },
            { "production-science-pack",     1 },
            { "utility-science-pack",        1 },
            { "space-science-pack",          1 },
            { "electromagnetic-science-pack", 1}
        },
        prerequisites = {
            "5d-electromagnetic-plant-5"
        }
    },
    copy = nil
}

increment = increment + 1

-- Electric furnace 07
genElectromagneticPlants {
    number = "07",
    subgroup = "fulgora-electromagnetic",
    craftingSpeed = crafting + (craftingIncrementValue * increment),
    energyUsage = energy + (energyIncrementValue * increment),
    moduleSlots = modules + 2,
    new = true,
    order = "g",
    ingredients = {
        { type = "item", name = "5d-electromagnetic-plant-06",         amount = 1 },
        { type = "item", name = "processing-unit",              amount = 50 },
        { type = "item", name = "refined-concrete",            amount = 100 },
        { type = "item", name = "superconductor",            amount = 20 },
        { type = "item", name = "supercapacitor",            amount = 5 },
        { type = "item", name = "speed-module-2",       amount = 15 },
    },
    nextUpdate = "5d-electromagnetic-plant-08",
    tech = {
        number = 7,
        count = techCount * 6,
        packs = {
            { "automation-science-pack",     1 },
            { "logistic-science-pack",       1 },
            { "chemical-science-pack",       1 },
            { "production-science-pack",     1 },
            { "utility-science-pack",        1 },
            { "space-science-pack",          1 },
            { "electromagnetic-science-pack", 1}
        },
        prerequisites = {
            "5d-electromagnetic-plant-6"
        }
    },
    copy = nil
}

increment = increment + 1

-- Electric furnace 08
genElectromagneticPlants {
    number = "08",
    subgroup = "fulgora-electromagnetic",
    craftingSpeed = crafting + (craftingIncrementValue * increment),
    energyUsage = energy + (energyIncrementValue * increment),
    moduleSlots = modules + 2,
    new = true,
    order = "h",
    ingredients = {
        { type = "item", name = "5d-electromagnetic-plant-07",         amount = 1 },
        { type = "item", name = "processing-unit",              amount = 50 },
        { type = "item", name = "refined-concrete",            amount = 100 },
        { type = "item", name = "superconductor",            amount = 20 },
        { type = "item", name = "supercapacitor",            amount = 5 },
        { type = "item", name = "productivity-module-2",  amount = 5 },
    },
    nextUpdate = "5d-electromagnetic-plant-09",
    tech = {
        number = 8,
        count = techCount * 7,
        packs = {
            { "automation-science-pack",     1 },
            { "logistic-science-pack",       1 },
            { "chemical-science-pack",       1 },
            { "production-science-pack",     1 },
            { "utility-science-pack",        1 },
            { "space-science-pack",          1 },
            { "electromagnetic-science-pack", 1}
        },
        prerequisites = {
            "5d-electromagnetic-plant-7"
        }
    },
    copy = nil
}

increment = increment + 1

-- Electric furnace 09
genElectromagneticPlants {
    number = "09",
    subgroup = "fulgora-electromagnetic",
    craftingSpeed = crafting + (craftingIncrementValue * increment),
    energyUsage = energy + (energyIncrementValue * increment),
    moduleSlots = modules + 3,
    new = true,
    order = "i",
    ingredients = {
        { type = "item", name = "5d-electromagnetic-plant-08",         amount = 1 },
        { type = "item", name = "processing-unit",              amount = 50 },
        { type = "item", name = "refined-concrete",            amount = 100 },
        { type = "item", name = "superconductor",            amount = 20 },
        { type = "item", name = "supercapacitor",            amount = 5 },
        { type = "item", name = "speed-module-3",       amount = 5 },
    },
    nextUpdate = "5d-electromagnetic-plant-10",
    tech = {
        number = 9,
        count = techCount * 8,
        packs = {
            { "automation-science-pack",     1 },
            { "logistic-science-pack",       1 },
            { "chemical-science-pack",       1 },
            { "production-science-pack",     1 },
            { "utility-science-pack",        1 },
            { "space-science-pack",          1 },
            { "electromagnetic-science-pack", 1}
        },
        prerequisites = {
            "5d-electromagnetic-plant-8"
        }
    },
    copy = nil
}

increment = increment + 1

-- Electric furnace 10
genElectromagneticPlants {
    number = "10",
    subgroup = "fulgora-electromagnetic",
    craftingSpeed = crafting + (craftingIncrementValue * increment),
    energyUsage = energy + (energyIncrementValue * increment),
    moduleSlots = modules + 3,
    new = true,
    order = "j",
    ingredients = {
        { type = "item", name = "5d-electromagnetic-plant-09",         amount = 1 },
        { type = "item", name = "processing-unit",              amount = 50 },
        { type = "item", name = "refined-concrete",            amount = 100 },
        { type = "item", name = "superconductor",            amount = 20 },
        { type = "item", name = "supercapacitor",            amount = 5 },
        { type = "item", name = "productivity-module-3", amount = 5 },
    },
    tech = {
        number = 10,
        count = techCount * 9,
        packs = {
            { "automation-science-pack",     1 },
            { "logistic-science-pack",       1 },
            { "chemical-science-pack",       1 },
            { "production-science-pack",     1 },
            { "utility-science-pack",        1 },
            { "space-science-pack",          1 },
            { "electromagnetic-science-pack", 1}
        },
        prerequisites = {
            "5d-electromagnetic-plant-9"
        }
    },
    copy = nil
}
