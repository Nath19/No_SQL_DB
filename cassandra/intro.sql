CREATE TABLE Flight (pk text idFlight , dateF text  , distance  text );




CREATE TABLE exempletable ( idFlight text PRIMARY KEY, dateF text, distance text);


 CREATE TABLE Flight ( idFlight INT PRIMARY KEY, dateF DATE, distance INT,duration FLOAT , fromITA text,toIATA text, pilot INT,
copilot INT, officer INT, purser INT,
purser2 INT);



CREATE TABLE Flight (
idFlight INT, dateF DATE, distance INT, duration FLOAT, fromIATA text, toIATA text, pilot INT,
copilot INT, officer INT, purser INT,
purser2 INT,
primary key (idFlight)
);


 CREATE TABLE Flight ( idFlight INT PRIMARY KEY, dateF DATE, distance INT,duration FLOAT , fromITA text,toIATA text, pilot INT,
copilot INT, officer INT, purser INT,
purser2 INT);




INSERT INTO Flight JSON '{
"idFlight": 2, "dateF": "2016-10-15", "distance":344, "duration": 1.3, "fromITA": "CDG", "toIATA": "LCY", "pilot": 1, "copilot": 2, "officer": 3,
"purser": 4, "purser2": 5}';


INSERT INTO Flight (idFlight, dateF, distance, duration, fromITA, toIATA, pilot, copilot,
officer, purser, purser2)
VALUES (1,'2018-10-15',344,1.3,'CDG','LCY',1,2,3,4,5);




SELECT writetime(fromITA), writetime(pilot), writetime(copilot)
FROM Flight WHERE idFlight=1;


 UPDATE Flight USING TTL 3600 SET pilot=18 WHERE idFlight = 1;


UPDATE Flight USING TIMESTAMP 2345





CREATE TABLE Flight (
idFlight INT, dateF DATE, distance INT, duration FLOAT, fromIATA text, toIATA text, pilot INT,
copilot INT, officer INT, purser1 INT, purser2 INT,
primary key (idFlight)
);




CREATE TABLE Flight (
idFlight INT, dateF DATE, distance INT, duration FLOAT, fromIATA text, toIATA text, pilot INT,
copilot INT, officer INT, purser INT,
purser2 INT,hostesses frozen <list<text>>,
primary key (idFlight)
);



INSERT INTO Flight (idFlight, dateF, distance, duration, fromIATA, toIATA, pilot, copilot,
officer, purser, purser2,hostesses)
VALUES (1,'2018-10-15',344,1.3,'CDG','LCY',1,2,3,4,5,['diana','sophia']);



INSERT INTO directory(file, value) VALUES([ 'home', 'documents', 'homework.doc' ], 0x);


INSERT INTO Flight (idFlight, dateF, distance, duration, fromIATA, toIATA, pilot, copilot,
officer, purser, purser2,hostesses)
VALUES (1,'2018-10-15',344,1.3,'CDG','LCY',1,2,3,4,5,{"h1" : 6,"h2" : 7,"h3" : 8});




SET pilot=18 WHERE idFlight = 1;s


INTO Flight (..., hostesses) VALUES (..., 6, 7, 8 )
UPDATE
    UPDATE
    UPDATE
    DELETE
INTO Flight (..., hostesses) VALUES (..., 6, 7, 8 );
 update Flight SET hostesses=hostesses + {9} WHERE idFlight=1;


//FROZEN
CREATE TABLE Flight ( idFlight INT, dateF DATE, distance INT, duration FLOAT, fromIATA text, toIATA text, pilot INT, copilot INT, officer INT, purser INT, purser2 INT,hostesses frozen <list<int>>, primary key (idFlight) );

INSERT INTO Flight (idFlight, dateF, distance, duration, fromIATA, toIATA, pilot, copilot,
officer, purser, purser2,hostesses)
VALUES (1,'2018-10-15',344,1.3,'CDG','LCY',1,2,3,4,5,{"ID": 6,
"lastname": "Walthéry", "firstname": "Natacha" });












//INSERTION JSON 

CREATE TABLE IF NOT EXISTS cyclist_category ( category text, points int, id UUID, lastname text, PRIMARY KEY (category, points)) ;


INSERT INTO cyclist_category (category, points, id, lastname) VALUES ('GC',1269,220844bf-4860-49d6-9a4b-6b5d3a79cbfb,'TIRALONGO');

select * from cyclist_category;


INSERT INTO cyclist_category JSON '{
  "category" : "GC", 
  "points" : 780, 
  "id" : "829aa84a-4bba-411f-a4fb-38167a987cda",
  "lastname" : "SUTHERLAND" }';

