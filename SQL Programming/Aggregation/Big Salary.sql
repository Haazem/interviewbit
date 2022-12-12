SELECT COUNT(*) as A 
FROM WORKERS
WHERE  DailyWage * DaysWorked >= (SELECT MAX(DailyWage * DaysWorked) FROM WORKERS);

