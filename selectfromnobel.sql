-- SELECT from NOBEL

--Change the query shown so that it displays Nobel prizes for 1950
  SELECT yr, subject, winner
  FROM nobel
  WHERE yr = 1950;
 
--Show who won the 1962 prize for Literature
  SELECT winner
  FROM nobel
  WHERE yr = 1962
  AND subject = 'Literature';
  
--Show the year and subject that won 'Albert Einstein' his prize
  SELECT yr, subject
  FROM nobel
  WHERE winner = 'Albert Einstein';
  
--Give the name of the 'Peace' winners since the year 2000, including 2000
  SELECT winner
  FROM nobel
  WHERE subject = 'PEACE' AND yr >= 2000;
  
--Show all details (yr, subject, winner) of the Literature prize winners for 1980 to 1989 inclusive
  SELECT yr, subject, winner
  FROM nobel
  WHERE yr BETWEEN 1980 AND 1989 AND subject = 'Literature';
  
--Show all details of the presidential winners: Theodore Roosevelt, Woodrow Wilson, Jimmy Carter
  SELECT *
  FROM nobel
  WHERE winner IN ('Theodore Roosevelt', 'Woodrow Wilson','Jimmy Carter');
  
--Show the winners with first name John
  SELECT winner
  FROM nobel
  WHERE winner LIKE 'John%';
  
--Show the Physics winners for 1980 together with the Chemistry winners for 1984
  SELECT *
  FROM nobel
  WHERE subject = 'Physics' AND yr = '1980' OR subject ='Chemistry' AND yr = '1984';
  
--Show the winners for 1980 excluding the Chemistry and Medicine
  SELECT *
  FROM nobel
  WHERE yr = '1980' AND subject NOT IN ('Chemistry', 'Medicine');
  
--Show who won a 'Medicine' prize in an early year (before 1910, not including 1910) together with winners of a 'Literature' prize
--in a later year (after 2004, including 2004)
  SELECT *
  FROM nobel
  WHERE subject = 'Medicine' AND yr < '1910' OR subject = 'Literature' AND yr >= '2004'
