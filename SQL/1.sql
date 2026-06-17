SELECT 
    CONCAT(decade, 's') AS decade,
    COUNT(*) AS number_of_races
FROM (
    SELECT FLOOR(year / 10) * 10 AS decade
    FROM f1.races
) AS d
GROUP BY decade
ORDER BY decade;