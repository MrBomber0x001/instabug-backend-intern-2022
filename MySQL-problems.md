P1. find the top 100 students based on their average grades sorted descendingly by the average grade and in case multiple students have the same average grade, sort them lexicographically in ascending order by their names. Your query should output a table with the following columns (name, average_grade).Submission endpoint: challenge.instabug-dev.com/api/web/database/submit/p1

p2. For the same tables in P1, for each student, get all the courses that he/she is enrolled in along with the grade he/she scored for each course. Order the result by the student name in ascending order and if there is a tie, break it with the course name in ascending order and if there is a tie break it with the grade in ascending order. The final result should have 3 columns with names (name, course, grade)

P3. For the same tables in P1, get the name of the most popular course (the one where the most students are enrolled) and if there is a tie, get the course that's lexicographically the smallest

p4. Given a table called "bugs" with the following columns (id, token, title, category, device, reported_at, created_at, updated_at). Select all distinct bug categories

p5. For the same table in P4, find how many bugs were created on "2019-03-01" or later. Your query should produce a table with one column called "count". This problem is graded partially, 10% on correctness (your query gets the correct count) and 90% on performance (your query makes use of available indexes).

p6. For the same table in P4, find the title of the bug with token = "token660" and reported_at on "2020-08-30". This problem is graded partially, 10% on correctness (your query gets the correct count) and 90% on performance (your query makes use of available indexes)
