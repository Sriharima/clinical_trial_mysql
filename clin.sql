create database clinictrial;
use clinictrial;
show tables;
desc clinictrial;

select*from clinictrial;


#1. Add index name fast on Name
alter table clinictrial modify Name varchar(30) ;
create index Medical on clinictrial (Name);
show index from clinictrial;



#2. Describe the schema of table
describe clinictrial;


#3. Find average of Age
select avg(age) from clinictrial;
select Avg(age) Average_age from clinictrial;




#4. Find minimum of Age
select min(age) from clinictrial;
select min(age) minimum_age from clinictrial;
select min(age) as Minimum_Age from clinictrial; #correct 1

#5. Find maximum of Age
select max(age) as maximum_age from clinictrial;


#6. Find average age of those were pregnant and not pregnant
select * from clinictrial;
select pregnant,round(avg(Age),0) Average_Age from clinictrial group by pregnant;



#7. Find average blood pressure of those had drug reaction and did not had drug
#reaction
select drug_reaction,round(avg(BP),0) average_BP from clinictrial group by drug_reaction;
select drug_reaction,round(avg(BP),0) as Average_BP from clinictrial group by drug_reaction;




#8. Add new column name as ‘Age_group’ and those having age between 16 & 21
#should be categorized as Low, more than 21 and less than 35 should be
#categorized as Middle and above 35 should be categorized as High.



select Age,case when Age between 16 and 21 then  'Low' when Age between 21 and 35 then 'Middle' when Age >35 then 'High' end 'Age_Group' from clinictrial;





#9. Change ‘Age’ of Reetika to 32
update clinictrial set Age=32 where name ='Reetika';




#10. Change name of Reena as Shara’
update clinictrial set Name='Shara' where Name='Reena';




#11. Remove Chlstrl column
alter table clinictrial drop column chlstrl;


#12. Select only Name, Age and BP
select*from clinictrial;
select Name,Age,BP from clinictrial;



#13. Select ladies whose first name starts with ‘E’
select * from clinictrial where Name like 'E%';

#14. Select ladies whose Age_group were Low
select * from clinictrial where age_group ='Low';

#15. Select ladies whose Age_group were High
select * from clinictrial where age_group='High';


#16. Select ladies whose name starts with ‘A’ and those were pregnant
select* from clinictrial where name like 'a%';


#17. Identify ladies whose BP was more than 120
select * from clinictrial  where BP>120;

#18. Identify ladies whose BP was between 100 and 120
select* from clinictrial where bp between 100 and 120;


#19. Identify ladies who had low anxiety aged less than 30
select * from clinictrial where  anxty_LH <30;
select * from clinictrial where Anxty_LH = 'No' and age<30;


#20.Select ladies whose name ends with ‘i’
select * from clinictrial where name like '%i';


#21. Select ladies whose name ends with ‘a’
select* from clinictrial  where name like 'a%';
select * from clinictrial where Name like '%a';

#22.Select ladies whose name starts with ‘K’
select * from clinictrial where name like 'k%';


#23.Select ladies whose name have ‘a’ anywhere
select * from clinictrial where Name like '%a%';


#24. Order ladies in ascending way based on ‘BP’
select * from clinictrial order by  bp asc;


#25. Order ladies in descending way based on ‘Age’
select * from clinictrial order by age desc;