-- Cole Reinhart - 1/30/19
-- Creating a Minecraft database, since minecraft has a plethera of items, I will not be putting all of them into the database but I will create the main categories
-- And some of the categories have similar identities, such as an axe is a weapon and a tool or how all tools can be created with wood, iron and gold...


CREATE TABLE Blocks (
    Block_ID varchar(10) CONSTRAINT Block_ID PRIMARY KEY,
    Name varchar(50),
    Location varchar(50),
    Flammable varchar(50),
    Transparent varchar(50),
    Blast_Resistance varchar(50), 
    Tool varchar(50),
    Stackable varchar(50),
    Drops varchar(50)
);
-- Above, I am creating a table called Blocks. Inside the table I am 
-- making my columns and their data types. The Block_ID will act as
-- my primary key and make it so no two pieces of data have the same ID.
INSERT INTO Blocks (Block_ID, Name, Location, Flammable, Transparent, Blast_Resistance, Tool, Stackable, Drops)
VALUES (1, 'Stone', 'Underground', 'no', 'no', 30, 'Pickaxe', 'yes(64)', 'Cobblestone'),
(2, 'Grass_Block', 'Plains', 'no', 'no', 3, 'shovel', 'yes(64)', 'Itself'),
(3, 'Dirt', 'Overworld', 'no', 'no', 2.5, 'shovel', 'yes(64)', 'Itself'),
(4, 'Cobblestone', 'Mob Spawners', 'no', 'no', 30, 'Pickaxe', 'yes(64)', 'Itself'),
(5, 'Wood plank', 'Crafted', 'yes', 'no', 15, 'Axe', 'yes(64)', 'Itself'),
(20, 'Glass', 'Crafted', 'no', 'yes', 1.5, 'ANY', 'yes(64)', 'Nothing')


CREATE TABLE Materials (
    Mat_ID SMALLINT CONSTRAINT MAt_ID PRIMARY KEY,
    NAME varchar(20),
    Renewable varchar(3),
    stackable varchar(10),
    Craft_Tools varchar(3),
    Craft_Armor varchar(3)
)

INSERT INTO Materials (Mat_ID, NAME, Renewable, stackable, Craft_Tools, Craft_Armor)
VALUES (266, 'Gold Ingot', 'yes', 'yes(64)', 'yes', 'yes'),
(265, 'Iron Ingot', 'yes', 'yes(64)', 'yes', 'yes'),
(334, 'Leather', 'yes', 'yes(64)', 'no', 'yes'),
(264, 'Diamond', 'no', 'yes(64)', 'yes', 'yes'),
(5, 'Wood plank', 'yes', 'yes(64)', 'yes', 'no'),
(4, 'cobblestone', 'yes', 'yes(64)', 'yes', 'no')

CREATE TABLE Tools ( 
    Tool_ID SMALLINT NOT NULL CONSTRAINT Tool_ID PRIMARY KEY,
    Name varchar(50),
    Type varchar(50), 
    Wood_Durability varchar(50),
    Stone_Durability varchar(50),
    Iron_Durability varchar(50),
    Gold_Durability varchar(50),
    Diamond_Durability varchar(50),
    Wood_Damage varchar(50),
    Stone_Damage varchar(50),
    Iron_Damage varchar(50),
    Gold_Damage varchar(50),
    Diamond_Damage varchar(50),
    renewable varchar(50),
    stackable varchar(50)
    )

INSERT INTO Tools (Tool_ID, NAME, Type, Wood_Durability, Stone_Durability, Iron_Durability, Gold_Durability, Diamond_Durability, Wood_Damage, Stone_Damage, Iron_Damage, Gold_Damage, Diamond_Damage, Renewable, stackable)
VALUES (256, 'shovel', 'Tools', '60 uses', '132 uses', '251 uses', '33 uses', '1562 uses', '2.5 damage', '3.5 damage', '4.5 damage', '2.5 damage', '5.5 damage', 'Diamond :no - all others: yes', 'no'),
(257, 'Pickaxe', 'Tools', '60 uses', '132 uses', '251 uses', '33 uses', '1562 uses', '2 damage', '3 damage', '4 damage', '2 damage', '5 damage', 'yes', 'no'),
(258, 'axe', 'Tools', '60 uses', '132 uses', '251 uses', '33 uses', '1562 uses', '7 damage', '9 damage', '9 damage', '7 damage', '9 damage', 'yes', 'no'),
(261, 'bow', 'Combat', '384 uses', 'N/A', 'N/A', 'N/A', 'N/A', '9 damage', 'N/A', 'N/A', 'N/A', 'N/A', 'yes', 'no'),
(267, 'sword', 'Combat', '59 uses', '131 uses', '250 uses', '32 uses', '1561 uses', '4 damage', '5 damage', '6 damage', '4 damage', '7 damage', 'yes', 'no')

