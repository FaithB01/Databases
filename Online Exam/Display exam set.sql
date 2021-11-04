-- display exam set by teachers
select exam_name, first_name, last_name, subject_name
from exam
         join teachers on exam.teacher_id = teachers.teacher_id
         join subject_tbl on exam.subject_code = subject_tbl.subject_code
where teachers.teacher_id = 2;

-- display answers
select first_name,
       last_name,
       class,
       exam_name,
       subject_name,
       question_title,
       label,
       choice_name,
       correct_choice
from pupil_answer pa
         join pupils p on pa.pupil_id = p.pupil_id
         join class c on p.class_id = c.class_id
         join choice co on pa.choice_id = co.choice_id
         join question q on co.question_id = q.question_id
         join exam e on q.exam_id = e.exam_id
         join subject_tbl st on e.subject_code = st.subject_code
-- where p.pupil_id=1 AND e.exam_id=2

create view answers_provided as
select first_name,
       last_name,
       class,
       exam_name,
       subject_name,
       question_title,
       label,
       choice_name,
       correct_choice
from pupil_answer pa
         join pupils p on pa.pupil_id = p.pupil_id
         join class c on p.class_id = c.class_id
         join choice co on pa.choice_id = co.choice_id
         join question q on co.question_id = q.question_id
         join exam e on q.exam_id = e.exam_id
         join subject_tbl st on e.subject_code = st.subject_code
where p.pupil_id = 1
  AND e.exam_id = 2

-- PERCENTAGE
set @percentage := 100

-- total marks && Marks
SET @total_marks := (select sum(marks)
                     from question
);
SET @total_marks_eng := (select sum(marks)
                         from question
                         where exam_id = 2
);

SET @total_marks_maths := (select sum(marks)
                           from question
                           where exam_id = 1
);

-- percentage=correct_choice div marks * percentage


-- test
--

-- percentage_score
select full_n(p.first_name, p.last_name) as full_name,
       c.class,
       e.exam_name,
       st.subject_name,
       round((sum(q.Marks) / @total_marks_maths * 100), 0) as percentage_score
from pupil_answer pa
         join pupils p on pa.pupil_id = p.pupil_id
         join class c on p.class_id = c.class_id
         join choice co on pa.choice_id = co.choice_id
         join question q on co.question_id = q.question_id
         join exam e on q.exam_id = e.exam_id
         join subject_tbl st on e.subject_code = st.subject_code
where co.correct_choice = 'yes'
  and e.exam_id = 1
  and p.pupil_id = 1
GROUP BY e.exam_id


-- to add column in between existing columns
ALTER table question
    ADD column Marks int not null AFTER question_title

-- top 5 pupils with the highest score in certain exam
select full_n(first_name, last_name)                     as full_name,
       class,
       exam_name,
       subject_name,
       round((sum(q.Marks) / @total_marks_eng * 100), 0) as percentage_score
from pupil_answer pa
         join pupils p on pa.pupil_id = p.pupil_id
         join class c on p.class_id = c.class_id
         join choice co on pa.choice_id = co.choice_id
         join question q on co.question_id = q.question_id
         join exam e on q.exam_id = e.exam_id
         join subject_tbl st on e.subject_code = st.subject_code
 where correct_choice = 'yes'
  and e.exam_id = 2
GROUP BY p.pupil_id
order by percentage_score desc
LIMIT 5;

-- rank from the highest average to the lowest
select full_n(p.first_name, p.last_name)                   as full_name,
       c.class,
       e.exam_name,
       st.subject_name,
       round((sum(q.Marks) / @total_marks_maths * 100), 0) as percentage_score
from pupil_answer pa
         join pupils p on pa.pupil_id = p.pupil_id
         join class c on p.class_id = c.class_id
         join choice co on pa.choice_id = co.choice_id
         join question q on co.question_id = q.question_id
         join exam e on q.exam_id = e.exam_id
         join subject_tbl st on e.subject_code = st.subject_code
where co.correct_choice = 'yes'
  and p.pupil_id = 1
GROUP BY e.exam_id
order by percentage_score desc


--  routine(function)
create function full_n(first_name varchar(50), last_name varchar(50))
    returns varchar(55) DETERMINISTIC
    return concat(first_name, ' ', last_name);

-- order by percentage_score desc
