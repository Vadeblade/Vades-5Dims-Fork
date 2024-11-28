require("__5dim_core__.lib.resources.generation-recycler")

local crafting = .5
local craftingIncrement = .5

local modules = 4

local energy = 180
local energyIncrement = 60

local techCount = 500

local increment = 1

-- Electric furnace 01
genRecycler {
    number = "01",
    subgroup = "fulgora-recycler",
    craftingSpeed = crafting,
    moduleSlots = modules,
    energyUsage = energy,
    new = false,
    order = "a",
    ingredients = {
        { type = "item", name = "steel-plate",      amount = 20 },
        { type = "item", name = "iron-gear-wheel",  amount = 40 },
        { type = "item", name = "processing-unit",  amount = 6 },
        { type = "item", name = "concrete",         amount = 20 }
        
    },
    nextUpdate = "5d-recycler-02",
    tech = nil
}

-- Electric furnace 02
genRecycler {
    number = "02",
    subgroup = "fulgora-recycler",
    craftingSpeed = crafting + (craftingIncrement * increment),
    moduleSlots = modules,
    energyUsage = energy + (energyIncrement * increment),
    new = true,
    order = "b",
    ingredients = {
        { type = "item", name = "recycler", amount = 1 },
        { type = "item", name = "steel-plate",      amount = 20 },
        { type = "item", name = "iron-gear-wheel",  amount = 40 },
        { type = "item", name = "processing-unit",  amount = 6 },
        { type = "item", name = "concrete",         amount = 20 }
    },
    nextUpdate = "5d-recycler-03",
    tech = {
        number = 2,
        count = techCount * 1,
        packs = {
            { "automation-science-pack",     1 },
            { "logistic-science-pack",       1 },
            { "chemical-science-pack",       1 },
            { "production-science-pack",     1 },
            { "utility-science-pack",        1 },
            { "space-science-pack",          1 },
            { "electromagnetic-science-pack",1 }
        },
        prerequisites = {
            "recycling"
        }
    }
}

increment = increment + 1

-- Electric furnace 03
genRecycler {
    number = "03",
    subgroup = "fulgora-recycler",
    craftingSpeed = crafting + (craftingIncrement * increment),
    moduleSlots = modules + 1,
    energyUsage = energy + (energyIncrement * increment),
    new = true,
    order = "c",
    ingredients = {
        { type = "item", name = "5d-recycler-02", amount = 1 },
        { type = "item", name = "steel-plate",      amount = 20 },
        { type = "item", name = "iron-gear-wheel",  amount = 40 },
        { type = "item", name = "processing-unit",  amount = 6 },
        { type = "item", name = "concrete",         amount = 20 }
    },
    nextUpdate = "5d-recycler-04",
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
            { "electromagnetic-science-pack",1 }
        },
        prerequisites = {
            "5d-recycling-2",
        }
    }
}

increment = increment + 1

-- Electric furnace 04
genRecycler {
    number = "04",
    subgroup = "fulgora-recycler",
    craftingSpeed = crafting + (craftingIncrement * increment),
    moduleSlots = modules + 1,
    energyUsage = energy + (energyIncrement * increment),
    new = true,
    order = "d",
    ingredients = {
        { type = "item", name = "5d-recycler-03", amount = 1 },
        { type = "item", name = "steel-plate",      amount = 20 },
        { type = "item", name = "iron-gear-wheel",  amount = 40 },
        { type = "item", name = "processing-unit",  amount = 6 },
        { type = "item", name = "concrete",         amount = 20 }
    },
    nextUpdate = "5d-recycler-05",
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
            { "electromagnetic-science-pack",1 }
        },
        prerequisites = {
            "5d-recycling-3"
        }
    }
}

increment = increment + 1

-- Electric furnace 05
genRecycler {
    number = "05",
    subgroup = "fulgora-recycler",
    craftingSpeed = crafting + (craftingIncrement * increment),
    moduleSlots = modules + 2,
    energyUsage = energy + (energyIncrement * increment),
    new = true,
    order = "e",
    ingredients = {
        { type = "item", name = "5d-recycler-04", amount = 1 },
        { type = "item", name = "steel-plate",      amount = 20 },
        { type = "item", name = "iron-gear-wheel",  amount = 40 },
        { type = "item", name = "processing-unit",  amount = 6 },
        { type = "item", name = "concrete",         amount = 20 },
        { type = "item", name = "speed-module",     amount = 1 }
    },
    nextUpdate = "5d-recycler-06",
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
            { "electromagnetic-science-pack",1 }
        },
        prerequisites = {
            "5d-recycling-4"
        }
    }
}

increment = increment + 1

-- Electric furnace 06
genRecycler {
    number = "06",
    subgroup = "fulgora-recycler",
    craftingSpeed = crafting + (craftingIncrement * increment),
    moduleSlots = modules + 2,
    energyUsage = energy + (energyIncrement * increment),
    new = true,
    order = "f",
    ingredients = {
        { type = "item", name = "5d-recycler-05", amount = 1 },
        { type = "item", name = "steel-plate",      amount = 20 },
        { type = "item", name = "iron-gear-wheel",  amount = 40 },
        { type = "item", name = "processing-unit",  amount = 6 },
        { type = "item", name = "concrete",         amount = 20 },
        { type = "item", name = "productivity-module",    amount = 1 }
    },
    nextUpdate = "5d-recycler-07",
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
            { "electromagnetic-science-pack",1 }
        },
        prerequisites = {
            "5d-recycling-5"
        }
    }
}

increment = increment + 1

-- Electric furnace 07
genRecycler {
    number = "07",
    subgroup = "fulgora-recycler",
    craftingSpeed = crafting + (craftingIncrement * increment),
    moduleSlots = modules + 3,
    energyUsage = energy + (energyIncrement * increment),
    new = true,
    order = "g",
    ingredients = {
        { type = "item", name = "5d-recycler-06", amount = 1 },
        { type = "item", name = "steel-plate",      amount = 20 },
        { type = "item", name = "iron-gear-wheel",  amount = 40 },
        { type = "item", name = "processing-unit",  amount = 6 },
        { type = "item", name = "concrete",         amount = 20 },
        { type = "item", name = "speed-module-2",         amount = 1 }
    },
    nextUpdate = "5d-recycler-08",
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
            { "electromagnetic-science-pack",1 }
        },
        prerequisites = {
            "5d-recycling-6"
        }
    }
}

increment = increment + 1

-- Electric furnace 08
genRecycler {
    number = "08",
    subgroup = "fulgora-recycler",
    craftingSpeed = crafting + (craftingIncrement * increment),
    moduleSlots = modules + 2,
    energyUsage = energy + (energyIncrement * increment),
    new = true,
    order = "h",
    ingredients = {
        { type = "item", name = "5d-recycler-07", amount = 1 },
        { type = "item", name = "steel-plate",      amount = 20 },
        { type = "item", name = "iron-gear-wheel",  amount = 40 },
        { type = "item", name = "processing-unit",  amount = 6 },
        { type = "item", name = "concrete",         amount = 20 },
        { type = "item", name = "productivity-module-2",  amount = 1 }
    },
    nextUpdate = "5d-recycler-09",
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
            { "electromagnetic-science-pack",1 }
        },
        prerequisites = {
            "5d-recycling-7",
        }
    }
}

increment = increment + 1

-- Electric furnace 09
genRecycler {
    number = "09",
    subgroup = "fulgora-recycler",
    craftingSpeed = crafting + (craftingIncrement * increment),
    moduleSlots = modules + 3,
    energyUsage = energy + (energyIncrement * increment),
    new = true,
    order = "i",
    ingredients = {
        { type = "item", name = "5d-recycler-08", amount = 1 },
        { type = "item", name = "processing-unit",  amount = 6 },
        { type = "item", name = "steel-plate",            amount = 5 },
        { type = "item", name = "low-density-structure",  amount = 1 },
        { type = "item", name = "refined-concrete",       amount = 5 },
        { type = "item", name = "speed-module-3",         amount = 1 }
    },
    nextUpdate = "5d-recycler-10",
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
            { "electromagnetic-science-pack",1 }
        },
        prerequisites = {
            "5d-recycling-8"
        }
    }
}

increment = increment + 1

-- Electric furnace 10
genRecycler {
    number = "10",
    subgroup = "fulgora-recycler",
    craftingSpeed = crafting + (craftingIncrement * increment),
    moduleSlots = modules + 3,
    energyUsage = energy + (energyIncrement * increment),
    new = true,
    order = "j",
    ingredients = {
        { type = "item", name = "5d-recycler-09", amount = 1 },
        { type = "item", name = "processing-unit",  amount = 6 },
        { type = "item", name = "steel-plate",            amount = 5 },
        { type = "item", name = "low-density-structure",  amount = 3 },
        { type = "item", name = "refined-concrete",       amount = 5 },
        { type = "item", name = "productivity-module-3",  amount = 1 }
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
            { "electromagnetic-science-pack",1 }
        },
        prerequisites = {
            "5d-recycling-9"
        }
    }
}