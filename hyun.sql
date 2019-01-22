?
--------------------------------------------------------------
03. 전체직원의 모든정보 조회
select * from scott.emp
?
?
04. 전체부서의 모든정보 조회
select * from scott.dept
?
?
05. 전체직원의 사번, 이름, 급여, 상여, 입사일 정보를 조회
select empno,ename,sal,comm,hiredate from scott.emp
?
?
06. 컬럼에 대한 별명 사용해서 조회
-- 출력제목 : Employee No, Name, Salary, COMMISION, Hire Date
?
select empno "Employee No", ename as name,sal as salary,comm as COMMISION,hiredate "Hire date" from scott.emp
?
?
07. 정렬 조회
-- 출력제목 : 부서번호, 사번, 이름, 급여, 수당
-- 정렬기준 : 급여(높은순서), 부서번호(낮은순서)
-- 정렬기준 : 부서번호(낮은순서), 급여(높은순서)
?
select deptno,empno,ename,sal,comm
from scott.emp
order by sal desc, deptno asc
?
?
08. 중복행 제거 조회 : distinct
-- 직원의 직무 종류 조회
-- 정렬기준 : 직무 올림차순
?
select distinct job from scott.emp order by job
?
?
09. 각부서의 해당 부서원의 직무 종류 조회
-- 출력정보 : 부서번호, 직무
-- 정렬기준 : 부서번호 올림, 직무 올림
?
select deptno,job from scott.emp order by deptno,job
?
?
10. 조건 조회
-- 출력정보 : 사번, 이름, 급여
-- 조회조건 : 급여가 3000이상인 직원
?
select empno,ename,sal from scott.emp where sal>=3000
?
?
11. 사원번호가 7788 사원의 이름 및 부서번호를 출력
?
select ename,deptno from scott.emp where empno=7788
?
?
12. 10번 부서원중에서 급여가 3000이상인 직원
?
select ename from scott.emp where deptno = 10 and sal >= 3000
?
?
13. 출력정보 : 부서번호, 사번, 이름, 직무
-- 조회조건 : 직무가 manager 인 직원
?
select deptno,empno,ename,job from scott.emp where job = 'MANAGER'
?
?
14. 출력정보 : 부서번호, 사번, 이름, 직무
-- 조회조건 : 직무가 SALESMAN이 아닌 직원
?
select deptno,empno,ename,job from scott.emp where job != 'SALESMAN'
?
?
15. 급여가 1500이상 ~ 2850이하의 범위에 속하는 사원의 이름 및 급여를 조회
?
select ename,sal from scott.emp where sal>=1500 and sal<=2850
?
?
16. 급여가 1500이상 ~ 2850이하의 범위에 속하지 않는 사원의 이름 및 급여를 조회
?
select ename,sal from scott.emp where sal<1500 or sal>2850
?
?
17. 출력정보 : 부서번호, 사번, 이름, 급여
-- 조회조건 : 급여가 3000이상이거나, 부서번호 10인 직원
?
select deptno,empno,ename,sal from scott.emp where sal>=3000 or deptno=10
?
?
18. 출력정보 : 부서번호, 사번, 이름, 직무
-- 조회조건 : 부서번호가 10, 20 부서원 조회
?
select deptno,empno,ename,job from scott.emp where deptno in (10,20)
?
?
19. 10번 및 30번 부서에 속하는 모든 사원의 이름과 부서 번호를 조회하라.
-- 단, 이름을 알파벳순으로 정렬하여 출력하라.
?
-- 1) 컬럼명 정렬 조회
select ename,deptno from scott.emp where deptno in (10,30) order by ename
?
-- 2) alias(별명) 정렬 조회
select A * from (select ename,deptno from  scott.emp where deptno in (10,30))A order by A.ename
?
-- 3) 조회 컬럼명에 대한 인덱스번호로  정렬 조회
select  ename,deptno from scott.emp where deptno in (10,30) order by 1
?
?
-- ## SQL 비교연산자 조건 검색
?
20. 사원 이름이 A로 시작 하는 직원 검색
select ename from scott.emp where enme like 'A%'
?
21. 사원 이름에 A가 들어가는 직원 검색
select ename from scott.emp where enme like '%A%'
?
22. 사원이름의 3번째 문자가 A인 직원 검색
select ename from scott.emp where enme like '_A%'
?
23. 이름 5글자인 직원의 정보를 조회
select * from scott.emp where length(ename) =5
?
24. 부서가 10번, 20번 직원 검색
select ename from scott.emp where deptno in (10,20)
?
25. 부서가 10번, 20번이 아닌 직원 검색
select ename from scott.emp where deptno not in (10,20)
?
26. 급여가 1500이상 ~ 2850이하의 범위에 속하는 사원의 이름 및 급여를 조회
select ename,sal from scott.emp where sal>=1500 and sal<=2850
?
27. 급여가 1500이상 ~ 2850이하의 범위에 속하지 않는 사원의 이름 및 급여를 조회
select ename,sal from scott.emp where sal<1500 or sal>2850
?
28. 수당이 없는 직원 검색
select ename from scott.emp where comm is null
?
29. 수당이 있는 직원 검색
select ename from scott.emp where comm is not null
?
?
-- 30. 직원 특별상여 = 급여 + 수당 * 20%
-- 수당이 있는 직원은 급여 + 수당 * 0.2 특별 상여
-- 수당이 없는 직원은 급여 * 0.2 특별 상여
-- 이름 , 급여, 수당, 특별상여 정보 출력
?
-- 1) 수당이 있는 직원 정보 : 0원 이상인 사람
-- 2) 수당이 없는 직원 정보
-- 3) 모든 사원에게 특별상여 지급
?
select last_name,salary,commission_pct,
	case when nvl(commission_pct,0)=0 then salary*0.2          
		  when nvl(commission_pct,0)!=0 then salary+(commission_pct*0.2) end as s
from hr.employees
?
-- 31. 사번이 000인 직원의 이름은 000이다
?
32. 근무기간에 따른 사원들에 대한 교육을 진행하기로 하였다.
-- 직원들의 사번, 이름, 입사일, 근무기간(년수, 년이하버림)의 정보를
-- 근무기간이 작은 순서데로 조회하여라.
-- 근무기간 = 현재날짜 - 입사날짜
-- 근무년수가 33년 이상인 직원의 명단을 출력
?
?
select deptno,ename,hiredate,trunc((sysdate-hiredate)/365) as T
from scott.emp
where trunc((sysdate-hiredate)/365) >= 33 order by T?
