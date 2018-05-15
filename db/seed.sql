\c travel_db

DELETE FROM favorites;
DELETE FROM users;
DELETE FROM vacations;

-- create users table
INSERT INTO users
  (name, email, hashpassword)
VALUES
  ('Eleanor Brown', 'ebrown@yahoo.com','123456'),
  ('Harry Moebin', 'harry772@msn.com', '123456'),
  ('Jason Backle', 'jayjaybabyback@gmail.com','123456'),
  ('Margaret Tuny', 'margietootoo@gmail.com','123456'),
  ('George Finlaw', 'georgesharkfin@yahoo.com','123456');


-- vacations

INSERT INTO vacations
 (location, description, latitude, longitude, img_url)
VALUES
('Hawaii', 'Amazing and exotic island with thrilling volcanos and lush gardens.', 21.3069444,-157.85833330000003, './hawaii1.jpeg' ),
('Florida', 'Warm and inviting.',25.0273356,-81.53575060000003, './florida2.jpeg'),
('New York', 'This is truly the city that never sleeps!',40.6892494,-74.0445004,'./newyork1.jpeg'),
('California', 'Sun and fun every day!',33.7700504,-118.19373949999999,'./california1.jpeg'),
('Australia', 'The is the land of the down under with tons of fun and beauty.',-33.8688197.151.20929550000005,'./austrailia-sydney.jpeg'),
('Mexico', 'Spicy food and music and life with plenty of sun.',21.161908,-86.85152790000001,'./mexico1.jpeg'),
('Barbados', 'Crystal clear waters and amazing island cuisine.',13.0968511,-59.61448189999999, './barbados1.jpeg'),
('Italy', 'Beautiful views and excellent entertainment.',41.9027835,12.496365500000024, './italy1.jpeg'),
('Brazil', 'Music with laughter and fun for all.',-14.235004,-51.92527999999999, './brazil.jpeg'),
('Cayman Islands', 'The white sandy beaches are endless and peaceful.',19.3133,-81.25459999999998, './cayman-island1.jpeg'),
('Paris', 'This is truly the land of love and romance.',48.85661400000001,2.3522219000000177, './paris1.jpeg'),
('British Columbia', 'This places feels so royal!',49.2827291,-123.12073750000002, './british-columbia1.jpeg'),
('Singapore', 'The is the place where exquisite design meets beauty and technology.',1.352083,103.81983600000001, './singapore1.jpeg'),
('Ecuador', 'Best place for delicious crabs!',-0.9537691000000001,-90.96560190000002, './ecuador1.jpeg'),
('Kenya', 'Exotic and rural at the same time!',-1.2920659,36.82194619999996, './kenya1.jpeg'),
('Ethiopia', 'Full of tribal history.',8.9806034,38.75776050000002, './ethiopia1.jpeg'),
('India', 'Full of life and color.',27.1750151,78.04215520000002, './india1.jpeg'),
('China', 'Land of wisdom and poise.',39.90419989999999,116.40739630000007, './china1.jpeg'),
('Germany', 'Much history and many places of beauty.',49.3987524,8.672433500000011, './germany1.jpeg'),
('Japan', 'This place is rich with culture and music. They are very skilled in the arts!',358.5541934,-134.47699309999996, './japan1.jpeg'),
('Alaska', 'So cold yet so lovely!',64.2008413,-149.4936733, './alaska1.jpeg');

-- favorites
INSERT INTO favorites
  (fave_notes, user_id, vacations_id)
VALUES
  ('Loved this place',1, 2),
  ('I am hoping for lots of time on the beach at this spot',2, 3),
  ('Looking forward to the scuba lessons and nice views',3, 1),
  ('They say the wine tasting is second to none',4, 4),
  ('I can not wait to checkout the igloo hotels',5, 5);
