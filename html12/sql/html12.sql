drop table dept12;
drop table emp12;
create table dept12 as (select * from dept where deptno<50);
create table emp12 as (select empno,ename,hiredate,sal from emp);

select * from dept12;
select * from emp12;