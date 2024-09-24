SELECT p.id AS PROJECT_ID,
       SUM(w.salary * TIMESTAMPDIFF(MONTH, p.start_date, p.finish_date)) AS PRICE
FROM megasoft.project p
JOIN megasoft.project_worker pw ON p.id = pw.project_id
JOIN megasoft.worker w ON pw.worker_id = w.id
GROUP BY p.id
ORDER BY PRICE DESC;
