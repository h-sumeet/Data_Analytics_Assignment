  
--   Creating a Email_User Table
  CREATE TABLE OT.Email_User
  (
    email_name VARCHAR( 40 ) NOT NULL
  );
  ALTER TABLE OT.Email_User DISABLE TRIGGER ALL;

-- Inserting some dummy email id
REM INSERTING into OT.EMAIL_USER
SET DEFINE OFF;
Insert into OT.EMAIL_USER (EMAIL_NAME) values ('sumeet@gmail.com');
Insert into OT.EMAIL_USER (EMAIL_NAME) values ('sumeet123@gmail.com');
Insert into OT.EMAIL_USER (EMAIL_NAME) values ('sumeet.123@gmail.com');
Insert into OT.EMAIL_USER (EMAIL_NAME) values ('sumeet@outlook.com');
Insert into OT.EMAIL_USER (EMAIL_NAME) values ('hsumeet@outlook.com');

-- Splitting the email to get the username and domain from @
SELECT split_part(email_user, '@', 1) as name FROM OT.Email_User;
SELECT split_part(email_user, '@', 2) as domain FROM OT.Email_User;

-- Splitting the email to get the username and domain from @ and also removing the number present in username
SELECT 
  translate(regexp_replace(split_part(email_user, '@', 1), '[^a-zA-Z]+', ''), '0123456789', '') as name, 
  split_part(email_user, '@', 2) as domain;
FROM OT.Email_User;



