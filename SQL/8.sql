SELECT DISTINCT
    d.driverid,
    CONCAT(d.forename, ' ', d.surname) AS driver_name
FROM drivers d
JOIN results r
    ON d.driverid = r.driverid
WHERE d.driverid NOT IN (
    SELECT DISTINCT r2.driverid
    FROM results r2
    JOIN constructors c
        ON r2.constructorid = c.constructorid
    WHERE c.name = 'Ferrari'
)
ORDER BY driver_name;