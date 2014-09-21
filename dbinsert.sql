USE seminarmarks;
DELETE FROM marks;
DELETE FROM markers;
DELETE FROM students;
DELETE FROM users;

INSERT INTO marks
	VALUES  
-- ---------------------MARKER 1--------------------
			(0, 4, 5, 70, 2014, 1, 0, 0, 0), 
			(1, 3, 4, 27, 2014, 2, 0, 0, 0),

			(2, 1, 3, 25, 2014, 1, 1, 0, 0),
			(3, 5, 7, 64, 2014, 2, 1, 0, 0),

			(4, 3, 5, 73, 2014, 1, 2, 0, 0),
			(5, 9, 5, 75, 2014, 2, 2, 0, 0),

			(6, 6, 3, 75, 2014, 1, 3, 0, 0),
			(7, 2, 8, 49, 2014, 2, 3, 0, 0),

-- ---------------------MARKER 2--------------------

			(8, 3, 5, 45, 2014, 1, 0, 1, 0),
			(9, 6, 8, 59, 2014, 2, 0, 1, 0),

			(10, 7, 9, 14, 2014, 1, 1, 1, 0),
			(11, 8, 8, 56, 2014, 2, 1, 1, 0),

			(12, 5, 2, 72, 2014, 1, 2, 1, 0),
			(13, 9, 7, 35, 2014, 2, 2, 1, 0),

			(14, 8, 6, 53, 2014, 1, 3, 1, 0),
			(15, 6, 1, 25, 2014, 2, 3, 1, 0),

-- ---------------------MARKER 3--------------------

			(16, 4, 7, 12, 2014, 1, 0, 2, 0),
			(17, 1, 9, 55, 2014, 2, 0, 2, 0),

			(18, 7, 6, 52, 2014, 1, 1, 2, 0),
			(19, 1, 8, 36, 2014, 2, 1, 2, 0),

			(20, 5, 6, 55, 2014, 1, 2, 2, 0),
			(21, 8, 1, 23, 2014, 2, 2, 2, 0),

			(22, 5, 7, 63, 2014, 1, 3, 2, 0),
			(23, 9, 6, 69, 2014, 2, 3, 2, 0),

-- ---------------------MARKER 4--------------------

			(24, 2, 6, 62, 2014, 1, 0, 3, 0),
			(25, 5, 6, 56, 2014, 2, 0, 3, 0),

			(26, 1, 8, 28, 2014, 1, 1, 3, 0),
			(27, 5, 4, 35, 2014, 2, 1, 3, 0),

			(28, 7, 3, 75, 2014, 1, 2, 3, 0),
			(29, 5, 6, 24, 2014, 2, 2, 3, 0),

			(30, 9, 9, 36, 2014, 1, 3, 3, 0),
			(31, 6, 3, 47, 2014, 2, 3, 3, 0);

INSERT INTO markers
	VALUES (0, "Tim", "Tam"),
			(1, "Kim", "Kam"),
			(2, "Bim", "Bam"),
			(3, "Jim", "Jam");

INSERT INTO students
	VALUES (0, "Tob", "Tub", 21127888),
			(1, "Kob", "Kub", 21137999),
			(2, "Bob", "Bub", 22113874),
			(3, "Job", "Jub", 34783927);

INSERT INTO users
	VALUES (0, "marker1", "password1");


select students.StudentFirstName, Mark1+Mark2+Mark3 as markTotal, Seminar, markers.MarkerFirstName FROM students, marks, markers
		where students.idStudent=marks.idStudent AND markers.idMarker=marks.idMarker
		order by marks.idStudent asc;

select students.StudentFirstName, AVG(mark1+mark2+mark3) as markAvg FROM students, marks
		where students.idStudent=marks.idStudent
		group by marks.idStudent asc;