# Some FAQ with PostgresSQL Database :::::

# ----> 1. What is PostgreSQL?

            PostgreSQL is a powerful open-source relational database system known for its advanced features, extensibility, and data consistency. It supports SQL, offers diverse data types, indexing, and security features, making it popular for various applications..
# -----> 2. What is the purpose of a database schema in PostgreSQL?

       The database schema in PostgreSQL defines the structure, organization, and relationships of the data within the database. It includes tables, views, indexes, constraints, and other elements that specify how the data is stored, accessed, and manipulated. Essentially, the schema serves as a blueprint for organizing and managing data, enabling efficient data storage, retrieval, and maintenance.
# -----> 3. Explain the primary key and foreign key concepts in PostgreSQL.

            A primary key is used to ensure data in the specific column is unique. A foreign key is a column or group of columns in a relational database table that provides a link between data in two tables. It uniquely identifies a record in the relational database table

# --> 4. What is the difference between the VARCHAR and CHAR data types?

                *****CHAR ****
            1.CHAR datatype is used to store character strings of fixed length
            2.In CHAR, If the length of the string is less than set or fixed-length then it is padded with extra memory space
            3.Storage size of CHAR datatypes is equal to n bytes i.e. set length
              **\***VARCHAR \*\*\*\*
1.VARCHAR datatype is used to store character strings of variable length
2.In VARCHAR, If the length of the string is less than the set or fixed-length then it will store as it is without padded with extra memory spaces.
3.The storage size of the VARCHAR datatype is equal to the actual length of the entered string in bytes.

#  -->  5. Explain the purpose of the WHERE clause in a SELECT statement.

        The WHERE clause is used to filter out the records or to specify a condition while extracting the records from a single table or joining multiple tables. It follows the SELECT and FROM clause.