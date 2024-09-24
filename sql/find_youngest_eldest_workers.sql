SELECT 'YOUNGEST' AS TYPE, name AS NAME, birthday AS BIRTHDAY
FROM megasoft.worker
WHERE birthday = (
    SELECT MAX(birthday)
    FROM megasoft.worker
)
UNION ALL
SELECT 'OLDEST' AS TYPE, name AS NAME, birthday AS BIRTHDAY
FROM megasoft.worker
WHERE birthday = (
    SELECT MIN(birthday)
    FROM megasoft.worker
);
