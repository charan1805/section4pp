create database cambridge_School
use cambridge_School
Create table Classes (
    class_id int primary key,
    class_name nvarchar(50) NOT NULL
)

insert into Classes values (1,'2nd'),(2,'3rd')

create table Subject (
    subject_id int primary key,
    subject_name nvarchar(50) NOT NULL,
    class_id int,
    foreign key (class_id) references Classes (class_id)
)
insert into Subject values (1,'social',1),(2,'Mathematics',2) ,(3,'English',1)

create Table Student (
    student_id int primary key,
    student_name nvarchar(50) NOT NULL,
    class_id int,
    subject_id int,
    foreign key (class_id) references Classes (class_id),
    foreign key (subject_id) references Subject (subject_id)
)

insert into Student values (1,'Sam',2,1),(2,'Ram',1,2),(3,'Shyam',2,3)

select * from Student