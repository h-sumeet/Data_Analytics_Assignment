--  creating a even_odd table
  CREATE TABLE OT.even_odd
  (
    num NUMERIC(3)
  );
  ALTER TABLE OT.even_odd DISABLE TRIGGER ALL;

-- inserting some even and odd element into the table
REM INSERTING into OT.even_odd
SET DEFINE OFF;
Insert into OT.even_odd (num) values (1);
Insert into OT.even_odd (num) values (2);
Insert into OT.even_odd (num) values (3);
Insert into OT.even_odd (num) values (4);
Insert into OT.even_odd (num) values (5);
Insert into OT.even_odd (num) values (6);
Insert into OT.even_odd (num) values (7);
Insert into OT.even_odd (num) values (8);
Insert into OT.even_odd (num) values (9);
Insert into OT.even_odd (num) values (10);
Insert into OT.even_odd (num) values (11);
Insert into OT.even_odd (num) values (12);
Insert into OT.even_odd (num) values (13);
Insert into OT.even_odd (num) values (14);

-- creating a even table
CREATE TABLE OT.even_numbers (
    value integer
);

-- creating a odd table
CREATE TABLE OT.odd_numbers (
    value integer
);

-- inserting even element from even_odd table to even_number table
INSERT INTO OT.even_numbers
SELECT num FROM OT.even_odd WHERE num % 2 = 0;

-- inserting odd element from even_odd table to odd_number table
INSERT INTO OT.odd_numbers
SELECT num FROM OT.even_odd WHERE num % 2 = 1;