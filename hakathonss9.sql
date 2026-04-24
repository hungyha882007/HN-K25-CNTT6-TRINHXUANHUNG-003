-- 1 tạo database
CREATE DATABASE hakathonss9;
USE hakathonss9;
-- 2 tạo table 

-- table Deparment 
CREATE TABLE Deparment (
deparment_id varchar(10) primary key ,
deparment_name varchar(100) not null unique ,
location varchar(255) not null 
);
-- table Employee
CREATE TABLE Employee (
employee_id varchar(10) primary key ,
full_name varchar (100) not null,
emaill varchar (100) not null unique ,
phone_number varchar(15) not null unique ,
hire_date date not null ,
deparment_id varchar (10),
foreign key (deparment_id) references Deparment (deparment_id)
);
-- table Project 
CREATE TABLE Project(
project_id int primary key auto_increment,
project_name varchar(150) not null ,
budget decimal(10,2) ,
project_status varchar (50)  
);
-- table Assignment 
CREATE TABLE Assignment (
assignment_id int primary key auto_increment,
employee_id varchar (10) ,
project_id int ,
assignment_role varchar (50) not null ,
bonus_amount decimal (10,2),
foreign key(employee_id) references Employee(employee_id) ,
foreign key(project_id) references Project (project_id) 
);

-- chèn dữ liệu 
INSERT INTO Deparment(deparment_id,deparment_name,location ) value 
('D001' , 'Information Technology ', 'Floor 4, Building A') ,
('D002' , 'Human Resourcesy ', 'Floor 2, Building B'),
('D003' , 'Finance & Accounting ', 'Floor 3, Building A'),
('D004' , 'Marketing & Sales ', 'Floor 5, Building C'),
('D005' , 'Research & Development ', 'Floor 6, Building D');
INSERT INTO Employee(employee_id,full_name,emaill ,phone_number ,hire_date,deparment_id) value 
('E001','Nguyen Minh Anh','anh.nm@company.com','0912345678','2022-01-15','D001'),
('E002','Tran Thi Thanh','thanh.tt@company.com','0923456789','2021-05-20','D002'),
('E003','Pham Hoang Nam','nam.ph@company.com','0934567890','2023-03-10','D001'),
('E004','Le Thu Thao','thao.lt@company.com','0945678901 ','2020-11-25','D003'),
('E005','Vu Duc Cuong','cuong.vd@company.com','0956789012','2024-02-01','D005');
INSERT INTO Project(project_id,project_name ,budget ,project_status ) value 
('1' , 'ERP System Upgrade', '500000.00' , 'Active'),
('2' , 'Mobile App Launch', '250000.00' , 'Pending'),
('3' , 'Annual Financial Audit', '100000.00' , 'Completed'),
('4' , 'Market Expansion Asia', '800000.00' , 'Active'),
('5' , 'AI Research Pilot', '150000.00' , 'Pending');
INSERT INTO Assignment(assignment_id,employee_id ,project_id ,assignment_role ,bonus_amount ) value 
('1' , 'E001' , '1' , 'Manager' , '2000.00'),
('2' , 'E003' , '1' , 'Developer' , '1700.00'),
('3' , 'E002' , '4' , 'Developer' , '1500.00'),
('4' , 'E004' , '5' , 'Tester' , '1300.00'),
('5' , 'E001' , '3' , 'Tester' , '1000.00');
-- câu 3 
update Deparment 
set location = 'Landmark Tower, HCM City '
where  department_id = 'D003' ; 
-- câu 4 
update Project 
set budget = budget*1.2
where project_id = '1' ;
-- câu 5
delete from Assignment 
where project_status = 'Complete' 
and bonus_amount < 1200; 
-- câu 6 
select  project_id,project_name
FROM Project
where project_status = 'Active' 
and budget > 300.000;
-- câu 7 
select full_name , email, phone_number 
from Employee 
where  full_name like 'Anh%' ;
-- câu 8 
select employee_id , full_name , hire_date 
from Employee
order by hire_date DESC ;
-- câu 9 
select *
from Employee 
order by hire_date ASC 
limit 3 ;
-- câu 10 
select employee_id , full_name
from Employee 
limit 2 offset 2 ; 
-- câu 11 









