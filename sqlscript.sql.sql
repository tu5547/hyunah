
REM   Script: Session 03
REM   20

select * from SCOTT.emp;

select * from HR.employees;

select * from SCOTT.dept;

select * from HR.departments;

select employee_id,last_name,salary,salary*commission_pct as "상여",hire_date from HR.employees;

select he.employee_id,he.last_name,he.salary,he.salary*commission_pct as "상여",he.hire_date from HR.employees he;

select department_id, employee_id, last_name, salary, salary*commission_pct as "수당" from HR.employees order by salary desc, department_id asc;

select department_id, employee_id, last_name, salary, salary*commission_pct as "수당" from HR.employees order by department_id asc;

select department_id, employee_id, last_name, salary, salary*commission_pct as "수당" from HR.employees order by department_id asc, salary desc;

select department_id, employee_id, last_name, salary, salary*commission_pct as "수당" from HR.employees order by salary desc, department_id asc;

select distinct job from scott.emp order by job;

select department_id,department_name from hr.departments order by  department_id asc, department_name desc;

select employee_id,first_name,salary from HR.EMPLOYEES where salary>3000;

select ename,deptno from scott.emp where empno='7788';

select ename from scott.emp where deptno=10 and sal>3000;

select deptno,ename,empno,job from scott.emp where job='MANAGER';

select deptno,ename,empno,job from scott.emp where job!='SALESMAN';

select ename,sal from scott.emp where sal>=1500 and sal<=2850;

select ename,sal from scott.emp where sal<=1500 and sal>=2850;

select department_id,employee_id,first_name,salary from hr.employees where salary>=3000 or department_id=10;

select deptno,empno,ename,job from scott.emp where deptno in(10,20);

select deptno,ename from scott.emp where deptno in(10,30) order by ename;

select first_name from hr.employees where first_name like 'A%';

select first_name from hr.employees where first_name like '%A%';

select first_name from hr.employees where first_name like '__A%';

select ename from scott.emp where length(ename) = 5;

select ename from scott.emp where deptno in (10,20);

SELECT ename FROM scott.emp WHERE deptno not in (10,20);

select ename,sal from scott.emp where sal>=1500 and sal<=2850;

select ename,sal from scott.emp where sal<=1500 and sal>=2850;

select ename from scott.emp where comm is null;

select ename from scott.emp where comm is not null;


select last_name,salary,commission_pct,
	case when nvl(commission_pct,0)=0 then salary*0.2          
		  when nvl(commission_pct,0)!=0 then salary+(commission_pct*0.2) end as s
from hr.employees

select employee_id,last_name,hire_date,
(to_number(to_char(sysdate,'yyyy'))- to_number(to_char(hire_date, 'yyyy')))a
from hr.employees
where (to_number(to_char(sysdate,'yyyy'))- to_number(to_char(hire_date, 'yyyy')))>=33;
