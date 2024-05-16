AAILoaders.make_tier {
  name = "",
  transport_belt = "transport-belt",
  color = { 255, 217, 85 },
  fluid = "lubricant",
  fluid_per_minute = "0.1",
  fluid_technology_prerequisites = { "oil-processing" },
  technology = {
    prerequisites = { "logistics", "logistic-science-pack" },
    unit = {
      count = 30,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack",   1 }
      },
      time = 15
    }
  },
  recipe = {
    ingredients = {
      { "transport-belt",     1 },
      { "iron-gear-wheel",    10 },
      { "electronic-circuit", 5 }
    },
    energy_required = 2
  },
  unlubricated_recipe = {
    ingredients = {
      { "transport-belt",     1 },
      { "iron-gear-wheel",    100 },
      { "electronic-circuit", 50 }
    },
    energy_required = 10
  },
  upgrade = "aai-fast-loader",
  localise = false
}

AAILoaders.make_tier {
  name = "fast",
  transport_belt = "fast-transport-belt",
  color = { 255, 24, 38 },
  fluid = "lubricant",
  fluid_per_minute = "0.15",
  fluid_technology_prerequisites = { "lubricant" },
  technology = {
    prerequisites = { "logistics-2", "aai-loader", "advanced-electronics", "chemical-science-pack" },
    unit = {
      count = 250,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack",   1 },
        { "chemical-science-pack",   1 }
      },
      time = 30
    }
  },
  recipe = {
    ingredients = {
      { "fast-transport-belt", 1 },
      { "engine-unit",         5 },
      { "advanced-circuit",    5 }
    },
    energy_required = 2
  },
  unlubricated_recipe = {
    ingredients = {
      { "fast-transport-belt", 1 },
      { "engine-unit",         50 },
      { "advanced-circuit",    50 }
    },
    energy_required = 10
  },
  upgrade = "aai-express-loader"
}

AAILoaders.make_tier {
  name = "express",
  transport_belt = "express-transport-belt",
  color = { 90, 190, 255 },
  fluid = "lubricant",
  fluid_per_minute = "0.2",
  technology = {
    prerequisites = { "logistics-3", "aai-fast-loader", "advanced-electronics-2" },
    unit = {
      count = 350,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack",   1 },
        { "chemical-science-pack",   1 },
        { "production-science-pack", 1 }
      },
      time = 15
    }
  },
  recipe = {
    crafting_category = "crafting-with-fluid",
    ingredients = {
      { "express-transport-belt", 1 },
      { "electric-engine-unit",   5 },
      { "processing-unit",        5 },
      { type = "fluid",           name = "lubricant", amount = 50 }
    },
    energy_required = 2
  },
  unlubricated_recipe = {
    crafting_category = "crafting-with-fluid",
    ingredients = {
      { "express-transport-belt", 1 },
      { "electric-engine-unit",   50 },
      { "processing-unit",        50 },
      { type = "fluid",           name = "lubricant", amount = 500 }
    },
    energy_required = 10
  }
}
