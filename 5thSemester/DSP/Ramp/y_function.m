% Define y(t) using the unit ramp function
function yt = y_function(t)
    yt = unit_ramp(t + 2) - unit_ramp(t + 1) - unit_ramp(t - 1) + unit_ramp(t - 2);
end
