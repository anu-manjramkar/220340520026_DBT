create table DEPT
(
deptno int(2),
dname varchar(15),
loc varchar(10)
);
insert into DEPT values
(10,'ACCOUNTING','NEW YORK'),
(20,'RESEARCH','DALLAS'),
(30,'SALES','CHICAGO'),
(40,'OPERATIONS','BOSTON');

create table EMP 
(
empno int(4),
ename varchar(10),
job varchar(9),
hiredate date,
sal float(7,2),
comm float(7,2),
deptno int(2)
);

insert into EMP values 
(7839,'KING','MANAGER','1991-11-17',5000,NULL,10),
(7698,'BLAKE','CLERK','1981-05-01',2850,NULL,30),
(7782,'CLARK','MANAGER','1981-06-09',2450,NULL,10),
(7566,'JONES','CLERK','1981-04-02',2975,NULL,20),
(7654,'MARTIN','SALESMAN','1981-09-28',1250,1400,30),
(7499,'ALLEN','SALESMAN','1981-02-20',1600,300,30);

select * from emp 
where sal between 2500 and 5000;

select ename from emp 
order by ename desc;

select lower(job) from emp;

select ename,length(ename) as "Length of EName" from emp;

select deptno,count(deptno) as "No of Employees in Department" from emp
group by deptno;

select dname "DNAME",ename "ENAME" from emp,dept
where emp.deptno=dept.deptno;

select instr(ename,'AR') "Position of AR in ENAME" from emp;

select sal*0.2 as "HRA" from emp;