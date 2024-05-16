local old_function = AAILoaders.make_tier
AAILoaders.make_tier = function(input)
    local new_consumption = input.fluid_per_minute * 10
    log("Changing " .. input.name .. " fluid consumption from " .. input.fluid_per_minute .. " to " .. new_consumption)
    input.fluid_per_minute = new_consumption
    old_function(input)
end

require("prototypes/base")
