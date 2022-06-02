P1. , find the top 100 students based on their average grades sorted descendingly by the average grade and in case multiple students have the same average grade, sort them lexicographically in ascending order by their names. Your query should output a table with the following columns (name, average_grade).Submission endpoint: challenge.instabug-dev.com/api/web/database/submit/p1

1. Select top 100 name or id,
2. avg(grades) as average_grade (descendingly)
3. order name ascending

```sql
SELECT s.name as name,
       avg(g.grades) as average_grade,
FROM grades g
JOIN students s
on g.student_id = s.id
group by g.student_id, s.name
order by avg(g.grade) desc, s.name
limit 100
```

p2. For the same tables in P1, for each student, get all the courses that he/she is enrolled in along with the grade he/she scored for each course. Order the result by the student name in ascending order and if there is a tie, break it with the course name in ascending order and if there is a tie break it with the grade in ascending order. The final result should have 3 columns with names (name, course, grade)

1. get all courses
2. get all grade for each course
3. order result by student name

join student on courses

Here's the clarification:

- A student can take the same course multiple times.
- A student can take the same course multiple times and score the same grade.
- A student can take the same course multiple times and score a different grade.

You need to return all records except if the same student took the same course and scored the same result (that needs to appear in the result set only once). A given student might appear multiple times only if it's for different courses or the same course but different grades.

students(id, name) , courses(id, name) , grades(id, course_id, student_id, grade)

```sql
select c.name as course, g.grade as grade, s.name as name from students s join grades g on s.id = g.student_id join courses c on c.id = g.course_id group by s.name, c.name, g.grade order by s.name, c.name, g.grade
```

```sql
select s.name as name , 
c.name course, 
g.grade grade from students s 
join grades g on s.id  = g.student_id  
join courses c on c.id = g.course_id  
group by  s.name , c.name, g.grade order by s.name , c.name, g.grade
```

P3. For the same tables in P1, get the name of the most popular course (the one where the most students are enrolled) and if there is a tie, get the course that's lexicographically the smallest

```sql
select co.name from students st 
join grades gr on st.id  = gr.student_id  
join courses co on co.id = gr.course_id group by  co.name  
having count(st.name) = (
        select count(st.name) from students st 
        join grades gr on st.id  = gr.student_id  
        join courses co on co.id = gr.course_id  group by  co.name 
        order by count(st.name) desc limit 1 
    )
order by co.name limit 1
```

p4. Given a table called "bugs" with the following columns (id, token, title, category, device, reported_at, created_at, updated_at). Select all distinct bug categories

```sql
SELECT distinct category from bugs
```

p5. For the same table in P4, find how many bugs were created on "2019-03-01" or later. Your query should produce a table with one column called "count". This problem is graded partially, 10% on correctness (your query gets the correct count) and 90% on performance (your query makes use of available indexes).

```sql
select count(title) as count
FROM bugs use index(index_bugs_on_category_and_token_and_reported_at)
where created_at >= '2019-03-01';
```

p6. For the same table in P4, find the title of the bug with token = "token660" and reported_at on "2020-08-30". This problem is graded partially, 10% on correctness (your query gets the correct count) and 90% on performance (your query makes use of available indexes)
