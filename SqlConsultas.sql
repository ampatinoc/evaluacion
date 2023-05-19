/* Priemra Consulta*/
 
select emp_no,first_name, last_name,gender,hire_date from employees where hire_date >= '2000-01-01' and gender = 'F';


/* Segunda Consulta*/
select employees.emp_no, employees.first_name,employees.last_name, max(salaries.salary)from employees, salaries where employees.emp_no = salaries.emp_no;


/* Tercera consulta */
select employees.emp_no, employees.first_name,employees.last_name, avg(salaries.salary) from employees,salaries where employees.emp_no = '10056' and salaries.emp_no = '10056';

/* Cuarta Consulta */
select employees.emp_no, employees.first_name,employees.last_name,employees.gender, employees.birth_date,departments.dept_name from employees, dept_emp, departments, dept_manager where employees.emp_no = dept_emp.emp_no and departments.dept_no=dept_emp.dept_no and dept_manager.dept_no = departments.dept_no and employees.emp_no = dept_manager.emp_no;



/* Quinta Consulta */
select employees.emp_no, employees.first_name,employees.last_name, employees.birth_date,employees.hire_date,titles.title,salaries.salary from employees, titles,salaries, departments, dept_emp where employees.emp_no= titles.emp_no and  employees.emp_no = salaries.emp_no and departments.dept_no= dept_emp.emp_no;
