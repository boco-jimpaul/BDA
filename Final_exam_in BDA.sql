DROP TABLE IF EXISTS COE_table;
CREATE TABLE COE_table(
	Student_number INT PRIMARY KEY,
	Lastname VARCHAR NOT NULL,
	Firstname VARCHAR NOT NULL, 
	Middle_Initial VARCHAR NULL,
	Sex VARCHAR NULL,
	Email_address VARCHAR NULL,
	Course VARCHAR NOT NULL,
	Year INT NOT NULL,
	"Section" VARCHAR NOT NULL
);

INSERT INTO COE_table(Student_number, Lastname, Firstname, Middle_Initial, Sex,Email_address, Course, Year, "Section")
VALUES(122381,'Boco','Jim',NULL,NULL,NULL,'BSCpE',3,'A'),
		(123331,'Last','Don',NULL,NULL,NULL,'BSCpE',3,'A'),
		(122481,'Doe','Jhon',NULL,NULL,NULL,'BSCpE',3,'A'),
		(124411,'Lee','Shu',NULL,NULL,NULL,'BSCpE',3,'A'),
		(125511,'Voice','Luis',NULL,NULL,NULL,'BSCpE',3,'A');

UPDATE COE_table SET Sex = NOT NULL;
SELECT * FROM COE_table;		
		
INSERT INTO COE_table(Student_number, Lastname, Firstname, Middle_Initial, Sex,Email_address, Course, Year, "Section")
VALUES(122445,'Lee','David','C','Female','david@gmail.com','BSCpE',3,'A');	

INSERT INTO COE_table(Student_number, Lastname, Firstname, Middle_Initial, Sex,Email_address, Course, Year, "Section")
VALUES(12299,'Ayala','Aya','E','Female','aya@gmail.com','BSCpE',3,'A'),
	(1004,'Ayala','Aya','R','Female','ayala@gmail.com','BSCpE',3,'A'),
	(12779,'Ayala','Aya','T','Female','ayaaya@gmail.com','BSCpE',3,'A')
	
COPY COE_table TO 'C:\BDA\COE_table.csv' DELIMITER ',' CSV HEADER;



UPDATE COE_table SET Email_address = 'not available'; 

SELECT *FROM COE_table ORDER BY lastname DESC;

SELECT * FROM COE_table WHERE Sex = 'Female';

SELECT * FROM COE_table ORDER BY Student_number OFFSET 2 LIMIT 3;

SELECT
 	Firstname ||'  '|| Lastname AS Fullname
	FROM COE_table;
	
    





