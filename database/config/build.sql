BEGIN; 

DROP TABLE IF EXISTS  relations ,students, teachers, grades, courses CASCADE;


CREATE TABLE courses(
    course_id SERIAL PRIMARY KEY,
    course_title TEXT  NOT NULL

);

INSERT INTO courses (course_id, course_title) VALUES(1,'Physics'); 
INSERT INTO courses (course_id, course_title) VALUES(2,'Maths'); 
INSERT INTO courses (course_id, course_title) VALUES(3,'Chemistry'); 
INSERT INTO courses (course_id, course_title) VALUES(4,'Arabic'); 
INSERT INTO courses (course_id, course_title) VALUES(5,'Biology'); 
INSERT INTO courses (course_id, course_title) VALUES(6,'coding'); 
INSERT INTO courses (course_id, course_title) VALUES(7,'English'); 

CREATE TABLE students(
  student_id  SERIAL     PRIMARY KEY,
  student_name TEXT  NOT NULL , 
  student_birth INTEGER ,
  student_sex  TEXT NOT NULL,
  student_address TEXT , 
  student_EMAIL VARCHAR(320), 
  student_img VARCHAR(1000) NoT NULL

);

INSERT INTO students (student_id , student_name, student_birth, student_sex, student_address,  student_EMAIL,student_img) VALUES (1,'Tasnin' , 8/8/1996, 'Female', 'Bethlehem' ,'tasninbhiri1996@gmail.com','https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.forbes.com%2Fsites%2Fangelauyeung%2F2019%2F10%2F24%2Fjeff-bezos-is-no-longer-the-richest-person-in-the-world%2F&psig=AOvVaw0aqN38lJLcC_x4z05J8o3B&ust=1582725738852000&source=images&cd=vfe&ved=0CAIQjRxqFwoTCPjl3f3u7OcCFQAAAAAdAAAAABAU');
INSERT INTO students (student_id, student_name, student_birth, student_sex, student_address,  student_EMAIL,student_img) VALUES (2,'Matt' , 25/5/1995, 'Male', 'Bethlehem' ,'Matt1996@gmail.com','https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.pexels.com%2Fsearch%2Fperson%2F&psig=AOvVaw0aqN38lJLcC_x4z05J8o3B&ust=1582725738852000&source=images&cd=vfe&ved=0CAIQjRxqFwoTCPjl3f3u7OcCFQAAAAAdAAAAABAD');
INSERT INTO students (student_id, student_name, student_birth, student_sex, student_address,  student_EMAIL,student_img) VALUES (3,'karmel' , 4/9/1996, 'Female', 'Bethlehem' ,'Karmel1996@gmail.com','https://www.google.com/url?sa=i&url=https%3A%2F%2Fengineering.unl.edu%2Fkayla-person%2F&psig=AOvVaw0aqN38lJLcC_x4z05J8o3B&ust=1582725738852000&source=images&cd=vfe&ved=0CAIQjRxqFwoTCPjl3f3u7OcCFQAAAAAdAAAAABAb');
INSERT INTO students (student_id, student_name, student_birth, student_sex, student_address,  student_EMAIL,student_img) VALUES (4,'Harry' , 17/11/1996, 'Male', 'Bethlehem' ,'Harry1996@gmail.com','https://www.google.com/url?sa=i&url=https%3A%2F%2Fp-upload.facebook.com%2Fnasdaily%2Fphotos%2F%3Fref%3Dpage_internal&psig=AOvVaw0aqN38lJLcC_x4z05J8o3B&ust=1582725738852000&source=images&cd=vfe&ved=0CAIQjRxqFwoTCPjl3f3u7OcCFQAAAAAdAAAAABAO');


CREATE TABLE relations(
relation_id SERIAL PRIMARY KEY,
course_id INTEGER ,
FOREIGN KEY (course_id) REFERENCES courses (course_id) ,
student_id INTEGER,
FOREIGN KEY (student_id) REFERENCES students (student_id)

);

INSERT INTO relations( course_id , student_id) VALUES (1,1);
INSERT INTO relations( course_id , student_id) VALUES (2,1);
INSERT INTO relations( course_id , student_id) VALUES (3,1);
INSERT INTO relations( course_id , student_id) VALUES (4,1);
INSERT INTO relations( course_id , student_id) VALUES (5,1);
INSERT INTO relations( course_id , student_id) VALUES (6,1);
INSERT INTO relations( course_id , student_id) VALUES (7,1);
INSERT INTO relations( course_id , student_id) VALUES (1,2);
INSERT INTO relations( course_id , student_id) VALUES (2,2);
INSERT INTO relations( course_id , student_id) VALUES (3,2);
INSERT INTO relations( course_id , student_id) VALUES (4,2);
INSERT INTO relations( course_id , student_id) VALUES (5,2);
INSERT INTO relations( course_id , student_id) VALUES (6,2);
INSERT INTO relations( course_id , student_id) VALUES (7,2);
INSERT INTO relations( course_id , student_id) VALUES (1,3);
INSERT INTO relations( course_id , student_id) VALUES (2,3);
INSERT INTO relations( course_id , student_id) VALUES (3,3);
INSERT INTO relations( course_id , student_id) VALUES (4,3);
INSERT INTO relations( course_id , student_id) VALUES (5,3);
INSERT INTO relations( course_id , student_id) VALUES (6,3);
INSERT INTO relations( course_id , student_id) VALUES (7,3);
INSERT INTO relations( course_id , student_id) VALUES (1,4);
INSERT INTO relations( course_id , student_id) VALUES (2,4);
INSERT INTO relations( course_id , student_id) VALUES (3,4);
INSERT INTO relations( course_id , student_id) VALUES (4,4);
INSERT INTO relations( course_id , student_id) VALUES (5,4);
INSERT INTO relations( course_id , student_id) VALUES (6,4);
INSERT INTO relations( course_id , student_id) VALUES (7,4);


CREATE TABLE  grades(
    grade_id SERIAL  PRIMARY KEY,
    grade_mark VARCHAR(50) ,
    course_id INTEGER ,
    FOREIGN KEY (course_id) REFERENCES courses (course_id) ,
    student_id INTEGER,
    FOREIGN KEY (student_id) REFERENCES students (student_id)
);

INSERT INTO grades( grade_mark , course_id , student_id) VALUES(84,1 ,1 );
INSERT INTO grades( grade_mark , course_id , student_id) VALUES(90, 2 ,1 );
INSERT INTO grades( grade_mark , course_id , student_id) VALUES(94,3 ,1 );
INSERT INTO grades( grade_mark , course_id , student_id) VALUES(88,4,1 );
INSERT INTO grades( grade_mark , course_id , student_id) VALUES(70,5 ,1 );
INSERT INTO grades( grade_mark , course_id , student_id) VALUES(57,6 ,1 );
INSERT INTO grades( grade_mark , course_id , student_id) VALUES(50,7,1 );
INSERT INTO grades( grade_mark , course_id , student_id) VALUES(77,1 ,2);
INSERT INTO grades( grade_mark , course_id , student_id) VALUES(70,2 ,2);
INSERT INTO grades( grade_mark , course_id , student_id) VALUES(87,3 ,2);
INSERT INTO grades( grade_mark , course_id , student_id) VALUES(88,4,2);
INSERT INTO grades( grade_mark , course_id , student_id) VALUES(99,5 ,2);
INSERT INTO grades( grade_mark , course_id , student_id) VALUES(60,6 ,2);
INSERT INTO grades( grade_mark , course_id , student_id) VALUES(90,7,2);
INSERT INTO grades( grade_mark , course_id , student_id) VALUES(91,1 ,3 );
INSERT INTO grades( grade_mark , course_id , student_id) VALUES(80,2 ,3 );
INSERT INTO grades( grade_mark , course_id , student_id) VALUES(98,3 ,3 );
INSERT INTO grades( grade_mark , course_id , student_id) VALUES(94,4,3 );
INSERT INTO grades( grade_mark , course_id , student_id) VALUES(99,5 ,3 );
INSERT INTO grades( grade_mark , course_id , student_id) VALUES(91,6 ,3 );
INSERT INTO grades( grade_mark , course_id , student_id) VALUES(90,7,3);
INSERT INTO grades( grade_mark , course_id , student_id) VALUES(64,1 ,4);
INSERT INTO grades( grade_mark , course_id , student_id) VALUES(83,2 ,4);
INSERT INTO grades( grade_mark , course_id , student_id) VALUES(57,3 ,4);
INSERT INTO grades( grade_mark , course_id , student_id) VALUES(50,4,4);
INSERT INTO grades( grade_mark , course_id , student_id) VALUES(90,5 ,4);
INSERT INTO grades( grade_mark , course_id , student_id) VALUES(70,6 ,4);
INSERT INTO grades( grade_mark , course_id , student_id) VALUES(88,7,4);





CREATE TABLE teachers(
    teacher_id SERIAL     PRIMARY KEY,
    teacher_address TEXT ,
    teacher_phone INTEGER

);

COMMIT;