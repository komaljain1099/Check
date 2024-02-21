DROP TABLE student;
CREATE TABLE student (
roll_no INT PRIMARY KEY,
name varchar(50),
Gender ENUM ("Male","Female"),
age INT 
);

INSERT INTO student VALUES (1,"Arun","-",15);
INSERT INTO student VALUES (2,"Michelle","F",22);
INSERT INTO student VALUES (3,"Harry",24);

DROP TABLE student2;
CREATE TABLE student2 (
roll_no INT PRIMARY KEY CHECK(roll_no>5),
name varchar(50),
age INT CHECK (age>18 and age<50) DEFAULT 20
);

INSERT INTO student2 VALUES (1,"Arun",15);
INSERT INTO student2 VALUES (8,"Michelle",22);
INSERT INTO student2 (roll_no, name) VALUES (10,"Harish");

SELECT * FROM student2;
INSERT INTO student2 VALUES (3,"Harry",60);
INSERT INTO student2 VALUES (6,"Ron",NULL);
INSERT INTO student2 (roll_no,name)
VALUES (11,"John");

select * from student2;

ALTER TABLE student2 ADD CONSTRAINT check(roll_no>10);

DESC student2;







#show all constraints
show create table student2;