?
--------------------------------------------------------------
03. ��ü������ ������� ��ȸ
select * from scott.emp
?
?
04. ��ü�μ��� ������� ��ȸ
select * from scott.dept
?
?
05. ��ü������ ���, �̸�, �޿�, ��, �Ի��� ������ ��ȸ
select empno,ename,sal,comm,hiredate from scott.emp
?
?
06. �÷��� ���� ���� ����ؼ� ��ȸ
-- ������� : Employee No, Name, Salary, COMMISION, Hire Date
?
select empno "Employee No", ename as name,sal as salary,comm as COMMISION,hiredate "Hire date" from scott.emp
?
?
07. ���� ��ȸ
-- ������� : �μ���ȣ, ���, �̸�, �޿�, ����
-- ���ı��� : �޿�(��������), �μ���ȣ(��������)
-- ���ı��� : �μ���ȣ(��������), �޿�(��������)
?
select deptno,empno,ename,sal,comm
from scott.emp
order by sal desc, deptno asc
?
?
08. �ߺ��� ���� ��ȸ : distinct
-- ������ ���� ���� ��ȸ
-- ���ı��� : ���� �ø�����
?
select distinct job from scott.emp order by job
?
?
09. ���μ��� �ش� �μ����� ���� ���� ��ȸ
-- ������� : �μ���ȣ, ����
-- ���ı��� : �μ���ȣ �ø�, ���� �ø�
?
select deptno,job from scott.emp order by deptno,job
?
?
10. ���� ��ȸ
-- ������� : ���, �̸�, �޿�
-- ��ȸ���� : �޿��� 3000�̻��� ����
?
select empno,ename,sal from scott.emp where sal>=3000
?
?
11. �����ȣ�� 7788 ����� �̸� �� �μ���ȣ�� ���
?
select ename,deptno from scott.emp where empno=7788
?
?
12. 10�� �μ����߿��� �޿��� 3000�̻��� ����
?
select ename from scott.emp where deptno = 10 and sal >= 3000
?
?
13. ������� : �μ���ȣ, ���, �̸�, ����
-- ��ȸ���� : ������ manager �� ����
?
select deptno,empno,ename,job from scott.emp where job = 'MANAGER'
?
?
14. ������� : �μ���ȣ, ���, �̸�, ����
-- ��ȸ���� : ������ SALESMAN�� �ƴ� ����
?
select deptno,empno,ename,job from scott.emp where job != 'SALESMAN'
?
?
15. �޿��� 1500�̻� ~ 2850������ ������ ���ϴ� ����� �̸� �� �޿��� ��ȸ
?
select ename,sal from scott.emp where sal>=1500 and sal<=2850
?
?
16. �޿��� 1500�̻� ~ 2850������ ������ ������ �ʴ� ����� �̸� �� �޿��� ��ȸ
?
select ename,sal from scott.emp where sal<1500 or sal>2850
?
?
17. ������� : �μ���ȣ, ���, �̸�, �޿�
-- ��ȸ���� : �޿��� 3000�̻��̰ų�, �μ���ȣ 10�� ����
?
select deptno,empno,ename,sal from scott.emp where sal>=3000 or deptno=10
?
?
18. ������� : �μ���ȣ, ���, �̸�, ����
-- ��ȸ���� : �μ���ȣ�� 10, 20 �μ��� ��ȸ
?
select deptno,empno,ename,job from scott.emp where deptno in (10,20)
?
?
19. 10�� �� 30�� �μ��� ���ϴ� ��� ����� �̸��� �μ� ��ȣ�� ��ȸ�϶�.
-- ��, �̸��� ���ĺ������� �����Ͽ� ����϶�.
?
-- 1) �÷��� ���� ��ȸ
select ename,deptno from scott.emp where deptno in (10,30) order by ename
?
-- 2) alias(����) ���� ��ȸ
select A * from (select ename,deptno from  scott.emp where deptno in (10,30))A order by A.ename
?
-- 3) ��ȸ �÷��� ���� �ε�����ȣ��  ���� ��ȸ
select  ename,deptno from scott.emp where deptno in (10,30) order by 1
?
?
-- ## SQL �񱳿����� ���� �˻�
?
20. ��� �̸��� A�� ���� �ϴ� ���� �˻�
select ename from scott.emp where enme like 'A%'
?
21. ��� �̸��� A�� ���� ���� �˻�
select ename from scott.emp where enme like '%A%'
?
22. ����̸��� 3��° ���ڰ� A�� ���� �˻�
select ename from scott.emp where enme like '_A%'
?
23. �̸� 5������ ������ ������ ��ȸ
select * from scott.emp where length(ename) =5
?
24. �μ��� 10��, 20�� ���� �˻�
select ename from scott.emp where deptno in (10,20)
?
25. �μ��� 10��, 20���� �ƴ� ���� �˻�
select ename from scott.emp where deptno not in (10,20)
?
26. �޿��� 1500�̻� ~ 2850������ ������ ���ϴ� ����� �̸� �� �޿��� ��ȸ
select ename,sal from scott.emp where sal>=1500 and sal<=2850
?
27. �޿��� 1500�̻� ~ 2850������ ������ ������ �ʴ� ����� �̸� �� �޿��� ��ȸ
select ename,sal from scott.emp where sal<1500 or sal>2850
?
28. ������ ���� ���� �˻�
select ename from scott.emp where comm is null
?
29. ������ �ִ� ���� �˻�
select ename from scott.emp where comm is not null
?
?
-- 30. ���� Ư���� = �޿� + ���� * 20%
-- ������ �ִ� ������ �޿� + ���� * 0.2 Ư�� ��
-- ������ ���� ������ �޿� * 0.2 Ư�� ��
-- �̸� , �޿�, ����, Ư���� ���� ���
?
-- 1) ������ �ִ� ���� ���� : 0�� �̻��� ���
-- 2) ������ ���� ���� ����
-- 3) ��� ������� Ư���� ����
?
select last_name,salary,commission_pct,
	case when nvl(commission_pct,0)=0 then salary*0.2          
		  when nvl(commission_pct,0)!=0 then salary+(commission_pct*0.2) end as s
from hr.employees
?
-- 31. ����� 000�� ������ �̸��� 000�̴�
?
32. �ٹ��Ⱓ�� ���� ����鿡 ���� ������ �����ϱ�� �Ͽ���.
-- �������� ���, �̸�, �Ի���, �ٹ��Ⱓ(���, �����Ϲ���)�� ������
-- �ٹ��Ⱓ�� ���� �������� ��ȸ�Ͽ���.
-- �ٹ��Ⱓ = ���糯¥ - �Ի糯¥
-- �ٹ������ 33�� �̻��� ������ ����� ���
?
?
select deptno,ename,hiredate,trunc((sysdate-hiredate)/365) as T
from scott.emp
where trunc((sysdate-hiredate)/365) >= 33 order by T?
