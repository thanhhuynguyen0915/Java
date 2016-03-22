CREATE TABLE PRODUCTS
(
    PRODUCT_ID            INTEGER NOT NULL ,
    PRODUCT_NAME          VARCHAR(128) ,
    PRODUCT_CATEGORY      VARCHAR(128) ,
    PRODUCT_DESC          VARCHAR(1024) ,
    PRODUCT_PRICE         NUMERIC(10,2) ,
	CONSTRAINT PRODUCT_ID_PK PRIMARY KEY (PRODUCT_ID)
);

CREATE TABLE CATEGORY {
	
}

CREATE TABLE USERS
(
    USERNAME              VARCHAR(32) NOT NULL ,
    PASSWORD              VARCHAR(32) NOT NULL ,
	CONSTRAINT USERNAME_PK PRIMARY KEY (USERNAME)
);

-- The following queries might be changed for other DB. This is for Postgres
CREATE SEQUENCE products_id_seq;
ALTER TABLE PRODUCTS ALTER COLUMN PRODUCT_ID SET DEFAULT nextval('products_id_seq');