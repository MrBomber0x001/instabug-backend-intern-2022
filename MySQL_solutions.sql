-- p1
SELECT s.name as name,
       avg(g.grades) as average_grade,
FROM grades g
JOIN students s
on g.student_id = s.id
group by g.student_id, s.name
order by avg(g.grade) desc, s.name
limit 100


-- p2
select c.name as course,
g.grade as grade, 
s.name as name 
from students s join grades g on s.id = g.student_id 
join courses c on c.id = g.course_id 
group by s.name, c.name, g.grade 
order by s.name, c.name, g.grade

-- p3
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

-- p4
SELECT distinct category from bugs

-- starting from the p5 to p6, there are more than just one solution, I will list them all.
-- p5
SELECT count(distinct id) as 'count' from bugs created_at >= '2019-03-01' order by id, category, token; -- gives 10%

select count(created_at) from bugs where  id > 0 and created_at between '2019-03-01' and sysdate() -- gives 100%


-- p6

SELECT title FROM bugs WHERE token like 'token660' and reported_at like '2020-08-30' ORDER BY id; -- 10%

select title from bugs where id = (select id from bugs where token = 'token660' and reported_at = '2020-08-30') -- 10%
