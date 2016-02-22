# Schema Information

## Post/Item for Sale
column name | data type | details
------------|-----------|-----------------------
id          | integer   | not null, primary key
description | text      | not null
author_id   | integer   | not null, foreign key (references users), indexed
price       | integer   | not null, foreign key (references users), indexed
location    | string    |

## Messages
column name | data type | details
------------|-----------|-----------------------
id          | integer   | not null, primary key
author_id   | integer   | not null, foreign key (references users), indexed
title       | string    | not null
body        | text      |
date        | datetime  | not null

## University
column name | data type | details
------------|-----------|-----------------------
id          | integer   | not null, primary key
author_id   | integer   | not null, foreign key (references users), indexed
item_id     | integer   | not null, foreign key (references users), indexed


## Message Box
column name | data type | details
------------|-----------|-----------------------
id          | integer   | not null, primary key
user_id     | integer   | not null, foreign key (references users), indexed
message_id  | integer   | not null, foreign key (references notes), indexed
date        | datetime  | not null

## Pictures
column name | data type | details
------------|-----------|-----------------------
id          | integer   | not null, primary key
user_id     | integer   | not null, foreign key (references users), indexed
item_id     | integer   | not null, foreign key (references users), indexed


## users
column name     | data type | details
----------------|-----------|-----------------------
id              | integer   | not null, primary key
username        | string    | not null, indexed, unique
password_digest | string    | not null
session_token   | string    | not null, indexed, unique
