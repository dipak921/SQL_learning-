use Practice;

/* set null 
- If a user tries to delte or update statements(s)that will affect row
in the foreign key table then those values will be set to null when the
primary key record is deleted or updated in the primary key table
- The importat thing that we need to keep in mind that the foreign key
colummns affected must allow null values.

*/

drop table [order];

