SELECT 
    c.name AS constructor_name,
    COUNT(*) AS total_wins
FROM f1.results r
JOIN f1.constructors c 
    ON r.constructorId = c.constructorId
WHERE r.position = 1
GROUP BY c.constructorId, c.name
HAVING COUNT(*) > 100
ORDER BY total_wins DESC;
