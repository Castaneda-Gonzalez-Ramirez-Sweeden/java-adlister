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
       ('Small Cat'),
       ('Hairless'),
       ('Fluffy'),
       ('Kitten'),
       ('Puppy');

TRUNCATE ads;


INSERT INTO ads ( user_id, title, description)
VALUES (1,'big kitty','A big old fluffy cat'),
       (1,'small dog','a tiny puppy, chihuahua I think.'),
       (1,'Not sure the breed', 'an animal of some sort.');


# TRUNCATE ad_category;
#
# INSERT INTO ad_category(ad_id, cat_id)
# VALUES(1,2),
#       (1,10),
#       (2,7),
#       (2,12);