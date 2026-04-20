/* Grouping set in sql
The GROUPING SET Operator allows you to group together multiple
groupings of columns followed by an optional grand total row, denoted by parenthes ().
- It is more efficient to use GROUPING SETS operators instead of multiple GROUP BY with UNION clauses beacause the latter
adds more processing overheads on the database server.

*/


select city, gender, sum(Salary) as Total_Salary
from Employee_Details 
group by 
grouping sets
(
(city,gender),
(city),
(gender),
()
)
