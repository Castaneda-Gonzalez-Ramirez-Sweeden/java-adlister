USE adlister_db;

TRUNCATE categories;

INSERT INTO categories( description)
VALUES ('X-large Dog'),
       ('X-large Cat'),
       ('Large Dog'),
       ('Large Cat'),
       ('Medium Dog'),
       ('Medium Cat'),
       ('Small Dog'),
       ('Small Cat');