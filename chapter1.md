# Chapter 1

## Elements of SQL (Page 10-11)
* SQL elements consists of quieres, clauses, predicates, expressions, statements, and white space.
* Queries that retrieve data based on specific criteria.
* Clauses that are components of statements or queries.
* Predicates that are logical conditions that evaluate to true or false. These help you to narrow down the results of your queries.
* Expressions that produce either scalar values or tables of columns and rows. Expressions are a part of predicates.
* Statements that are queries run against a database, comprised of clauses and, optionally, expressions and predicates.
* White space that is generally ignored in SQL statements and queries, making it easier to format for readability because you don't have to worry so much about particular spacing for the SQL to run correctly.
* Clauses use SQL keywords.

## Understanding databases (Page 11)
* Databases are stored in a relational database management system (RDMS)

## Tables (Page 12)
* In RDMS, objects called tables store data.
* Tables are a collection of related data stored in columns and rows.

## Fields (Page 12)
* A field is an intersection of a row and a column.

## Understanding data integrity (Page 13)
* Data integrity refers to the consistency and accuracy of the data.
* In RDMS, keys enforce data integrity. A key is user-defined and forces values in a table to conform to a specified standard.

## Types of integrity (Page 14)
* Data integrity refers to the consistency and accuracy of data and table relationships. 
The following table lists the types of integrity you can use are Entity integrity, Referential integrity, Domain integrity.

### Entity integrity (Page 14-22)
* If you want each row in a table to be identifiably unique, entity integrity will need to be used.

#### Unique constraints (Page 14-15)
* Unique constraints ensure that all values in a column or columns are different from each other, hence duplicate data will be avoided.

#### Not null constraints (Page 16)
* A not null constraint is used to ensure all values in a column are not null.
They will be forced to contain a value.

#### The primary key (Page 16)
* Primary key is used to ensure that all values in column are not null, hence unique and not null
constraints properties are combined into it.
* You can create a primary key on multiple columns. This is considered a composite key.

### Referential integrity (Page 18-20)
* <strong>Referential integrity</strong> refers to the consistency and accuracy between tables that can be
  linked together.
* By having a primary key on the parent table and a foreign key on the child
  table, you achieve referential integrity.
* When creating a foreign key constraint, the foreign key must reference a column in another
  table that is the primary key.
* The foreign key can maintain three types of table relationships: one-to-one, one-to-many, and many-to-many.

### Domain integrity (Page 20-22)
* Using <strong>domain integrity</strong> ensures that data values follow defined rules for
formatting, range, and value using check and default constraints.
* A check constraint can evaluate whether a user-defined  

## Database normalization (Page 22)
* Database normalization is the process of putting you raw data into tables using rules to avoid redundant data,
optimize database performance, and ensure data integrity.
* Not having proper normalization can use up more space and updating and maintaining the database becomes even
harder without data loss.

### #The first normal form (Page 23-25)
* The first normal form (1NF) is the first level of database normalization.
* It ensures that you can use simple SQL statements to query the data.

### The second normal form (Page 26)
* <strong>The second normal form (2NF)</strong> is the second level of database normalization.
* The purpose of implementing 2NF is to narrow tables down to a single purpose making it easier to use
and design tables.

### The third normal form (Page 27-30)
* <strong>The third normal form (3NF)</strong> is the second level of database normalization.
* The main reason to use 3NF is to ensure tables are not created so that dependencies
between columns may cause inconsistency.

## Types of RDMS
* An RDMS is a database that stores data in tables using rows and columns.
- Oracle
- MySQL
- SQL Server
- PostgreSQL