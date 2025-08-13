-- Veggie summary view
CREATE OR REPLACE VIEW GITHUB.RAW.VEGGIE_SUMMARY AS
SELECT 
    season,
    COUNT(*) as veggie_count,
    LISTAGG(name, ', ') as veggie_list
FROM GITHUB.RAW.VEGGIE
GROUP BY season;
