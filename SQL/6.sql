SELECT
    d.driverId,
    CONCAT(d.forename, ' ', d.surname) AS driver_name,
    SUM(r.points) AS career_points,
    RANK() OVER (ORDER BY SUM(r.points) DESC) AS driver_rank,
    CASE
        WHEN SUM(r.points) >= 1000 THEN 'High'
        WHEN SUM(r.points) >= 300 THEN 'Medium'
        ELSE 'Low'
    END AS performance_tier
FROM drivers d
JOIN results r
    ON d.driverId = r.driverId
GROUP BY d.driverId, d.forename, d.surname
ORDER BY career_points DESC;