require("__5dim_core__.lib.equipment.generation-fusion-reactor-equipment")

local powerProduction = 750
local techCount = 200

-- Beacon 01
genFusionReactors {
    number = "01",
    subgroup = "armor-reactor",
    power = powerProduction,
    new = false,
    order = "a",
    ingredients = {
        { type = "item", name = "processing-unit",       amount = 200 },
        { type = "item", name = "low-density-structure", amount = 50 }
    },
    tech = nil
}

powerProduction = powerProduction * 1.75

-- Beacon 02
genFusionReactors {
    number = "02",
    subgroup = "armor-reactor",
    power = powerProduction,
    new = true,
    order = "b",
    ingredients = {
        { type = "item", name = "fusion-reactor-equipment", amount = 1 },
        { type = "item", name = "processing-unit",          amount = 200 },
        { type = "item", name = "low-density-structure",    amount = 50 }
    },
    tech = {
        number = 2,
        count = techCount * 2,
        packs = {
            { "automation-science-pack", 1 },
            { "logistic-science-pack",   1 },
            { "chemical-science-pack",   1 },
            { "military-science-pack",   1 },
            { "utility-science-pack",    1 }
        },
        prerequisites = {
            "fusion-reactor-equipment"
        }
    }
}

powerProduction = powerProduction * 1.75

-- Beacon 03
genFusionReactors {
    number = "03",
    subgroup = "armor-reactor",
    power = powerProduction,
    new = true,
    order = "c",
    ingredients = {
        { type = "item", name = "5d-fusion-reactor-equipment-02", amount = 1 },
        { type = "item", name = "processing-unit",                amount = 200 },
        { type = "item", name = "low-density-structure",          amount = 50 }
    },
    tech = {
        number = 3,
        count = techCount * 3,
        packs = {
            { "automation-science-pack", 1 },
            { "logistic-science-pack",   1 },
            { "chemical-science-pack",   1 },
            { "military-science-pack",   1 },
            { "utility-science-pack",    1 }
        },
        prerequisites = {
            "fusion-reactor-equipment-2"
        }
    }
}

powerProduction = powerProduction * 1.75

-- Beacon 04
genFusionReactors {
    number = "04",
    subgroup = "armor-reactor",
    power = powerProduction,
    new = true,
    order = "d",
    ingredients = {
        { type = "item", name = "5d-fusion-reactor-equipment-03", amount = 1 },
        { type = "item", name = "processing-unit",                amount = 200 },
        { type = "item", name = "low-density-structure",          amount = 50 }
    },
    tech = {
        number = 4,
        count = techCount * 4,
        packs = {
            { "automation-science-pack", 1 },
            { "logistic-science-pack",   1 },
            { "chemical-science-pack",   1 },
            { "military-science-pack",   1 },
            { "utility-science-pack",    1 }
        },
        prerequisites = {
            "fusion-reactor-equipment-3"
        }
    }
}

powerProduction = powerProduction * 1.75

-- Beacon 05
genFusionReactors {
    number = "05",
    subgroup = "armor-reactor",
    power = powerProduction,
    new = true,
    order = "e",
    ingredients = {
        { type = "item", name = "5d-fusion-reactor-equipment-04", amount = 1 },
        { type = "item", name = "processing-unit",                amount = 200 },
        { type = "item", name = "low-density-structure",          amount = 50 }
    },
    tech = {
        number = 5,
        count = techCount * 5,
        packs = {
            { "automation-science-pack", 1 },
            { "logistic-science-pack",   1 },
            { "chemical-science-pack",   1 },
            { "military-science-pack",   1 },
            { "utility-science-pack",    1 }
        },
        prerequisites = {
            "fusion-reactor-equipment-4"
        }
    }
}

powerProduction = powerProduction * 1.75

-- Beacon 06
genFusionReactors {
    number = "06",
    subgroup = "armor-reactor",
    power = powerProduction,
    new = true,
    order = "f",
    ingredients = {
        { type = "item", name = "5d-fusion-reactor-equipment-05", amount = 1 },
        { type = "item", name = "processing-unit",                amount = 200 },
        { type = "item", name = "low-density-structure",          amount = 50 }
    },
    tech = {
        number = 6,
        count = techCount * 6,
        packs = {
            { "automation-science-pack", 1 },
            { "logistic-science-pack",   1 },
            { "chemical-science-pack",   1 },
            { "military-science-pack",   1 },
            { "utility-science-pack",    1 },
            { "space-science-pack",      1 }
        },
        prerequisites = {
            "fusion-reactor-equipment-5"
        }
    }
}

powerProduction = powerProduction * 1.75

-- Beacon 07
genFusionReactors {
    number = "07",
    subgroup = "armor-reactor",
    power = powerProduction,
    new = true,
    order = "g",
    ingredients = {
        { type = "item", name = "5d-fusion-reactor-equipment-06", amount = 1 },
        { type = "item", name = "processing-unit",                amount = 200 },
        { type = "item", name = "low-density-structure",          amount = 50 }
    },
    tech = {
        number = 7,
        count = techCount * 7,
        packs = {
            { "automation-science-pack", 1 },
            { "logistic-science-pack",   1 },
            { "chemical-science-pack",   1 },
            { "military-science-pack",   1 },
            { "utility-science-pack",    1 },
            { "space-science-pack",      1 }
        },
        prerequisites = {
            "fusion-reactor-equipment-6"
        }
    }
}

powerProduction = powerProduction * 1.75

-- Beacon 08
genFusionReactors {
    number = "08",
    subgroup = "armor-reactor",
    power = powerProduction,
    new = true,
    order = "h",
    ingredients = {
        { type = "item", name = "5d-fusion-reactor-equipment-07", amount = 1 },
        { type = "item", name = "processing-unit",                amount = 200 },
        { type = "item", name = "low-density-structure",          amount = 50 }
    },
    tech = {
        number = 8,
        count = techCount * 8,
        packs = {
            { "automation-science-pack", 1 },
            { "logistic-science-pack",   1 },
            { "chemical-science-pack",   1 },
            { "military-science-pack",   1 },
            { "utility-science-pack",    1 },
            { "space-science-pack",      1 }
        },
        prerequisites = {
            "fusion-reactor-equipment-7"
        }
    }
}

powerProduction = powerProduction * 1.75

-- Beacon 09
genFusionReactors {
    number = "09",
    subgroup = "armor-reactor",
    power = powerProduction,
    new = true,
    order = "i",
    ingredients = {
        { type = "item", name = "5d-fusion-reactor-equipment-08", amount = 1 },
        { type = "item", name = "processing-unit",                amount = 200 },
        { type = "item", name = "low-density-structure",          amount = 50 }
    },
    tech = {
        number = 9,
        count = techCount * 9,
        packs = {
            { "automation-science-pack", 1 },
            { "logistic-science-pack",   1 },
            { "chemical-science-pack",   1 },
            { "military-science-pack",   1 },
            { "utility-science-pack",    1 },
            { "space-science-pack",      1 }
        },
        prerequisites = {
            "fusion-reactor-equipment-8"
        }
    }
}

powerProduction = powerProduction * 1.75

-- Beacon 10
genFusionReactors {
    number = "10",
    subgroup = "armor-reactor",
    power = powerProduction,
    new = true,
    order = "j",
    ingredients = {
        { type = "item", name = "5d-fusion-reactor-equipment-09", amount = 1 },
        { type = "item", name = "processing-unit",                amount = 200 },
        { type = "item", name = "low-density-structure",          amount = 50 }
    },
    tech = {
        number = 10,
        count = techCount * 10,
        packs = {
            { "automation-science-pack", 1 },
            { "logistic-science-pack",   1 },
            { "chemical-science-pack",   1 },
            { "military-science-pack",   1 },
            { "utility-science-pack",    1 },
            { "space-science-pack",      1 }
        },
        prerequisites = {
            "fusion-reactor-equipment-9"
        }
    }
}
