-- 1) find the names and ages of all sailors

sql> select sname, age from sailors;

/*
 sname       age
 ----------  ----------
 dustin       45
 brutus       33
 lubber      55.5
 andy        25.5
 rusty        35
 horatio      35
 zorba        16
 horatio      40
 art         25.5
 bob         63.5
*/

-- 2) find all sailors with a rating above 8

sql> select * from sailors where rating > 8;

/*
 sid  sname     rating  age
 ---  --------  ------  ----
 58   rusty     10      35
 71   zorba     10      16
 74   horatio   9       40
*/

-- 3) find sailors name with a rating above 7 and age above 25

sql> select sname from sailors where rating > 7 and age > 25;

/*
 sname
 -------
 lubber
 andy
 rusty
 horatio
*/

-- 4) display all the names and colors of the boats

sql> select bname, color from boats;

/*
 bname       color
 ----------  ----------
 interlake   blue
 interlake   red
 clipper     green
 marine      red
*/

-- 5) find all the boats with red color

sql> select * from boats where color = 'red';

/*
 bid  bname      color
 ---  ---------  ------
 102  interlake  red
 104  marine     red
*/

-- 6) find the names of sailors who have reserved boat number 103

sql> select s.sname from sailors s join reserves r on s.sid = r.sid where r.bid = 103;

/*
 sname
 -------
 dustin
 lubber
 horatio
*/

-- 7) find the names of sailors who have reserved red boat

sql> select distinct s.sname from sailors s join reserves r on s.sid = r.sid join boats b on r.bid = b.bid where b.color = 'red';

/*
 sname
 -------
 dustin
 lubber
 horatio
*/

-- 8) find the colors of boats reserved by lubber

sql> select distinct b.color from sailors s join reserves r on s.sid = r.sid join boats b on r.bid = b.bid where s.sname = 'lubber';

/*
 color
 ------
 red
 green
*/

-- 9) find names of the sailors who have reserved at least one boat

sql> select distinct s.sname from sailors s join reserves r on s.sid = r.sid;

/*
 sname
 -------
 dustin
 lubber
 horatio
*/

-- 10) find names of the sailors who have reserved two different boats

sql> select sname from sailors s join reserves r on s.sid = r.sid group by sname having count(distinct r.bid) >= 2;

/*
 sname
 -------
 dustin
 lubber
 horatio
*/

-- 11) display sailor names in alphabetical order

sql> select sname from sailors order by sname asc;

/*
 sname
 -------
 andy
 art
 bob
 brutus
 dustin
 horatio
 horatio
 lubber
 rusty
 zorba
*/

-- 12) display the details of sailors with a decreasing order (highest to lowest) of their rating

sql> select * from sailors order by rating desc;

/*
 sid  sname    rating  age
 ---  -------  ------  -----
 58   rusty    10      35
 71   zorba    10      16
 74   horatio  9       40
 31   lubber   8       55.5
 32   andy     8       25.5
 22   dustin   7       45
 64   horatio  7       35
 85   art      3       25.5
 95   bob      3       63.5
 29   brutus   1       33
*/

-- 13) display a groupwise listing of all sailors according to their rating

sql> select * from sailors order by rating;

/*
 sid  sname    rating  age
 ---  -------  ------  -----
 29   brutus   1       33
 85   art      3       25.5
 95   bob      3       63.5
 22   dustin   7       45
 64   horatio  7       35
 31   lubber   8       55.5
 32   andy     8       25.5
 74   horatio  9       40
 58   rusty    10      35
 71   zorba    10      16
*/

-- 14) display all the sailors according to their ages

sql> select * from sailors order by age;

/*
 sid  sname    rating  age
 ---  -------  ------  -----
 71   zorba    10      16
 32   andy     8       25.5
 85   art      3       25.5
 29   brutus   1       33
 64   horatio  7       35
 58   rusty    10      35
 74   horatio  9       40
 22   dustin   7       45
 31   lubber   8       55.5
 95   bob      3       63.5
*/

-- 15) displays all the sailors according to rating (lower rating first), if rating is same then sort according to age (younger first)

sql> select * from sailors order by rating asc, age asc;

/*
 sid  sname    rating  age
 ---  -------  ------  -----
 29   brutus   1       33
 85   art      3       25.5
 95   bob      3       63.5
 64   horatio  7       35
 22   dustin   7       45
 32   andy     8       25.5
 31   lubber   8       55.5
 74   horatio  9       40
 71   zorba    10      16
 58   rusty    10      35
*/