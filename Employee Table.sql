-- ******EMPLOYEE TABLE STUFF*******
-- Create an Employee table
CREATE TABLE LISA_EmployeeData
( --Declare Employee table variables
  employee_ID               NUMBER(3)  NOT NULL,  
  employee_Name_First       VARCHAR2(20) NOT NULL,      
  employee_Name_Last        VARCHAR2(20) NOT NULL,      
  employee_Name_Middle      VARCHAR2(20) NOT NULL,      
  employee_Phone            VARCHAR2(20) NOT NULL,      
  employee_Email            VARCHAR2(30) NOT NULL,      
  emplyee_Street            VARCHAR2(25) NOT NULL,      
  employee_City             VARCHAR2(20) NOT NULL,      
  employee_State            VARCHAR2(2) NOT NULL,     
  employee_Zip              NUMBER(15) NOT NULL,      
  employee_Social           NUMBER(10) NOT NULL,      
  employee_Salary           NUMBER(10,2),
  --employee_HireDate         DATE NOT NULL,
  employee_HireDate         VARCHAR(25) NOT NULL,     
  employee_Department       NUMBER(2,0) NOT NULL,                                  
  employee_Status           NUMBER(2) NOT NULL,  
  
  -- Set the primary key for the employee table as the employee_ID variable
  CONSTRAINT employee_pk PRIMARY KEY  (employee_ID),       
  -- Constraints for table variables
  CONSTRAINT check_employee_Department
             CHECK (employee_Department BETWEEN 1 and 3),
  CONSTRAINT check_employee_Status                         
             CHECK (employee_Status BETWEEN 1 and 3)
  -- End of variable constraints
)   -- End of Employee table variable declaration  
TABLESPACE user_data    -- Code taken from objects.sql
  PCTFREE 10 
  PCTUSED 40 
  INITRANS 1 
  MAXTRANS 255 
  STORAGE 
  (
    INITIAL 10240 
    NEXT 10240 
    MINEXTENTS 1 
    MAXEXTENTS 121 
    PCTINCREASE 50 
    FREELISTS 1 
    FREELIST GROUPS 1
  );
-- Populate the employee table
-- This code was generated from a.csv file via the PL/SQL Developer text importer tool
insert into sysdba.LISA_EmployeeData (employee_id, employee_name_first, employee_name_last, employee_name_middle, employee_phone, employee_email, emplyee_street, employee_city, employee_state,
   employee_zip, employee_social, employee_salary, employee_hiredate, employee_department, employee_status)
values (1, 'Alfred', 'Alex', 'A', '11111111', 'Alex1111@email.com', 'AAA ave.', 'ATown', 'AA', 11111, 111111111, NULL, 'Jan 1 2018', 1, 1);

insert into sysdba.lisa_employeedata (employee_id, employee_name_first, employee_name_last, employee_name_middle, employee_phone, employee_email, emplyee_street, employee_city, employee_state,
   employee_zip, employee_social, employee_salary, employee_hiredate, employee_department, employee_status)
values (2, 'Beth', 'Bradley', 'B', '22222222', 'Bradley2222@email.com', 'BBB blvd.', 'BTown', 'BB', 22222, 222222222, 222.22, 'Feb 2 2018', 2, 2);

insert into sysdba.lisa_employeedata (employee_id, employee_name_first, employee_name_last, employee_name_middle, employee_phone, employee_email, emplyee_street, employee_city, employee_state,
   employee_zip, employee_social, employee_salary, employee_hiredate, employee_department, employee_status)
values (3, 'Calvin', 'Claire', 'C', '333333333', 'Claire3333@email.com', 'CCC crcl.', 'CCity', 'CC', 33333, 333333333, 333.33, 'March 3 2018', 3, 3);

insert into sysdba.lisa_employeedata (employee_id, employee_name_first, employee_name_last, employee_name_middle, employee_phone, employee_email, emplyee_street, employee_city, employee_state,
   employee_zip, employee_social, employee_salary, employee_hiredate, employee_department, employee_status)
values (4, 'Dan', 'David', 'D', '44444444', 'David4444@email.com', 'DDD dr.', 'DTown', 'DD', 44444, 444444444, NULL, 'April 4 2018', 1, 4);

insert into sysdba.lisa_employeedata (employee_id, employee_name_first, employee_name_last, employee_name_middle, employee_phone, employee_email, emplyee_street, employee_city, employee_state,
   employee_zip, employee_social, employee_salary, employee_hiredate, employee_department, employee_status)
values (5, 'Erin', 'Edwards', 'E', '5555555', 'Edwards5555@email.com', 'EEE ave.', 'ECity', 'EE', 55555, 555555555, 5555.55, 'May 5 2018', 2, 3);

insert into sysdba.lisa_employeedata (employee_id, employee_name_first, employee_name_last, employee_name_middle, employee_phone, employee_email, emplyee_street, employee_city, employee_state,
   employee_zip, employee_social, employee_salary, employee_hiredate, employee_department, employee_status)
values (6, 'Fred', 'Frank', 'F', '6666666', 'Frank6666@email.com', 'FFF blvd.', 'FTown', 'FF', 666666, 666666666, 666.66, 'June 6 2018', 3, 1);

insert into sysdba.lisa_employeedata (employee_id, employee_name_first, employee_name_last, employee_name_middle, employee_phone, employee_email, emplyee_street, employee_city, employee_state,
   employee_zip, employee_social, employee_salary, employee_hiredate, employee_department, employee_status)
values (7, 'Greg', 'Guss', 'G', '77777777', 'Guss7777@email.com', 'GGG crcl.', 'GCity', 'GG', 77777, 777777777, 777.77, 'July 7 2018', 2, 1);

insert into sysdba.lisa_employeedata (employee_id, employee_name_first, employee_name_last, employee_name_middle, employee_phone, employee_email, emplyee_street, employee_city, employee_state,
   employee_zip, employee_social, employee_salary, employee_hiredate, employee_department, employee_status)
values (8, 'Henry', 'Harris', 'Hal', '8888888', 'Harris8888@email.com', 'HHH dr.', 'HTown', 'HH', 88888, 888888888, 000.00, 'August 8 2018', 1, 3);

insert into sysdba.lisa_employeedata (employee_id, employee_name_first, employee_name_last, employee_name_middle, employee_phone, employee_email, emplyee_street, employee_city, employee_state,
   employee_zip, employee_social, employee_salary, employee_hiredate, employee_department, employee_status)
values (9, 'Ian', 'Issac', 'I', '9999999', 'Issac9999@email.com', 'III ave.', 'Ivile', 'II', 9999999, 999999999, 999.99, 'September 9 2018', 3, 2);

insert into sysdba.lisa_employeedata (employee_id, employee_name_first, employee_name_last, employee_name_middle, employee_phone, employee_email, emplyee_street, employee_city, employee_state,
   employee_zip, employee_social, employee_salary, employee_hiredate, employee_department, employee_status)
values (10, 'Jeff', 'John', 'J', '0000000', 'John0000@email.com', 'JJJ blvd.', 'JCity', 'JJ', 00000, 000000000, 1010.10, 'October 10 2018', 3, 1);

commit;
-- End of employee table population
-- ****** END OF EMPLOYEE TABLE STUFF *******
