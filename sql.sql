CREATE DATABASE IF NOT EXISTS credit_card_transc;

USE credit_card_transc;

-- Create the datetime dimension table
CREATE TABLE datetime (
  trans_date_trans_time TIMESTAMP PRIMARY KEY,
  unix_time BIGINT,
  year INT,
  month INT,
  day INT,
  hour INT,
  minute INT,
  second INT
);

-- Create the credit_cards dimension table
CREATE TABLE credit_cards (
  cc_num BIGINT PRIMARY KEY,
  first VARCHAR(50),
  last VARCHAR(50),
  gender VARCHAR(10),
  dob DATE
);

-- Create the merchants dimension table
CREATE TABLE merchants (
  merchant VARCHAR(100) PRIMARY KEY,
  street VARCHAR(100),
  city VARCHAR(50),
  state VARCHAR(2),
  zip VARCHAR(10),
  lat FLOAT,
  `long` FLOAT,
  merch_lat FLOAT,
  merch_long FLOAT
);

-- Create the categories dimension table
CREATE TABLE categories (
  category VARCHAR(50) PRIMARY KEY,
  description VARCHAR(100)
);

-- Create the transactions fact table
CREATE TABLE transactions (
  trans_id BIGINT PRIMARY KEY,
  trans_date_trans_time TIMESTAMP,
  cc_num BIGINT,
  merchant VARCHAR(100),
  category VARCHAR(50),
  amt FLOAT,
  city_pop INT,
  is_fraud BIT,
  FOREIGN KEY (trans_date_trans_time) REFERENCES datetime (trans_date_trans_time),
  FOREIGN KEY (cc_num) REFERENCES credit_cards (cc_num),
  FOREIGN KEY (merchant) REFERENCES merchants (merchant),
  FOREIGN KEY (category) REFERENCES categories (category)
);