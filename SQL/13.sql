SELECT
    c.constructorid,
    c.name AS constructor_name,
    MIN(r.year) AS first_win_year
FROM constructors c
JOIN results res
    ON c.constructorid = res.constructorid
JOIN races r
    ON res.raceid = r.raceid
WHERE res.position = 1
GROUP BY c.constructorid, c.name
ORDER BY first_win_year;