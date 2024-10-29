/** What is the name of the table that holds the items Northwind sells? 

	The products table holds the items Northwind sells**/

/** What is the name of the table that holds the types (categories) of the items
	Northwind sells?

	The categories table hold the types of items**/ 
    
/** What are the first and last names of all the Northwind employees?**/

	USE northwind;
	
    SELECT FirstName, LastName FROM employees;

/**	'Nancy', 'Davolio'
	'Andrew', 'Fuller'
	'Janet', 'Leverling'
	'Margaret', 'Peacock'
	'Steven', 'Buchanan'
	'Michael', 'Suyama'
	'Robert', 'King'
	'Laura', 'Callahan'
	'Anne', 'Dodsworth'**/
    
    SELECT * FROM products;
    
/** How many records does your query return? How can you change this? Include the
	answer in your script as a comment.

	My SELECT query returned 77 records but you are able to change this by setting a limit in the query or in the dropdown menu above**/
    
	SELECT * FROM categories; 
    
/** What is the category id of seafood?

	Seafood**/ 
    
SELECT OrderID, OrderDate, ShipName, ShipCountry 
FROM orders
LIMIT 50;
    
