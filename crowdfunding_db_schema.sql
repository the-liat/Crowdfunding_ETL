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
	subcategory_id VARCHAR(10) NOT NULL PRIMARY KEY,
    subcategory VARCHAR(20)
);
-- verifying subcategory table
SELECT * FROM subcategory; 

-- campaign table 
CREATE TABLE campaign (
    cf_id INT NOT NULL PRIMARY KEY,
    contact_id INT NOT NULL, 
    company_name VARCHAR(50),
    description VARCHAR(80),
    goal DECIMAL,
    pledged DECIMAL,
    outcome VARCHAR(10),
    backers_count INT,
    country VARCHAR(5),
    currency VARCHAR(5),
    launch_date DATE,
    end_date DATE,
    category_id VARCHAR(5) NOT NULL,
    subcategory_id VARCHAR(10) NOT NULL,
	FOREIGN KEY (contact_id) REFERENCES contacts (contact_id),
	FOREIGN KEY (category_id) REFERENCES category (category_id),
    FOREIGN KEY (subcategory_id) REFERENCES subcategory (subcategory_id)
);
-- verifying campaign table
SELECT * FROM campaign;


