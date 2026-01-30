Create Database Emergence_Data_Analyst_Assessment_DB;
Use Emergence_Data_Analyst_Assessment_DB;

-- Table createion --

Create Table customers_tb
(
customer_id Varchar(10) Primary Key,
signup_date Date NULL,
segment Varchar(20) NULL,
country Varchar(10) NULL,
is_enterprise boolean
);

Create Table subscriptions_Tb
(
subscription_id	varchar(10) Primary Key,
customer_id	varchar(10) not null,
start_date	date null,
end_date	date null,
monthly_price decimal(10,2) null,
status varchar(15) null,
Constraint fk_subscription_customer
Foreign Key (customer_id)
references customers_tb(customer_id)
);

Create Table events_tb
(
event_id varchar(20) Primary Key,
customer_id	varchar(10) not null,
event_type	varchar(15) null,
event_date	date null,
source varchar(20) null,
Constraint fk_events_customers
Foreign Key (customer_id)
references customers_Tb(customer_id)
);



