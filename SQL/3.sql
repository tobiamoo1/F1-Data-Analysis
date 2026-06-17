SELECT 
    year,
    COUNT(*) AS total_races
FROM f1.races
GROUP BY year
HAVING COUNT(*) > 20
ORDER BY total_races DESC, year;