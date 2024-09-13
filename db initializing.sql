CREATE DATABASE student_management;
USE student_management;

CREATE TABLE admin (
	id int NOT NULL AUTO_INCREMENT,
	username VARCHAR(45) NOT NULL,
	password VARCHAR(45) NOT NULL,
	PRIMARY KEY (id)
);

CREATE TABLE student (
	id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(150) NOT NULL,
    date_of_birth DATE NOT NULL,
    gender VARCHAR(10) NOT NULL,
    email VARCHAR(100) NOT NULL,
    phone VARCHAR(15) NOT NULL,
    father_name VARCHAR(150) NOT NULL,
    mother_name VARCHAR(150) NOT NULL,
    address1 TEXT NOT NULL,
    address2 TEXT NOT NULL,
    image_path VARCHAR(200) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE course (
	id INT NOT NULL AUTO_INCREMENT,
    student_id INT DEFAULT NULL,
    semester INT DEFAULT NULL,
    course1 VARCHAR(200) DEFAULT NULL,
    course2 VARCHAR(200) DEFAULT NULL,
    course3 VARCHAR(200) DEFAULT NULL,
    course4 VARCHAR(200) DEFAULT NULL,
    course5 VARCHAR(200) DEFAULT NULL,
    PRIMARY KEY (id),
    KEY fk_student_id (student_id),
    CONSTRAINT fk_student_id FOREIGN KEY (student_id) REFERENCES student (id) ON DELETE CASCADE
);

CREATE TABLE score (
	id INT NOT NULL AUTO_INCREMENT,
    student_id INT NOT NULL,
	semester INT NOT NULL,
    course1 VARCHAR(200) DEFAULT NULL,
    score1 DOUBLE NOT NULL,
    course2 VARCHAR(200) DEFAULT NULL,
    score2 DOUBLE NOT NULL,
    course3 VARCHAR(200) DEFAULT NULL,
    score3 DOUBLE NOT NULL,
    course4 VARCHAR(200) DEFAULT NULL,
    score4 DOUBLE NOT NULL,
    course5 VARCHAR(200) DEFAULT NULL,
    score5 DOUBLE NOT NULL,
    average DOUBLE NOT NULL,
    PRIMARY KEY (id),
    KEY fk_stu_id (student_id),
    CONSTRAINT fk_stu_id FOREIGN KEY (student_id) REFERENCES student (id) ON DELETE CASCADE
);



