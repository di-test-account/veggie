-- VEGGIE table schema definition
-- Based on existing table in GITHUB.RAW.VEGGIE

CREATE OR REPLACE TABLE GITHUB.RAW.VEGGIE (
    PLANT_NAME VARCHAR(100),
    UOM VARCHAR(10),
    LOW_END_OF_RANGE NUMBER,
    HIGH_END_OF_RANGE NUMBER
    -- Add other column definitions based on your actual schema
);
