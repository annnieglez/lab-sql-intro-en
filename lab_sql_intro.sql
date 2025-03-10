USE nyc_311_db;

SELECT complaint_type, COUNT(*) AS complaint_count
FROM nyc_311_service_requests
GROUP BY complaint_type
ORDER BY complaint_count DESC
LIMIT 5;

SELECT borough, COUNT(*) AS complaint_count
FROM nyc_311_service_requests
GROUP BY borough;

SELECT complaint_type, COUNT(*) AS complaint_count
FROM nyc_311_service_requests
GROUP BY complaint_type
HAVING COUNT(*) > 1000
ORDER BY complaint_count DESC;

SELECT borough, COUNT(*) AS complaint_count
FROM nyc_311_service_requests
WHERE complaint_type = 'Street Condition'
GROUP BY borough;



