 --1. ������� ���� ���������� ��� �������� ���� � ����, ������ � ����������.
 
 select employees.employee_name, salary.monthly_salary from employees 
 join employee_salary on employees.id = employee_salary.employee_id 
 join salary on employee_salary.salary_id = salary.id;



--2. ������� ���� ���������� � ������� �� ������ 2000.

select employees.employee_name, salary.monthly_salary from employees 
join employee_salary on employees.id = employee_salary.employee_id 
 join salary on employee_salary.salary_id = salary.id
 where salary.monthly_salary < 2000;


-- 3. ������� ��� ���������� �������, �� �������� �� ��� �� ��������. (�� ����, �� �� ������� ��� � ��������.)

select  employee_salary.employee_id, employee_salary.salary_id, salary.monthly_salary from employee_salary
left join employees on  employees.id =  employee_salary.employee_id
join salary on employee_salary.salary_id = salary.id
where employees.id is null;


-- 4. ������� ��� ���������� �������  ������ 2000 �� �������� �� ��� �� ��������. (�� ����, �� �� ������� ��� � ��������.)

select  employee_salary.employee_id, employee_salary.salary_id, salary.monthly_salary from employee_salary
left join employees on  employees.id =  employee_salary.employee_id
join salary on employee_salary.salary_id = salary.id
where employees.id is null and salary.monthly_salary <2000;


-- 5. ����� ���� ���������� ���� �� ��������� ��.

select employees.id, employees.employee_name from employees 
left join employee_salary on employees.id = employee_salary.employee_id 
where employee_salary.employee_id is null; 

 --6. ������� ���� ���������� � ���������� �� ���������.

select e.employee_name, r.role_name from employees e 
join roles_employee re on re.employee_id = e.id
join roles r on r.id = re.role_id;


 --7. ������� ����� � ��������� ������ Java �������������.

select e.employee_name, r.role_name from employees e 
join roles_employee re on re.employee_id = e.id
join roles r on r.id = re.role_id
where r.role_name like '%Java%';

 --8. ������� ����� � ��������� ������ Python �������������.

select e.employee_name, r.role_name from employees e 
join roles_employee re on re.employee_id = e.id
join roles r on r.id = re.role_id
where r.role_name like '%Python%';


 --9. ������� ����� � ��������� ���� QA ���������.

select e.employee_name, r.role_name from employees e 
join roles_employee re on re.employee_id = e.id
join roles r on r.id = re.role_id
where r.role_name like '%qa%';


 --10. ������� ����� � ��������� ������ QA ���������.

select e.employee_name, r.role_name from employees e 
join roles_employee re on re.employee_id = e.id
join roles r on r.id = re.role_id
where r.role_name like '%manual%';

 --11. ������� ����� � ��������� ��������������� QA

select e.employee_name, r.role_name from employees e 
join roles_employee re on re.employee_id = e.id
join roles r on r.id = re.role_id
where r.role_name like '%Auto%';

 --12. ������� ����� � �������� Junior ������������

select e.employee_name, r.role_name from employees e 
join roles_employee re on re.employee_id = e.id
join roles r on r.id = re.role_id
where r.role_name like '%Junior%';

 --13. ������� ����� � �������� Middle ������������

select e.employee_name, r.role_name from employees e 
join roles_employee re on re.employee_id = e.id
join roles r on r.id = re.role_id
where r.role_name like '%Middle%';

 --14. ������� ����� � �������� Senior ������������

select e.employee_name, r.role_name from employees e 
join roles_employee re on re.employee_id = e.id
join roles r on r.id = re.role_id
where r.role_name like '%Senior%';

 --15. ������� �������� Java �������������

select r.role_name, s.monthly_salary from employees e 
join roles_employee re on re.employee_id = e.id
join roles r on r.id = re.role_id
join employee_salary es on es.employee_id = e.id 
join salary s on s.id = es.salary_id 
where r.role_name like '%Java%';

select * from roles  ;
select * from roles_employee re  ;

 --16. ������� �������� Python �������������

select r.role_name, s.monthly_salary, re.role_id from employees e 
join roles_employee re on re.employee_id = e.id
join roles r on r.id = re.role_id
join employee_salary es on es.employee_id = e.id 
join salary s on s.id = es.salary_id 
where r.role_name like '%Python%';

 --17. ������� ����� � �������� Junior Python �������������

select r.role_name, s.monthly_salary, re.role_id, e.employee_name from employees e 
join roles_employee re on re.employee_id = e.id
join roles r on r.id = re.role_id
join employee_salary es on es.employee_id = e.id 
join salary s on s.id = es.salary_id 
where r.role_name like '%Junior Python%';

 --18. ������� ����� � �������� Middle JS �������������

select r.role_name, s.monthly_salary, re.role_id, e.employee_name from employees e 
join roles_employee re on re.employee_id = e.id
join roles r on r.id = re.role_id
join employee_salary es on es.employee_id = e.id 
join salary s on s.id = es.salary_id 
where r.role_name like '%Middle Javascript%';

 --19. ������� ����� � �������� Senior Java �������������

select r.role_name, s.monthly_salary, re.role_id, e.employee_name from employees e 
join roles_employee re on re.employee_id = e.id
join roles r on r.id = re.role_id
join employee_salary es on es.employee_id = e.id 
join salary s on s.id = es.salary_id 
where r.role_name like '%Senior Java%';

 --20. ������� �������� Junior QA ���������

select r.role_name, s.monthly_salary, re.role_id  from employees e 
join roles_employee re on re.employee_id = e.id
join roles r on r.id = re.role_id
join employee_salary es on es.employee_id = e.id 
join salary s on s.id = es.salary_id 
where r.role_name like '%Junior qa%';

 --21. ������� ������� �������� ���� Junior ������������

select avg (s.monthly_salary)  from employees e 
join roles_employee re on re.employee_id = e.id
join roles r on r.id = re.role_id
join employee_salary es on es.employee_id = e.id 
join salary s on s.id = es.salary_id 
where r.role_name like '%Junior%';

 --22. ������� ����� ������� JS �������������

select sum (s.monthly_salary) from employees e 
join roles_employee re on re.employee_id = e.id
join roles r on r.id = re.role_id
join employee_salary es on es.employee_id = e.id 
join salary s on s.id = es.salary_id 
where r.role_name like '%Java%';

 --23. ������� ����������� �� QA ���������

select min (s.monthly_salary) from employees e 
join roles_employee re on re.employee_id = e.id
join roles r on r.id = re.role_id
join employee_salary es on es.employee_id = e.id 
join salary s on s.id = es.salary_id 
where r.role_name like '%qa%';

 --24. ������� ������������ �� QA ���������

select max (s.monthly_salary) from employees e 
join roles_employee re on re.employee_id = e.id
join roles r on r.id = re.role_id
join employee_salary es on es.employee_id = e.id 
join salary s on s.id = es.salary_id 
where r.role_name like '%qa%';

 --25. ������� ���������� QA ���������

select  count (r.role_name) from employees e 
join roles_employee re on re.employee_id = e.id
join roles r on r.id = re.role_id
where r.role_name like '%qa%';


 --26. ������� ���������� Middle ������������.

select count (r.role_name) from employees e 
join roles_employee re on re.employee_id = e.id
join roles r on r.id = re.role_id
where r.role_name like '%Middle%';


 --27. ������� ���������� �������������

select count (r.role_name) from employees e 
join roles_employee re on re.employee_id = e.id
join roles r on r.id = re.role_id
where r.role_name like '%developer%';

 
 --28. ������� ���� (�����) �������� �������������.

select  sum (s.monthly_salary) from employees e 
join roles_employee re on re.employee_id = e.id
join roles r on r.id = re.role_id
join employee_salary es on es.employee_id = e.id 
join salary s on s.id = es.salary_id 
where r.role_name like '%developer%';

 --29. ������� �����, ��������� � �� ���� ������������ �� �����������

select e.employee_name, r.role_name, s.monthly_salary  from employees e 
join roles_employee re on re.employee_id = e.id
join roles r on r.id = re.role_id
join employee_salary es on es.employee_id = e.id 
join salary s on s.id = es.salary_id 
order by s.monthly_salary asc;

 --30. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� �� 1700 �� 2300

select e.employee_name, r.role_name, s.monthly_salary from employees e 
join roles_employee re on re.employee_id = e.id
join roles r on r.id = re.role_id
join employee_salary es on es.employee_id = e.id 
join salary s on s.id = es.salary_id 
where s.monthly_salary between 1700 and 2300
order by s.monthly_salary asc;

 --31. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� ������ 2300

select e.employee_name, r.role_name, s.monthly_salary  from employees e 
join roles_employee re on re.employee_id = e.id
join roles r on r.id = re.role_id
join employee_salary es on es.employee_id = e.id 
join salary s on s.id = es.salary_id 
where s.monthly_salary < 2300
order by s.monthly_salary asc;

 --32. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� ����� 1100, 1500, 2000

select e.employee_name, r.role_name, s.monthly_salary  from employees e 
join roles_employee re on re.employee_id = e.id
join roles r on r.id = re.role_id
join employee_salary es on es.employee_id = e.id 
join salary s on s.id = es.salary_id 
where s.monthly_salary = 1100 or s.monthly_salary = 1500 or s.monthly_salary = 2000
order by s.monthly_salary asc;



