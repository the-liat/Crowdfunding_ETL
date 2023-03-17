/* creating table schemas for the 4 tables
=============================================*/

-- contacts table
CREATE TABLE contacts (
    contact_id INT NOT NULL PRIMARY KEY,
    first_name VARCHAR(20),
    last_name VARCHAR(20),
    email VARCHAR(50)
);
-- verifying contacts table
SELECT * FROM contacts; 

-- category table
CREATE TABLE category (
	category_id VARCHAR(5) NOT NULL PRIMARY KEY,
    category VARCHAR(15)
);
-- verifying category table
SELECT * FROM category; 

-- subcategory table
CREATE TABLE subcategory (
	subcategory_id VARCHAR(5) NOT NULL PRIMARY KEY,
    subcategory VARCHAR(15)
);
-- verifying subcategory table
SELECT * FROM subcategory; 

-- campaign table 
CREATE TABLE campaign (
    cf_id INT NOT NULL PRIMARY KEY,
    contact_id INT NOT NULL, 
	FOREIGN KEY (contact_id) contacts (contact_id),
    company_name VARCHAR(35),
    description VARCHAR(60),
    goal INT,
    pledged INT,
    outcome VARCHAR(10),
    backers_count INT,
    country VARCHAR(5),
    currency VARCHAR(5),
    launch_date DATE,
    end_date DATE,
    category_id VARCHAR(5) NOT NULL,
	FOREIGN KEY (category_id ) category (category_id ),
    subcategory_id VARCHAR(10) NOT NULL,
    FOREIGN KEY (subcategory_id ) subcategory (subcategory_id )
);
-- verifying campaign table
SELECT * FROM campaign; 

