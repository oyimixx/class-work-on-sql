 #How many customers are in the dataset?
use bank_customer_churn_prediction_db;
select count(*)
from bank_customer_churn_prediction;

#What is the average credit score of customers in France?
select avg(credit_score), country
from bank_customer_churn_prediction
where country = 'france';

 #How many customers are male and how many are female
select gender, count(*)
from bank_customer_churn_prediction
group by gender;

# What is the maximum age among customers who churned
select max(age) 
from bank_customer_churn_prediction
where churn =1;

#What is the total estimated salary for customers in Spain who have not churned?
select sum(estimated_salary), country
from bank_customer_churn_prediction
where churn = 0 and country = 'spain';

# List the top 5 customers with the highest credit scores
select *
from bank_customer_churn_prediction
order by credit_score desc
limit 5;

# What is the average age of customers who have both a credit card and are active members?
select avg(age), credit_card, active_member
from bank_customer_churn_prediction
where credit_card = 1 and active_member = 1;


# What is the total number of customers in each country?
select country,count(*)
from bank_customer_churn_prediction
group by country;

#What is the average balance for each country, and only show countries where the average balance is greater than 50,000?
select country, avg (balance)
from bank_customer_churn_prediction
group by country
having avg(balance) >50000;

# What is the average tenure for customers of each gender and country;
select country, avg(tenure), gender  
from bank_customer_churn_prediction
group by gender,country;  