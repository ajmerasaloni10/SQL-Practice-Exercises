/*
CREATE TABLE If Not Exists point (x INT NOT NULL, UNIQUE INDEX x_UNIQUE (x ASC))
Truncate table point
insert into point (x) values ('-1')
insert into point (x) values ('0')
insert into point (x) values ('2')

Table point holds the x coordinate of some points on x-axis in a plane, which are all integers.
Write a query to find the shortest distance between two points in these points.
| x   |
|-----|
| -1  |
| 0   |
| 2   |
The shortest distance is '1' obviously, which is from point '-1' to '0'. So the output is as below:
| shortest|
|---------|
| 1       |
Note: Every point is unique, which means there is no duplicates in table point.
Follow-up: What if all these points have an id and are arranged from the left most to the right most of x axis?

*/

/* solution */


SELECT min(abs(x1.x - x2.x)) AS shortest
FROM point x1, point x2 
WHERE x1.x!=x2.x