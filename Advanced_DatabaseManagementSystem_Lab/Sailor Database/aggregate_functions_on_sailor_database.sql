-- 1) Display the total number of sailors

sql> select count(*) as total_sailors from sailors;

/*
 total_sailors
 -------------
 10
*/

-- 2) Display the maximum rating of sailors

sql> select max(rating) as max_rating from sailors;

/*
 max_rating
 ----------
 10
*/

-- 3) Display the minimum age of sailors

sql> select min(age) as min_age from sailors;

/*
 min_age
 -------
 16
*/

-- 4) Display the average age of sailors

sql> select round(avg(age), 2) as avg_age from sailors;

/*
 avg_age
 -------
 37.4
*/

-- 5) To count numbers of boats booked in reserves table

sql> select count(distinct bid) as boats_booked from reserves;

/*
 boats_booked
 ------------
 5
*/

-- 6) To count number of Boats in boats table

sql> select count(*) as total_boats from boats;

/*
 total_boats
 -----------
 4
*/

-- 7) To find sum of rating from sailors

sql> select sum(rating) as sum_rating from sailors;

/*
 sum_rating
 ----------
 66
*?

-- 8) To find sum of distinct age of sailors (Duplicate ages are eliminated)

sql> select sum(distinct age) as sum_distinct_age from sailors;

/*
 sum_distinct_age
 ----------------
 313.5
*/

-- 9) To find average of distinct age of sailors (Duplicate ages are eliminated)

sql> select avg(distinct age) as avg_distinct_age from sailors;

/*
 avg_distinct_age
 ----------------
 39.1875
*/

-- 10) Find the average age of sailors with a rating of 10

sql> select avg(age) as avg_age_rating_10 from sailors where rating = 10;

/*
 avg_age_rating_10
 -----------------
 25.5
*/

-- 11) Count the number of different sailor names

sql> select count(distinct sname) as unique_sailors from sailors;

/*
 unique_sailors
 --------------
 9
*/

-- 12) Find the name and age of the oldest sailor

sql> select sname, age from sailors where age = (select max(age) from sailors);

/*
 sname   age
 ------  ------
 bob     63.5
*/

-- 13) Find the names of sailors who are older than the oldest sailor with a rating of 10

sql> select sname from sailors where age > (select max(age) from sailors where rating = 10);

/*
 sname
 ----------
 dustin
 lubber
 bob
 horatio
*/

-- 14) Find the age of the youngest sailor for each rating level

sql> select rating, min(age) as youngest_age from sailors group by rating;

/*
 rating  youngest_age
 ------  -------------
 1       33
 3       25.5
 7       35
 8       25.5
 9       40
 10      16
*/

-- 15) Find the age of youngest sailor with age >= 18 for each rating with at least 2 such sailors

sql> select rating, min(age) as youngest_age from sailors where age >= 18 group by rating having count(*) >= 2;

/*
 rating  youngest_age
 ------  -------------
 3       25.5
 7       35
 8       25.5
*/

-- 16) Find the average age of sailors for each rating level that has at least two sailors

sql> select rating, avg(age) as avg_age from sailors group by rating having count(*) >= 2;

/*
 rating  avg_age
 ------  --------
 3       44.5
 7       40
 8       40.5
 10      25.5
*/