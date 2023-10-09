 --Table Creation ---

--! 1:: --students TABLE ---

---create table ---

CREATE Table
    students(
        student_id SERIAL PRIMARY KEY,
        student_name VARCHAR(31),
        age INTEGER,
        email VARCHAR(41),
        frontend_mark INTEGER,
        backend_mark INTEGER,
        status VARCHAR(52)
    );



--! 2::--courses TABLE ---

CREATE TABLE
    courses (
        course_id SERIAL PRIMARY KEY,
        course_name VARCHAR(259),
        credits INTEGER
    );



-- ** create courses table data ***
INSERT into
    courses (course_name, credits)
VALUES ('Next.js', 3), ('React.js', 4), ('Databases', 3), ('Prisma', 3);

SELECT * from courses;


-- ! 3::--enrollment TABLE ---
CREATE TABLE
    enrollment (
        enrollment_id SERIAL PRIMARY KEY,
        student_id INTEGER REFERENCES students(student_id),
        course_id INTEGER REFERENCES courses(course_id)
    );



---! **-- enrollment data insert **--
INSERT INTO
    enrollment (student_id, course_id)
VALUES (1, 1), (1, 2), (2, 1), (3, 2);

SELECT * from enrollment;




--!  ***-- Execute SQL queries -----



--***--Query 1 >>>>>>>>>>: 

INSERT INTO
    students (student_name,age,email,frontend_mark,backend_mark)
VALUES 
('Alices',24,'bob96@example.com',30,43),
('Bobn',21,'bob74@example.com',34,45),
('Charliee',23,'charlie87@example.com',60,59),
('Davidp',20,'david41@example.com',40,49),
('Evenu',24,'newemail14@example.com',45,34),
('Rahim',23,'rahim22@gmail.com',46,42);


SELECT * from students;

--***----Query 2 >>>>>>>>>>: 

SELECT stu.student_name, co.course_name from students stu
JOIN enrollment enroll on stu.student_id = enroll.student_id
join courses co on co.course_id = enroll.course_id
where co.course_name = 'Next.js';




--***-----Query 3 (update for selection Awarded) >>>>>>>>>>: 

update students 
set status = 'Awarded'
WHERE (frontend_mark+backend_mark)=(
    SELECT max (frontend_mark+ backend_mark)
   from students
);




--***------Query 4 >>>>>>>>>>: 

DELETE from courses
WHERE courses.course_id not in (
    SELECT enrollment.course_id
    from enrollment
);



--***-----Query 5 >>>>>>>>>>: 

SELECT * from students
ORDER BY student_id ASC
LIMIT 2 OFFSET 2;




--***-----Query 6 >>>>>>>>>>: 

SELECT co.course_name ,count(enr.student_id) as students_enrolled from enrollment enr
LEFT Join courses co on enr.course_id = co.course_id
GROUP BY co.course_name ;



--***-----Query 7 >>>>>>>>>>: 

SELECT AVG(age) as average_age from students;


--  ***----- Query 8 >>>>>>>>>>: 
SELECT student_name  from students
WHERE email LIKE '%example.com%';


