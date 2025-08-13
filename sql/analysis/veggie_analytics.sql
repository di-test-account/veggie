-- Veggie data analysis queries
-- Range analysis by UOM
SELECT 
    UOM,
    COUNT(*) as veggie_count,
    AVG(LOW_END_OF_RANGE) as avg_low_range,
    AVG(HIGH_END_OF_RANGE) as avg_high_range,
    (AVG(HIGH_END_OF_RANGE) - AVG(LOW_END_OF_RANGE)) as avg_range_span
FROM GITHUB.RAW.VEGGIE 
GROUP BY UOM
ORDER BY veggie_count DESC;
