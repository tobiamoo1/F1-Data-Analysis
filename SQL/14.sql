SELECT
    r.year,
    c.constructorid,
    c.name AS constructor_name,
    SUM(res.points) AS total_season_points
FROM results res
JOIN constructors c
    ON res.constructorid = c.constructorid
JOIN races r
    ON res.raceid = r.raceid
GROUP BY r.year, c.constructorid, c.name
ORDER BY total_season_points DESC;