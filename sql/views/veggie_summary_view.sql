-- Create summary views for veggie data
CREATE OR REPLACE VIEW GITHUB.RAW.VEGGIE_SUMMARY AS
SELECT 
    PLANT_NAME,
    UOM,
    (HIGH_END_OF_RANGE - LOW_END_OF_RANGE) as range_span,
    CASE 
        WHEN (HIGH_END_OF_RANGE - LOW_END_OF_RANGE) > 20 THEN 'Wide Range'
        WHEN (HIGH_END_OF_RANGE - LOW_END_OF_RANGE) > 10 THEN 'Medium Range'
        ELSE 'Narrow Range'
    END as range_category
FROM GITHUB.RAW.VEGGIE;
