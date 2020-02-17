CREATE DATABASE ratings;

\c ratings;
CREATE USER bookinfo WITH PASSWORD '<userpass>';
grant connect on database ratings to bookinfo;

CREATE TABLE ratings (
    reviewid INTEGER NOT NULL PRIMARY KEY,
    rating INTEGER
);
INSERT INTO ratings(reviewid, rating) VALUES (1,3);
INSERT INTO ratings(reviewid, rating) VALUES (2,2);

grant select, insert, update, delete on all tables in schema public to bookinfo;
