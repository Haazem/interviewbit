SELECT Name 
FROM (
       SELECT Name,
              Marks,
              CASE 
                  WHEN Marks = 'Absent' THEN 0 ELSE 1 END as status  
       FROM Students)sub 
       
ORDER BY status DESC , Marks DESC , Name ;
