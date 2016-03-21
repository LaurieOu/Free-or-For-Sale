# Schema Information

## users
column name     | data type | details
----------------|-----------|-----------------------
id              | integer   | not null, primary key
Username        | string    | not null, indexed, unique
email           | string    | not null, indexed, unique
university_id   | integer   | not null, foreign key (references users), indexed
password_digest | string    | not null
session_token   | string    | not null, indexed, unique


## University
column name | data type | details
------------|-----------|-----------------------
id          | integer   | not null, primary key
name        | string    | not null


## Listing
column name  | data type | details
-------------|-----------|-----------------------
id           | integer   | not null, primary key
title        | string    | not null
description  | text      |
price        | integer   | not null
university_id| integer   | not null, foreign key (references users), indexed
user_id      | integer   | not null, foreign key (references users), indexed
category_id  | integer   | not null, foreign key, indexed
archived     | boolean   | not null, default false
address      | string    |


## Category
column name  | data type | details
-------------|-----------|-----------------------
id           | integer   | not null, primary key
category_name| string    | not null, unique


## Likes
column name | data type | details
------------|-----------|-----------------------
id          | integer   | not null, primary key
user_id     | integer   | not null, foreign key (references users), indexed
listing_id  | integer   | not null, foreign key (references users), indexed


## Comments
column name | data type | details
------------|-----------|-----------------------
id          | integer   | not null, primary key
body        | text      | not null
user_id     | integer   | not null, foreign key (references users), indexed
listing_id  | integer   | not null, foreign key (references users), indexed


## Pictures
column name | data type | details
------------|-----------|-----------------------
id          | integer   | not null, primary key
listing_id  | integer   | not null, foreign key (references users), indexed
