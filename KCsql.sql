CREATE TABLE VEGETABLE(
id VARCHAR (5) PRIMARY KEY,
vname VARCHAR (20),
price INTEGER (3),
vimage BLOB
);

INSERT INTO VEGETABLES(ID, vname, price)
VALUES('asp', 'asparagus', 50 );
UPDATE TABLE VEGETABLES 
SET (vimage) VALUES(LOAD_FILE('/images/asparagus.png'))
WHERE ID='asp' ;
--CREATE TABLE MyTable (
   --image  BLOB
--);

-- This will insert a file in a BLOB column.
--INSERT INTO MyTable (image) VALUES(LOAD_FILE('/tmp/image.png'));