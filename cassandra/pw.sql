CREATE KEYSPACE IF NOT EXISTS school
WITH REPLICATION = 'class' : 'SimpleStrategy', 'replication_factor': 3 ; 





CREATE TABLE IF NOT EXISTS Lesson (
idLesson INT, Title VARCHAR, Responsible INT, Level VARCHAR, Quota INT, Coeff INT, PRIMARY KEY ( idLesson )
);
CREATE INDEX fk_Lesson_Responsible ON Lesson ( Responsible ) ;


CREATE TABLE IF NOT EXISTS Teacher (
idTeacher INT, Lastname VARCHAR, Firstname VARCHAR, status VARCHAR, PRIMARY KEY ( idTeacher )
);

INSERT INTO Lesson (idLesson,Title,Responsible,Level,Quota,Coeff) VALUES (1,'Introduction to Databases',1,'M1',30,3);
INSERT INTO Lesson (idLesson,Title,Responsible,Level,Quota,Coeff) VALUES (2,'Skylines',4,'M1',30,2);
INSERT INTO Lesson (idLesson,Title,Responsible,Level,Quota,Coeff) VALUES (3,'Service production and distribution',5,'M1',30,2); INSERT INTO Lesson (idLesson,Title,Responsible,Level,Quota,Coeff) VALUES (4,'Advanced databases',1,'M2',30,5);
INSERT INTO Lesson (idLesson,Title,Responsible,Level,Quota,Coeff) VALUES (5,'Systems Architecture',6,'M2',8,1);
INSERT INTO Lesson (idLesson,Title,Responsible,Level,Quota,Coeff) VALUES (6,'IT Business / Introduction',7,'M2',20,3);
INSERT INTO Lesson (idLesson,Title,Responsible,Level,Quota,Coeff) VALUES (7,'IT Business / Strategy and Management',8,'M2',10,1);



INSERT INTO Teacher (idTeacher,Lastname,Firstname,status) VALUES (1,'Travers','Nicolas','Temporary');
INSERT INTO Teacher (idTeacher,Lastname,Firstname,status) VALUES (2,'Mourier','Pascale','Permanent');
INSERT INTO Teacher (idTeacher,Lastname,Firstname,status) VALUES (3,'Boisson','Francois','Temporary');
INSERT INTO Teacher (idTeacher,Lastname,Firstname,status) VALUES (4,'Mathieu','Eric','Permanent');
INSERT INTO Teacher (idTeacher,Lastname,Firstname,status) VALUES (5,'Chu','Chengbin','Permanent');
INSERT INTO Teacher (idTeacher,Lastname,Firstname,status) VALUES (6,'Boutin','Philippe','Permanent');
INSERT INTO Teacher (idTeacher,Lastname,Firstname,status) VALUES (7,'Escribe','Julien','Temporary');
INSERT INTO Teacher (idTeacher,Lastname,Firstname,status) VALUES (8,'Znaty','David','Temporary');
INSERT INTO Teacher (idTeacher,Lastname,Firstname,status) VALUES (9,'Abal-Kassim','Cheik Ahamed','Temporary');

select * from Teacher ;


select * from Lesson; 








//2.1.1

//List of lessons

select * from Lesson;



// 2.1.2 List of lessons titles

select title from Lesson;

// 2.1.3 Family name of the 4th teacher,

select lastname from Teacher where idTeacher = 4;


// 2.1.4 Titles of lessons for which the teacher ’1’ is responsible for

select title from Lesson where responsible =1;


// 2.1.5 Titles from lessons which the quota is over 30,

select title from Lesson where Quota >30 allow filtering ;




// 2.1.6 Lessons’ title for a level ’M1’ and the responsible is ’1’, Use ’ALLOW FILTERING’ at the end of the query.



select title from lesson where  level = 'M1' and responsible =1  allow filtering;


// 2.1.7 Lessons’ title where the responsible id is below 5,

select title from Lesson where responsible< 5 allow filtering;



// 2.1.8 Lessons’ title where the token of identifiers are below 0. Use function ’token()’ of rows’ identifier.


select title from Lesson where token(idLesson) <0;


// 2.1.8 Lessons’ title where the token of identifiers are below 0. Use function ’token()’ of rows’ identifier.


select title 



