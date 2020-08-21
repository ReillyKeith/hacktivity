SELECT * FROM hacktivity.BugsHackerOne;

SELECT * FROM hacktivity.BugsHackerOne WHERE Bug_Number = '110';

SELECT COUNT(*) FROM hacktivity.BugsHackerOne;

SELECT * FROM hacktivity.BugsHackerOne WHERE Bug_ReportedTo = 'Facebook';

SELECT DISTINCT Bug_ReportedTo from hacktivity.BugsHackerOne;

SELECT DISTINCT Bug_Weakness from hacktivity.BugsHackerOne;

# Get the severity types and count
SELECT Bug_Weakness, count(*)
FROM hacktivity.BugsHackerOne
WHERE Bug_Weakness is not null
GROUP BY Bug_Weakness;

# Get amount of bugs from years (2020)
SELECT * FROM hacktivity.BugsHackerOne
WHERE Bug_Divulge LIKE '%2020%';

# Get amount of bugs from years (2020)
SELECT Bug_Title, count(Bug_Title) AS Count 
FROM hacktivity.BugsHackerOne
WHERE Bug_Divulge LIKE '%2020%'
GROUP BY Bug_Title;

# Get amount of bugs from years (2020)
SELECT Bug_Title, COUNT(1) as Count
FROM hacktivity.BugsHackerOne
GROUP BY Bug_Title
UNION ALL
SELECT 'SUM' Bug_Title, COUNT(1)
FROM hacktivity.BugsHackerOne
WHERE Bug_Divulge LIKE '%2020%';

# Get all bug types from all years
SELECT Bug_Weakness, COUNT(1) as Count
FROM hacktivity.BugsHackerOne
GROUP BY Bug_Weakness;

# Get all bug types from years (2020)
SELECT Bug_Weakness, COUNT(1) as Count
FROM hacktivity.BugsHackerOne
GROUP BY Bug_Weakness
UNION ALL
SELECT 'SUM' Bug_Weakness, COUNT(1)
FROM hacktivity.BugsHackerOne
WHERE Bug_Divulge LIKE '%2020%';


