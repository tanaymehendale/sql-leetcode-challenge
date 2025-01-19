-- Write your MySQL query statement below
SELECT request_at AS Day,
ROUND(SUM(status IN ('cancelled_by_driver', 'cancelled_by_client'))/COUNT(*),2) AS 'Cancellation Rate'
FROM Trips
WHERE client_id NOT IN (SELECT Users_id FROM Users WHERE banned ='Yes' and role = 'client') 
AND driver_id NOT IN (SELECT Users_Id FROM Users WHERE banned ='Yes' and role = 'driver')
AND request_at between '2013-10-01' and '2013-10-03'
GROUP BY request_at;