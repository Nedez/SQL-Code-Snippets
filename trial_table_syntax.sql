Create Table Trial_table (
	Test_id int,
	Test_name varchar(100),
	Test_location varchar(100)
	PRIMARY KEY (Test_id)
	);

INSERT INTO Trial_table (test_id, test_name, test_location) 
VALUES (1, 'bitters Lemon', 'Winnipeg'), (2, 'Red Bull', 'Lagos'), (3, 'Coke', 'Lagos'), (4, 'Red Bull', 'Vancouver'),
		(5, 'Star_lager', 'Airdrie'), (6, 'Smirnoff', 'Onitsha'), (7, 'Odogwu Bitters', 'Airdrie'), (8, 'Guiness Malt', 'Vancouver'),
		(9, 'bitters Lemon', 'Winnipeg'), (10, 'Smirnoff', 'Edmonton');

UPDATE Trial_table
SET Test_location = 'Toronto'
Where Test_name = 'Lemon Bitters';

select * from trial_table
--WHERE Test_id IN (16, 15);

INSERT INTO Trial_table (
	Test_id, Test_name, Test_location
)
VALUES (
12, 'Odogwu Bitters', 'Calgary'
);

Select * from Trial_table;


--The code below is used to rename a column in an existing table
EXEC sp_rename 'Trial_table.Test_name', 'Test_Drink', 'COLUMN';

INSERT INTO Trial_table (
Test_id, Test_Drink, Test_location) 
VALUES (11, 'Guiness Stout', 'Airdrie');

Select count(*) from trial_table

Alter table trial_table
Add Drink_Cost int;

-- Insert into Trial_table
-- (Drink_cost) WHERE Test_id = 1
-- VALUES (3), (5), (1.50), (5), (4), (5), (3.50), (2), (3), (5), (4.50), (3.50), (4), (4.25), (4.50), (2.80), (3), (5), (4.60), (2);

Update Trial_table
SET Drink_cost = 3.50
WHERE Test_Drink = 'Odogwu Bitters'

Update Trial_table
SET Drink_Cost = 4.50
WHERE Test_Drink = 'Guiness Stout'

Update Trial_table
SET Drink_Cost = 2
WHERE Test_Drink = 'Guiness Malt'

Update Trial_table
SET Drink_Cost = 4.25
WHERE Test_Drink = 'Gulder'

Update Trial_table
SET Drink_Cost = 2.80
WHERE Test_Drink = 'Lemon bitters'

Update Trial_table
SET Drink_Cost = 4.60
WHERE Test_Drink = 'Gulder Max'

Select * from Trial_table

DELETE FROM trial_table
WHERE Test_id IS NULL

SELECT 
	min(Drink_cost) AS "Minimum cost of Drink", 
	Max(Drink_cost) AS "Maximum cost of Drink"
FROM
	Trial_table

