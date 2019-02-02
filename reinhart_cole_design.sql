-- Cole Reinhart - 1/30/19
-- Creating a Minecraft database, since minecraft has a plethera of items, I will not be putting all of them into the database but I will create the main categories
-- And some of the categories have similar identities, such as an axe is a weapon and a tool or how all tools can be created with wood, iron and gold...


CREATE TABLE Minecraft (
    ID varchar(10) CONSTRAINT ID PRIMARY KEY,
    Name varchar(50),
    Location varchar(50),
    Flammable varchar(50),
    Transparent varchar(50),
    Blast Resistance varchar(50), 
    Tool varchar(50),
    Stackable varchar(50),
    Drops varchar(50)
);