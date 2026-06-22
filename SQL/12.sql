SELECT
    d.driverid,
    CONCAT(d.forename, ' ', d.surname) AS driver_name,
    ROUND(AVG(lt.milliseconds) / 1000, 2) AS avg_lap_time_seconds
FROM drivers d
JOIN lap_times lt
    ON d.driverid = lt.driverid
WHERE d.driverid IN (
    SELECT DISTINCT driverid
    FROM results
    WHERE position = 1
)
GROUP BY d.driverid, d.forename, d.surname
ORDER BY avg_lap_time_seconds;