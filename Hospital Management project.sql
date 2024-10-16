

     1. Display the doctor_name column in ASC order??
	
		 select doctor_name from doctors 
         order by doctor_name asc;
		
     2. Display the salary column in DESC order??

         select salary from doctors
         order by salary desc;
		 
	 3. Write a SQL query to join both the tables using inner join?
	     
		 select
            e.doctor_name,
            e.doctorid,
            e.speciality,
            d.patientid
          from doctors e
          inner join patients d
          ON e.doctorid = d.doctorid;
	 
	 
	 
	 4. Write a SQL query to join both the tables using right join?
	 
	       select
            e.doctor_name,
            e.doctorid,
            e.speciality,
            d.patientid
          from doctors e
          right join patients d
          ON e.doctorid = d.doctorid;
	 
	 5. Write a SQL query to join both the tables using left join?
	 
	         select
            e.doctor_name,
            e.doctorid,
            e.speciality,
            d.patientid
          from doctors e
          left join patients d
          ON e.doctorid = d.doctorid;
		  
		  
	 6. Write a SQL query to join both the tables using outer join?
	 
	       select
            e.doctor_name,
            e.doctorid,
            e.speciality,
            d.patientid
          from doctors e
          full outer join patients d
          ON e.doctorid = d.doctorid;
	
	 7.  Write an sql query to find nth highest salary in doctors table
		 
	      SELECT * FROM (
          SELECT doctor_name,doctorid,salary,rank() over (order by salary asc) as ranks from doctors)
		  where ranks = 3;
		  
		  
	 8.  Write an sql query to find odd and even rows of doctorid in doctors table??
		 
	      select * from doctors where mod(doctorid,2) = 0;  ---even
		  
		  select * from doctors where mod(doctorid,2) = 0;  ---odd
		 
		 
     9. Display all the contents in doctors table ??
        
		select * from doctors;

    10. Display the data stucture of doctors table ??
       
		desc doctors;

     11. Count the number of male and female present in doctor_gender column
        
	    SELECT doctor_gender, COUNT(*) AS total_count
        FROM doctors
        GROUP BY doctor_gender;

     12. Calculate the total rows count in doctors table ??
        
		select count(*) as total_count
        from doctors;
		
     13. Display the salary column from doctors table without duplicates
	 
        select distinct salary from doctors
        order by salary asc;

     14. Select the doctorid, doctor_name, speciality of doctors with gender female
        
		select doctorid, doctor_name, speciality from doctors
        where doctors_gender = 'f';

     15. List the salary from doctors table which are greater than 100000
         select salary from doctors
         where salary > 100000;

     16. Select the doctorid, doctor_name of those whose speciality is cardiology, neurology, pediatrics ??
	 
         select doctorid, doctor_name from doctors
         where speciality IN ('cardiology', 'neurology', 'pediatrics');

     17. Count of female and male doctors having salary less than 1 lakh
         
		 select doctor_gender, count(*) as totaldoctors
         from doctors
         where salary < 100000
         group by doctor_gender;
		 
     18. List the max, min , avg salary from doctors table ??
         
		 SELECT MAX(salary) AS max_salary
         FROM doctors;
		 
		 SELECT MIN(salary) AS min_salary
         FROM doctors;
		 
		 SELECT AVG(salary) AS avg_salary
         FROM doctors;
		 
		 
     19. List the second highest salary from doctors table ??
         
		 SELECT MAX(salary) AS second_highest_salary
         FROM doctors
         WHERE salary < (SELECT MAX(salary) FROM doctors);
		 
		 
	 20. SQL query to find total salary department wise
	     
		 select speciality,sum(salary) as total salary
		 from doctors
		 group by speciality;
	 
	 21. Display the data stucture of doctors table ??
        
		 desc doctors;
		 
	 22. SQL query to create a table with the same structure with or Without data of the Existing table
	 
	      create table doctors_details as select * from doctors  ---same data
		  
		   create table doctors_details as select * from doctors whwre A = B ;  ---without data



     23. SQL query to find duplicates in speaciality??
	      
		  SELECT speciality, COUNT(*) AS DuplicateCount
          FROM doctors
          GROUP BY speciality
          HAVING COUNT(*) > 1;