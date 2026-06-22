SELECT
    s.statusid,
    s.status,
    COUNT(*) AS frequency
FROM results r
JOIN status s
    ON r.statusid = s.statusid
GROUP BY s.statusid, s.status
ORDER BY frequency DESC
LIMIT 5;