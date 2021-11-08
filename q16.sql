--Compared startdate to nested select and displayed the match
SELECT PROJNAME, PROJNO, STARTDATE
FROM PROJECT 
WHERE STARTDATE IN
  (SELECT STARTDATE 
  FROM PROJECT 
  GROUP BY STARTDATE 
  HAVING COUNT(*) > 1);
