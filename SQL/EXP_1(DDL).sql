--1. Check the current version, edition of database.
SELECT * FROM V$VERSION;

--2. Check the current user.
SHOW USER;

--3. Clear the screen.
CL SCR;

--4. Create a table STAFF with fields STAFFid, name,age.
CREATE TABLE STAFF(STAFFID NUMBER(10), NAME VARCHAR2(20), AGE NUMBER(3));

--5. Display the structure of STAFF table.
DESC STAFF;

--6. Add a column(mobile no) to STAFF table.
ALTER TABLE STAFF ADD MOBILE_NO NUMBER(10);

--7. Add three columns(course,date of birth, email) to STAFF table.
ALTER TABLE STAFF ADD (COURSE VARCHAR2(20), D0B DATE, EMAIL VARCHAR2(40));

--8. Increase the column(name) size to 30
ALTER TABLE STAFF MODIFY NAME VARCHAR2(30);

--9. Remove a column(email) from STAFF table.
ALTER TABLE STAFF DROP COLUMN EMAIL;

--10. Display the structure of table.
DESC TAB;

--11. Rename the table name(STAFF to FACULTY).
RENAME STAFF TO FACULTY;

--12. Display the structure of renamed table.
DESC FACULTY;

--13. Create a copy of another table(FACULTY as CDCEMP).
CREATE TABLE CDCEMP AS(SELECT * FROM FACULTY);

--14. Display structure of FACULTY and CDCEMP.
DESC FACULTY;
DESC CDCEMP;

--15. Remove the table FACULTY.
DROP TABLE FACULTY;