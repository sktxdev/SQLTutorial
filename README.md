# SQLTutorial
SQL Tutorial

### Software Requirements:
- A Windows Laptop running Windows 10 (You can use a mac with VMFusion or Parallels install if you wish)
- SQL Server Express 2017 
- SQL Server Management Studio

### Some userful Links:
https://www.microsoft.com/en-us/sql-server/sql-server-editions-express

https://docs.microsoftcom/en-us/sql/ssms/download-sql-server-management-studio-ssms

### Overview
### What students will learn
	• Design normalized table structures for relational databases
	• Create databases and tables
	• Using primary and foreign keys
	• Writing SQL queries
	• Using inner and outer joins
	• Using set operators (UNION, INTERSECT, EXCEPT)
	• Using DML for SELECT, INSERT, UPDATE, DELETE
	• Using subqueries
	• Using triggers and stored procedures
	• Using aggregate functions to return totals and subtotals

### Relational Database Fundamentals
	• Overview of Relational Database Concepts
	• Relational Databases and Relational Database Management Systems
	• Data Normalization
	• DDL Syntax

### Creating a Database 
	• Database Development Methodology Overview
	• Building a Logical Data Model 
		○ Identifying Entities and Attributes
		○ Isolating Keys
		○ Relationships Between Entities
		○ Creating Entity-Relationship Diagrams 
	• Transforming to Physical Design
		○ Migrating Entities to Tables
		○ Selecting Primary Keys
		○ Defining Columns
		○ Enforcing Relationships with Foreign Keys
	• Constructing the Database Using DDL
		○ Creating Tables, Indexes, Constraints and Views
		○ Dropping Tables, Indexes, Constraints and Views
		○ Modifying Tables, Indexes, Constraints and Views

### Writing Basic SQL Queries 
	• Displaying Table Structures
	• Retrieving Column Data From a Table or View
	• Selecting Unique Values
	• Filtering Rows Using the WHERE Clause
	• Sorting Results Using ORDER BY
	• Joining Multiple Tables
	• Using Column and Table Aliases

### Manipulating Query Results 
	• Using Row Functions
		○ Character 
		○ Numeric
		○ Date and Time
		○ Data Conversion (CAST and CONVERT) 
	• Using the CASE Function
	• Handling Null Values

### Advanced Query Techniques 
	• Inner Joins
	• Outer Joins (Left, Right, Full)
	• Joining a Table to Itself
	• Subqueries
	• Tips for Developing Complex SQL Queries
		○ Using Aggregate Functions 
		○ AVG
		○ COUNT
		○ SUM
		○ MIN
		○ MAX 
		○ OVER / PARTITION BY 
			§ moving averages
			§ Other??
	• Aggregating Results Using GROUP BY
	• Restricting Groups with the HAVING Clause
	• Creating Temporary Tables


### Manipulating Table Data Using SQL's Data Manipulation Language (DML)
	• Inserting Data into Tables
	• Updating Existing Data
	• Deleting Records
	• Truncating Tables
		○ Implementing Data Integrity with Transactions 
		○ Beginning Explicit Transactions
		○ Committing Transactions
		○ Rolling Back Transactions

### User-Defined Functions
	• Definition and Benefits of Use
	• CREATE FUNCTION 
		○ Syntax
		○ RETURN Clause and the RETURNS Statement
		○ Scalar vs. Table Functions
	• Comparison with Stored Procedures
	• Returning Scalar Values and Tables
	• ALTER and DROP FUNCTION

### Triggers 
	• Definition and Benefits of Use
	• Alternatives (e.g., Constraints)
	• CREATE TRIGGER 
		○ Syntax
		○ Trigger Types
	• "Inserted" (or "NEW") and "Deleted" (or "OLD") Tables
	• Event Handling and Trigger Execution
	• ALTER and DROP TRIGGER

### Stored Procedures 
	• Definition and Benefits of Use
	• CREATE PROCEDURE 
		○ Syntax
		○ Variables and Parameters
	• Control of Program Flow
	• ALTER and DROP PROCEDURE
	• Implementation Differences

### Working with Views 
	• Benefits of Using Views
	• Creating Views
	• ALTER and DROP VIEW

