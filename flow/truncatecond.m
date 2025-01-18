% truncate the input within a range.
function truncated = truncatecond(raw, min, max)
    truncated = raw;
    truncated(raw < min) = min;
    truncated(raw > max) = max;
end