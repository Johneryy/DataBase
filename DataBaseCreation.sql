 creating tables

 create table table_name(

column_name datatype optional constraint,
column_name datatype optional constraint,
column_name datatype optional constraint,

.......
constraint constraint_name constraint_type(column_name)
);



use demo;


create table Human(
humanID int(10) Not Null,
name varChar(30) Not Null,
age int(3) Not Null,
gender varChar(1) Not Null,
bloodType varChar(3) Not Null,
Genotype varChar(3) Not Null,
-- define the primary key column 
constraint human_PK  Primary Key(humanID)
);

-- Game table
create table Games (
GameID int(10) Not Null,
GameName varChar(30) Not Null,
Price numeric(4,2) Not Null,
Quantity int(10) Not Null,
Location varChar(25) Not Null,
constraint Games_PK Primary Key(gameID)
);

Game purchase table
create table GamePurchase(
humanID int(10) Not Null,
GameID int(3) Not Null,
OrderDate timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
constraint Order_PK Primary Key(humanID,GameID),
constraint Human_FK Foreign Key(humanID)
					references Human(humanID),
constraint Games_FK Foreign Key(GameID)
					references Games(gameID)               
);
