SELECT sub.bookid as Id 
FROM(
         SELECT b1.id as bookid , COUNT(*) as times 
         FROM Books b1  
         JOIN BoughtBooks b2 
         ON b1.id =  b2.Booksid 
         GROUP BY b1.id 
         HAVING COUNT(*) >= 3 
    )sub ;


