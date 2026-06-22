SELECT
    d.driverid,
    CONCAT(d.forename, ' ', d.surname) AS driver_name,
    SUM(r.points) AS total_points,
    COUNT(r.raceid) AS total_races,
    ROUND(SUM(r.points) / COUNT(r.raceid), 2) AS avg_points_per_race
FROM drivers d
JOIN results r
    ON d.driverid = r.driverid
GROUP BY d.driverid, d.forename, d.surname
HAVING COUNT(r.raceid) >= 50
ORDER BY avg_points_per_race DESC;