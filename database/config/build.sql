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
  student_birth TEXT ,
  student_sex  TEXT NOT NULL,
  student_address TEXT , 
  student_EMAIL VARCHAR(320), 
  student_img VARCHAR(10000) NoT NULL

);

INSERT INTO students (student_id , student_name, student_birth, student_sex, student_address,  student_EMAIL,student_img) VALUES (1,'Tasnin' , '8/8/1996', 'Female', 'Bethlehem' ,'tasninbhiri1996@gmail.com','https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80');
INSERT INTO students (student_id, student_name, student_birth, student_sex, student_address,  student_EMAIL,student_img) VALUES (2,'Matt' , '25/5/1995', 'Male', 'Bethlehem' ,'Matt1996@gmail.com','https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80');
INSERT INTO students (student_id, student_name, student_birth, student_sex, student_address,  student_EMAIL,student_img) VALUES (3,'karmel' , '4/9/1996', 'Female', 'Bethlehem' ,'Karmel1996@gmail.com','https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQwvUzCt66P6qrr-QCUIgQiNPT7-7Uy43LXceJbEkUbRg_DicvM');
INSERT INTO students (student_id, student_name, student_birth, student_sex, student_address,  student_EMAIL,student_img) VALUES (4,'Harry' , '17/11/1996', 'Male', 'Bethlehem' ,'Harry1996@gmail.com','data:image/jpeg;base64,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');


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