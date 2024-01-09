SELECT * FROM credit_card;

#1 Group the customers based on their income type and find the average of their annual income.
select type_income,round(avg(Annual_income)) 'Avg Income'
from credit_card
group by type_income;

#2 Find the female owners of cars and property.
	
select id, Gender,car_owner,Propert_Owner
from credit_card
where gender = 'Female' and(car_owner = 'Yes' and Propert_Owner = 'Yes');

#3 Find the male customers who are staying with their families.

SELECT id, gender, Housing_type
from credit_card
where gender = 'Male' and Housing_type = 'With parents';

#4 Please list the top five people having the highest income.

select id, gender,max(Annual_income) Annual_income
from credit_card
group by id
order by Annual_income desc
limit 5;
 # How many married people are having bad credit?
 
 select count(label) as Bad_credit 
 from credit_card
 where Credit_Status and Marital_status = 'married' ;
 
# 6 What is the highest education level and what is the total count?

select EDUCATION , count(EDUCATION) total_count
from credit_card
group by EDUCATION
order by 2 desc
limit 1;

# 7 Between married males and females, who is having more bad credit? 

select gender,Marital_status, count(Credit_Status) as 'bad credit'
from credit_card
where Marital_status = 'married' and Credit_Status = 'Bad Credit'
group by gender,Marital_status;



