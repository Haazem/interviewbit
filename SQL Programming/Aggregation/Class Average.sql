

SELECT total as A  
FROM (
    SELECT ClassId,
           COUNT(*) as total
    FROM Students 
    WHERE Marks > (SELECT AVG(Marks) FROM Students)
    GROUP BY ClassId) sub

ORDER BY ClassId;
