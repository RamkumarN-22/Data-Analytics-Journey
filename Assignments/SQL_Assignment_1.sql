use Assignments

--Q1--1. Install MS SQL Server
/*developer/express
basic/custom/downloadmedia
azure extension for sql server
feature--database engine, sql server replication
server configuration---automatic
database configuration --two type of authentication--window and sql server authentication
install

ssms--UI

--Q2--
list out the difference between char, varchar and nchar, nvarchar data type.
--    Char(FL) & Varchar(VL)	              Nchar & Nvarchar (National)
it is capable holding 8000 bytes            Capable of holding 4000 bytes
Each charector aquires 1 byte               Each charector squires 2 bytes
it should include non unicode values        we can use unicode values
we cant store different language            we can store different language

--Q3--List out various commands used 
--Data Manipulation Language (DML) Commands 
--INSERT--The INSERT command adds new records to a table.
--UPDATE--The UPDATE command is used to modify existing records in a table.
--DELETE--The DELETE command re-moves records from a table.

--Data Definition Language (DDL) Commands 
--CREATE--The CREATE command cre-ates a new database and ob-jects, suchas a table, index, view, or stored procedure.
--ALTER--The ALTER command adds, deletes, or modifies columns in an existing table.
--DROP--The DROP command is used to drop an existing table in a database.
--TRUNCATE--The TRUNCATE command isused to delete the data inside a table, but not the table Itself.

--Data Query language(DQL) commands
----SELECT--The SELECT command re-trieves data from a database.

Data Control Language (DCL) Commands
--GRANT--The GRANT command is used to give specific privileges to users or roles.
--REVOKE--The REVOKE command is used to take away privileges previously granted to users or roles.

--Transaction Control language(TCL) commands
--COMMIT--The COMMIT command is used to save all the changes made during the current transaction and make them permanent.
--ROLLBACK--The ROLLBACK command is used to undo all the changes made during the current transaction and discard them.
--SAVEPOINT--The SAVEPOINT command is used to set a point within a transaction to which you can later roll back.
