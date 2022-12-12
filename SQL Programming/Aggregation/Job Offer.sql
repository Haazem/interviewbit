SELECT CONCAT(s.Name,',',j.Date) AS Offers
FROM Students s 
JOIN Departments d 
ON s.DepartmentId = d.DepartmentId
JOIN Jobs j 
ON j.Id = s.Id
ORDER BY d.DepartmentName;
