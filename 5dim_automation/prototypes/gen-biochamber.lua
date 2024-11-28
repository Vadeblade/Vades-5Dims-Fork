require("__5dim_core__.lib.automation.generation-Biochamber")

local energy = 500
local energyIncrementValue = 50

local crafting = 2
local craftingIncrementValue = 2

local techCount = 750

local increment = 1;

-- Electric furnace 01
genBiochambers {
    number = "01",
    subgroup = "gleba-biochamber",
    craftingSpeed = crafting,
    energyUsage = energy,
    new = false,
    order = "a",
    ingredients = {
        { type = "item", name = "iron-plate",         amount = 20 },
        { type = "item", name = "electronic-circuit", amount    = 5 },
        { type = "item", name = "landfill",           amount = 1 },
        { type = "item", name = "nutrients",          amount = 5 },
        { type = "item", name = "pentapod-egg",       amount = 1 }
    },
    nextUpdate = "5d-biochamber-02",
    tech = nil,
    copy = {
        name = "Biochamber",
        postName = "-1"
    }
}

-- Electric furnace 02
genBiochambers {
    number = "02",
    subgroup = "gleba-biochamber",
    craftingSpeed = crafting + (craftingIncrementValue * increment),
    energyUsage = energy + (energyIncrementValue * increment),
    new = true,
    order = "b",
    ingredients = {
        { type = "item", name = "biochamber",         amount = 1 },
        { type = "item", name = "bioflux",              amount = 5 },
        { type = "item", name = "nutrients",            amount = 5 },
    },
    nextUpdate = "5d-biochamber-03",
    tech = {
        number = 2,
        count = techCount,
        packs = {
            { "automation-science-pack",   1 },
            { "logistic-science-pack",     1 },
            { "chemical-science-pack",     1 },
            { "production-science-pack",   1 },
            { "utility-science-pack",      1 },
            { "space-science-pack",        1 },
            { "agricultural-science-pack", 1}
        },
        prerequisites = {
            "biochamber"
        }
    },
    copy = nil
}
increment = increment + 1
-- Electric furnace 03
genBiochambers {
    number = "03",
    subgroup = "gleba-biochamber",
    craftingSpeed = crafting + (craftingIncrementValue * increment),
    energyUsage = energy + (energyIncrementValue * increment),
    new = true,
    order = "c",
    ingredients = {
        { type = "item", name = "5d-biochamber-02",         amount = 1 },
        { type = "item", name = "bioflux",              amount = 10 },
        { type = "item", name = "nutrients",            amount = 10 }
    },
    nextUpdate = "5d-biochamber-04",
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
            { "agricultural-science-pack", 1}
        },
        prerequisites = {
            "5d-biochamber-2"
        }
    },
    copy = nil
}
increment = increment + 1
-- Electric furnace 04
genBiochambers {
    number = "04",
    subgroup = "gleba-biochamber",
    craftingSpeed = crafting + (craftingIncrementValue * increment),
    energyUsage = energy + (energyIncrementValue * increment),
    new = true,
    order = "d",
    ingredients = {
        { type = "item", name = "5d-biochamber-03",         amount = 1 },
        { type = "item", name = "bioflux",              amount = 15 },
        { type = "item", name = "nutrients",            amount = 15 },
        { type = "item", name = "carbon-fiber",         amount = 3 }
        
    },
    nextUpdate = "5d-biochamber-05",
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
            { "agricultural-science-pack", 1}
        },
        prerequisites = {
            "5d-biochamber-3"
        }
    },
    copy = nil
}
increment = increment + 1
-- Electric furnace 05
genBiochambers {
    number = "05",
    subgroup = "gleba-biochamber",
    craftingSpeed = crafting + (craftingIncrementValue * increment),
    energyUsage = energy + (energyIncrementValue * increment),
    new = true,
    order = "e",
    ingredients = {
        { type = "item", name = "5d-biochamber-04",         amount = 1 },
        { type = "item", name = "carbon-fiber",         amount = 5 },
        { type = "item", name = "nutrients",            amount = 15 },
        { type = "item", name = "speed-module",       amount = 5 },
    },
    nextUpdate = "5d-biochamber-06",
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
            { "agricultural-science-pack", 1}
        },
        prerequisites = {
            "5d-biochamber-4"
        }
    },
    copy = nil
}
increment = increment + 1
-- Electric furnace 06
genBiochambers {
    number = "06",
    subgroup = "gleba-biochamber",
    craftingSpeed = crafting + (craftingIncrementValue * increment),
    energyUsage = energy + (energyIncrementValue * increment),
    new = true,
    order = "f",
    ingredients = {
        { type = "item", name = "5d-biochamber-05",         amount = 1 },
        { type = "item", name = "carbon-fiber",         amount = 5 },
        { type = "item", name = "nutrients",            amount = 15 },
        { type = "item", name = "productivity-module",  amount = 5 },
    },
    nextUpdate = "5d-biochamber-07",
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
            { "agricultural-science-pack", 1}
        },
        prerequisites = {
            "5d-biochamber-5"
        }
    },
    copy = nil
}
increment = increment + 1
-- Electric furnace 07
genBiochambers {
    number = "07",
    subgroup = "gleba-biochamber",
    craftingSpeed = crafting + (craftingIncrementValue * increment),
    energyUsage = energy + (energyIncrementValue * increment),
    new = true,
    order = "g",
    ingredients = {
        { type = "item", name = "5d-biochamber-06",         amount = 1 },
        { type = "item", name = "carbon-fiber",         amount = 10 },
        { type = "item", name = "nutrients",            amount = 15 },
        { type = "item", name = "speed-module-2",       amount = 5 },
    },
    nextUpdate = "5d-biochamber-08",
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
            { "agricultural-science-pack", 1}
        },
        prerequisites = {
            "5d-biochamber-6"
        }
    },
    copy = nil
}

increment = increment + 1

-- Electric furnace 08
genBiochambers {
    number = "08",
    subgroup = "gleba-biochamber",
    craftingSpeed = crafting + (craftingIncrementValue * increment),
    energyUsage = energy + (energyIncrementValue * increment),
    new = true,
    order = "h",
    ingredients = {
        { type = "item", name = "5d-biochamber-07",         amount = 1 },
        { type = "item", name = "carbon-fiber",         amount = 10 },
        { type = "item", name = "nutrients",            amount = 15 },
        { type = "item", name = "productivity-module-2",  amount = 5 },
    },
    nextUpdate = "5d-biochamber-09",
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
            { "agricultural-science-pack", 1}
        },
        prerequisites = {
            "5d-biochamber-7"
        }
    },
    copy = nil
}

increment = increment + 1

-- Electric furnace 09
genBiochambers {
    number = "09",
    subgroup = "gleba-biochamber",
    craftingSpeed = crafting + (craftingIncrementValue * increment),
    energyUsage = energy + (energyIncrementValue * increment),
    new = true,
    order = "i",
    ingredients = {
        { type = "item", name = "5d-biochamber-08",         amount = 1 },
        { type = "item", name = "carbon-fiber",         amount = 20 },
        { type = "item", name = "nutrients",            amount = 25 },
        { type = "item", name = "speed-module-3",       amount = 5 },
    },
    nextUpdate = "5d-biochamber-10",
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
            { "agricultural-science-pack", 1}
        },
        prerequisites = {
            "5d-biochamber-8"
        }
    },
    copy = nil
}

increment = increment + 1

-- Electric furnace 10
genBiochambers {
    number = "10",
    subgroup = "gleba-biochamber",
    craftingSpeed = crafting + (craftingIncrementValue * increment),
    energyUsage = energy + (energyIncrementValue * increment),
    new = true,
    order = "j",
    ingredients = {
        { type = "item", name = "5d-biochamber-09",         amount = 1 },
        { type = "item", name = "carbon-fiber",         amount = 20 },
        { type = "item", name = "nutrients",            amount = 25 },
        { type = "item", name = "productivity-module-3",amount = 5 },
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
            { "agricultural-science-pack", 1}
        },
        prerequisites = {
            "5d-biochamber-9"
        }
    },
    copy = nil
}
