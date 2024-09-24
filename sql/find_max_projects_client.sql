SELECT c.name AS NAME, COUNT(p.id) AS PROJECT_COUNT
FROM megasoft.client c
JOIN megasoft.project p ON c.id = p.client_id
GROUP BY c.name
HAVING COUNT(p.id) = (
    SELECT MAX(PROJECT_COUNT)
    FROM (
        SELECT COUNT(*) AS PROJECT_COUNT
        FROM megasoft.project
        GROUP BY CLIENT_ID
    ) AS PROJECT_COUNTS
);
