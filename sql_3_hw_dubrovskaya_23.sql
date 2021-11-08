 --1. Вывести всех работников чьи зарплаты есть в базе, вместе с зарплатами.
 
 select employees.employee_name, salary.monthly_salary from employees 
 join employee_salary on employees.id = employee_salary.employee_id 
 join salary on employee_salary.salary_id = salary.id;



--2. Вывести всех работников у которых ЗП меньше 2000.

select employees.employee_name, salary.monthly_salary from employees 
join employee_salary on employees.id = employee_salary.employee_id 
 join salary on employee_salary.salary_id = salary.id
 where salary.monthly_salary < 2000;


-- 3. Вывести все зарплатные позиции, но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)

select  employee_salary.employee_id, employee_salary.salary_id, salary.monthly_salary from employee_salary
left join employees on  employees.id =  employee_salary.employee_id
join salary on employee_salary.salary_id = salary.id
where employees.id is null;


-- 4. Вывести все зарплатные позиции  меньше 2000 но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)

select  employee_salary.employee_id, employee_salary.salary_id, salary.monthly_salary from employee_salary
left join employees on  employees.id =  employee_salary.employee_id
join salary on employee_salary.salary_id = salary.id
where employees.id is null and salary.monthly_salary <2000;


-- 5. Найти всех работников кому не начислена ЗП.

select employees.id, employees.employee_name from employees 
left join employee_salary on employees.id = employee_salary.employee_id 
where employee_salary.employee_id is null; 

 --6. Вывести всех работников с названиями их должности.

select e.employee_name, r.role_name from employees e 
join roles_employee re on re.employee_id = e.id
join roles r on r.id = re.role_id;


 --7. Вывести имена и должность только Java разработчиков.

select e.employee_name, r.role_name from employees e 
join roles_employee re on re.employee_id = e.id
join roles r on r.id = re.role_id
where r.role_name like '%Java%';

 --8. Вывести имена и должность только Python разработчиков.

select e.employee_name, r.role_name from employees e 
join roles_employee re on re.employee_id = e.id
join roles r on r.id = re.role_id
where r.role_name like '%Python%';


 --9. Вывести имена и должность всех QA инженеров.

select e.employee_name, r.role_name from employees e 
join roles_employee re on re.employee_id = e.id
join roles r on r.id = re.role_id
where r.role_name like '%qa%';


 --10. Вывести имена и должность ручных QA инженеров.

select e.employee_name, r.role_name from employees e 
join roles_employee re on re.employee_id = e.id
join roles r on r.id = re.role_id
where r.role_name like '%manual%';

 --11. Вывести имена и должность автоматизаторов QA

select e.employee_name, r.role_name from employees e 
join roles_employee re on re.employee_id = e.id
join roles r on r.id = re.role_id
where r.role_name like '%Auto%';

 --12. Вывести имена и зарплаты Junior специалистов

select e.employee_name, r.role_name from employees e 
join roles_employee re on re.employee_id = e.id
join roles r on r.id = re.role_id
where r.role_name like '%Junior%';

 --13. Вывести имена и зарплаты Middle специалистов

select e.employee_name, r.role_name from employees e 
join roles_employee re on re.employee_id = e.id
join roles r on r.id = re.role_id
where r.role_name like '%Middle%';

 --14. Вывести имена и зарплаты Senior специалистов

select e.employee_name, r.role_name from employees e 
join roles_employee re on re.employee_id = e.id
join roles r on r.id = re.role_id
where r.role_name like '%Senior%';

 --15. Вывести зарплаты Java разработчиков

select r.role_name, s.monthly_salary from employees e 
join roles_employee re on re.employee_id = e.id
join roles r on r.id = re.role_id
join employee_salary es on es.employee_id = e.id 
join salary s on s.id = es.salary_id 
where r.role_name like '%Java%';

select * from roles  ;
select * from roles_employee re  ;

 --16. Вывести зарплаты Python разработчиков

select r.role_name, s.monthly_salary, re.role_id from employees e 
join roles_employee re on re.employee_id = e.id
join roles r on r.id = re.role_id
join employee_salary es on es.employee_id = e.id 
join salary s on s.id = es.salary_id 
where r.role_name like '%Python%';

 --17. Вывести имена и зарплаты Junior Python разработчиков

select r.role_name, s.monthly_salary, re.role_id, e.employee_name from employees e 
join roles_employee re on re.employee_id = e.id
join roles r on r.id = re.role_id
join employee_salary es on es.employee_id = e.id 
join salary s on s.id = es.salary_id 
where r.role_name like '%Junior Python%';

 --18. Вывести имена и зарплаты Middle JS разработчиков

select r.role_name, s.monthly_salary, re.role_id, e.employee_name from employees e 
join roles_employee re on re.employee_id = e.id
join roles r on r.id = re.role_id
join employee_salary es on es.employee_id = e.id 
join salary s on s.id = es.salary_id 
where r.role_name like '%Middle Javascript%';

 --19. Вывести имена и зарплаты Senior Java разработчиков

select r.role_name, s.monthly_salary, re.role_id, e.employee_name from employees e 
join roles_employee re on re.employee_id = e.id
join roles r on r.id = re.role_id
join employee_salary es on es.employee_id = e.id 
join salary s on s.id = es.salary_id 
where r.role_name like '%Senior Java%';

 --20. Вывести зарплаты Junior QA инженеров

select r.role_name, s.monthly_salary, re.role_id  from employees e 
join roles_employee re on re.employee_id = e.id
join roles r on r.id = re.role_id
join employee_salary es on es.employee_id = e.id 
join salary s on s.id = es.salary_id 
where r.role_name like '%Junior qa%';

 --21. Вывести среднюю зарплату всех Junior специалистов

select avg (s.monthly_salary)  from employees e 
join roles_employee re on re.employee_id = e.id
join roles r on r.id = re.role_id
join employee_salary es on es.employee_id = e.id 
join salary s on s.id = es.salary_id 
where r.role_name like '%Junior%';

 --22. Вывести сумму зарплат JS разработчиков

select sum (s.monthly_salary) from employees e 
join roles_employee re on re.employee_id = e.id
join roles r on r.id = re.role_id
join employee_salary es on es.employee_id = e.id 
join salary s on s.id = es.salary_id 
where r.role_name like '%Java%';

 --23. Вывести минимальную ЗП QA инженеров

select min (s.monthly_salary) from employees e 
join roles_employee re on re.employee_id = e.id
join roles r on r.id = re.role_id
join employee_salary es on es.employee_id = e.id 
join salary s on s.id = es.salary_id 
where r.role_name like '%qa%';

 --24. Вывести максимальную ЗП QA инженеров

select max (s.monthly_salary) from employees e 
join roles_employee re on re.employee_id = e.id
join roles r on r.id = re.role_id
join employee_salary es on es.employee_id = e.id 
join salary s on s.id = es.salary_id 
where r.role_name like '%qa%';

 --25. Вывести количество QA инженеров

select  count (r.role_name) from employees e 
join roles_employee re on re.employee_id = e.id
join roles r on r.id = re.role_id
where r.role_name like '%qa%';


 --26. Вывести количество Middle специалистов.

select count (r.role_name) from employees e 
join roles_employee re on re.employee_id = e.id
join roles r on r.id = re.role_id
where r.role_name like '%Middle%';


 --27. Вывести количество разработчиков

select count (r.role_name) from employees e 
join roles_employee re on re.employee_id = e.id
join roles r on r.id = re.role_id
where r.role_name like '%developer%';

 
 --28. Вывести фонд (сумму) зарплаты разработчиков.

select  sum (s.monthly_salary) from employees e 
join roles_employee re on re.employee_id = e.id
join roles r on r.id = re.role_id
join employee_salary es on es.employee_id = e.id 
join salary s on s.id = es.salary_id 
where r.role_name like '%developer%';

 --29. Вывести имена, должности и ЗП всех специалистов по возрастанию

select e.employee_name, r.role_name, s.monthly_salary  from employees e 
join roles_employee re on re.employee_id = e.id
join roles r on r.id = re.role_id
join employee_salary es on es.employee_id = e.id 
join salary s on s.id = es.salary_id 
order by s.monthly_salary asc;

 --30. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП от 1700 до 2300

select e.employee_name, r.role_name, s.monthly_salary from employees e 
join roles_employee re on re.employee_id = e.id
join roles r on r.id = re.role_id
join employee_salary es on es.employee_id = e.id 
join salary s on s.id = es.salary_id 
where s.monthly_salary between 1700 and 2300
order by s.monthly_salary asc;

 --31. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП меньше 2300

select e.employee_name, r.role_name, s.monthly_salary  from employees e 
join roles_employee re on re.employee_id = e.id
join roles r on r.id = re.role_id
join employee_salary es on es.employee_id = e.id 
join salary s on s.id = es.salary_id 
where s.monthly_salary < 2300
order by s.monthly_salary asc;

 --32. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП равна 1100, 1500, 2000

select e.employee_name, r.role_name, s.monthly_salary  from employees e 
join roles_employee re on re.employee_id = e.id
join roles r on r.id = re.role_id
join employee_salary es on es.employee_id = e.id 
join salary s on s.id = es.salary_id 
where s.monthly_salary = 1100 or s.monthly_salary = 1500 or s.monthly_salary = 2000
order by s.monthly_salary asc;



