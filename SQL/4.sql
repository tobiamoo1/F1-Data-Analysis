SELECT 
    d.driverId,
    CONCAT(d.forename, ' ', d.surname) AS driver_name,
    SUM(r.points) AS total_points
FROM f1.results r
JOIN f1.drivers d 
    ON r.driverId = d.driverId
GROUP BY d.driverId, driver_name
HAVING SUM(r.points) > 200
ORDER BY total_points DESC;