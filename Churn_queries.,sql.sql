CREATE DATABASE test;
	USE test;
	CREATE TABLE bank_churn_data (
    RowNumber int,
    CustomerID varchar(20),
    Surname varchar(50),
    CreditScore int,
    RiskLevel varchar(20),
    Geography varchar(50),
    Gender varchar(10),
    Age int,
    AgeGroup varchar(20),
    Tenure int,
    TenureGroup varchar(20),
    Balance decimal(15,2),
    NumberofProduct int,
    AccountType varchar(20),
    HasCrCard tinyint(1),
    IsActiveMember tinyint(1),
    EstimatedSalary decimal(15,2),
    CustomerValue varchar(20),
    IncomeGroup varchar(20),
    Exited tinyint(1),
    ChurnFlag varchar(10)
    );


-- This shows the total customer
select count(*) from test.bank_churn_data;

-- This shows the total number of churned customer
select count(*) as churned_customer
from test.bank_churn_data
where Exited = 1;

-- This shows Active vs. Inactive
select IsActiveMember,
count(*) as Total_Customers
from test.bank_churn_data
group by IsActiveMember;

-- This shows the churn rate by Age group
select AgeGroup,
count(*) as total_customers,
sum(Exited) AS churned_customers,
round((sum(Exited) / count(*)) * 100, 2) as churn_rate_percent
from test.bank_churn_data
group by AgeGroup
order by churn_rate_percent DESC;

-- This shows the churned count by Income group
select IncomeGroup,
count(*) as total_customers,
sum(Exited) AS churned_customers,
round((sum(Exited) / count(*)) * 100, 2) as churn_rate_percent
from test.bank_churn_data
group by IncomeGroup
order by churn_rate_percent DESC;

-- This shows the churn by Gender
select Gender,
count(*) as total_customers,
sum(Exited) AS churned_customers,
round((sum(Exited) / count(*)) * 100, 2) as churn_rate_percent
from test.bank_churn_data
group by Gender;

-- This shows the churn by Geography
select Geography,
count(*) as total_customers,
sum(Exited) AS churned_customers,
round((sum(Exited) / count(*)) * 100, 2) as churn_rate_percent
from test.bank_churn_data
group by Geography
order by churn_rate_percent DESC;

-- This shows the avaerage estimated salary of churned vs. retained
select 
case when Exited = 1 then 'Churned' else 'Retained' end as churn_flag,
round(avg(EstimatedSalary), 2) as avg_salary
from test.bank_churn_data
group by churn_flag;

-- This shows Product count by churn status
select NumberofProducts, Exited,
count(*) as Total_Customers
from test.bank_churn_data
group by NumberofProducts, Exited
order by NumberofProducts, Exited;

-- This shows churn by Risk Level
select RiskLevel,
count(*) as Churned_Customers
from test.bank_churn_data
where Exited = 1
group by RiskLevel;

-- This shows churn by Account Type
select AccountType,
count(*) as total_customers,
sum(Exited) AS churned_customers,
round((sum(Exited) / count(*)) * 100, 2) as churn_rate_percent
from test.bank_churn_data
group by AccountType
order by churn_rate_percent DESC;

