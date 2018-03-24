-- list students in a radiation class
select s.studentname, c.classname, t.teachername, cs.fromdate, cs.todate, se.enrolldate  from classes c
join classschedules cs on cs.classid = c.id
join studentenrollments se on se.classscheduleid = cs.id
join teachers t on t.id = cs.teacherid
join students s on s.id = se.studentid
where classname like '%Radiation%'

