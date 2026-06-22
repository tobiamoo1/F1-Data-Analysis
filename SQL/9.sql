SELECT
    r.raceid,
    r.year,
    r.name AS race_name,
    c.name AS circuit_name,
    c.location,
    c.country
FROM races r
JOIN circuits c
    ON r.circuitid = c.circuitid
WHERE c.country IN ('UK', 'United Kingdom')
ORDER BY r.year;