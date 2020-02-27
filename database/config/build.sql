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

INSERT INTO students (student_id , student_name, student_birth, student_sex, student_address,  student_EMAIL,student_img) VALUES (1,'Tasnin' , '8/8/1996', 'Female', 'Bethlehem' ,'tasninbhiri1996@gmail.com','https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80');
INSERT INTO students (student_id, student_name, student_birth, student_sex, student_address,  student_EMAIL,student_img) VALUES (2,'Matt' , '25/5/1995', 'Male', 'Bethlehem' ,'Matt1996@gmail.com','https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80');
INSERT INTO students (student_id, student_name, student_birth, student_sex, student_address,  student_EMAIL,student_img) VALUES (3,'karmel' , '4/9/1996', 'Female', 'Bethlehem' ,'Karmel1996@gmail.com','data:image/jpeg;base64,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');
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