
INSERT INTO meal_type (id, description, image, image_name, is_deleted, type_name) VALUES
(1, 'Cheesy pizzas', 'https://cdn.pixabay.com/photo/2017/12/09/08/18/pizza-3007395_1280.jpg', 'pizza.jpg', 0, 'Pizza'),
(2, 'Juicy burgers', 'https://cdn.pixabay.com/photo/2016/03/05/19/02/hamburger-1238246_1280.jpg', 'burger.jpg', 0, 'Burger'),
(3, 'Grilled Sandwiches', 'https://cdn.pixabay.com/photo/2019/04/08/18/35/sandwich-4112566_640.jpg', 'sandwich.jpg', 0, 'Sandwich'),
(4, 'Delicious Biryani', 'https://cdn.pixabay.com/photo/2022/06/14/18/57/chicken-biryani-7262650_640.jpg', 'biryani.jpg', 0, 'Biryani'),
(5, 'Traditional Meals', 'https://cdn.pixabay.com/photo/2012/07/09/07/16/thali-51996_1280.jpg', 'thali.jpg', 0, 'Thali');

INSERT INTO meal (id, name, description, image, image_name, is_deleted, price, meal_type_id) VALUES
(1, 'Margherita Pizza', 'Classic cheese pizza', 'https://cdn.pixabay.com/photo/2017/12/09/08/18/pizza-3007395_1280.jpg', 'pizza.jpg', 0, 200, 1),
(2, 'Chicken Burger', 'Spicy grilled chicken burger', 'https://cdn.pixabay.com/photo/2016/03/05/19/02/hamburger-1238246_1280.jpg', 'burger.jpg', 0, 150, 2),
(3, 'Paneer Sandwich', 'Toasted sandwich with paneer', 'https://cdn.pixabay.com/photo/2019/04/08/18/35/sandwich-4112566_640.jpg', 'sandwich.jpg', 0, 120, 3),
(4, 'Hyderabadi Biryani', 'Spicy rice and meat dish', 'https://cdn.pixabay.com/photo/2022/06/14/18/57/chicken-biryani-7262650_640.jpg', 'biryani.jpg', 0, 250, 4),
(5, 'Gujarati Thali', 'A full Indian meal plate', 'https://cdn.pixabay.com/photo/2012/07/09/07/16/thali-51996_1280.jpg', 'thali.jpg', 0, 300, 5);

INSERT INTO user (id, address, deleted, email, first_name, last_name, password, phone_number, role, username) VALUES
(1, '123 Food Street', 0, 'testuser@example.com', 'Test', 'User', 'password123', '9876543210', 1, 'testuser');


INSERT INTO final_order (id, address, date, final_price, phone_number, status, user_id) VALUES
(1, '123 Food Street', NOW(), 470, '9876543210', 'PLACED', 1);


INSERT INTO order_item (id, meal_description, meal_image, meal_image_name, meal_name, meal_price, meal_type_name, quantity, final_order_id, meal_id) VALUES
(1, 'Classic cheese pizza', 'https://cdn.pixabay.com/photo/2017/12/09/08/18/pizza-3007395_1280.jpg', 'pizza.jpg', 'Margherita Pizza', 200, 'Pizza', 1, 1, 1),
(2, 'Spicy grilled chicken burger', 'https://cdn.pixabay.com/photo/2016/03/05/19/02/hamburger-1238246_1280.jpg', 'burger.jpg', 'Chicken Burger', 150, 'Burger', 1, 1, 2),
(3, 'Toasted sandwich with paneer', 'https://cdn.pixabay.com/photo/2019/04/08/18/35/sandwich-4112566_640.jpg', 'sandwich.jpg', 'Paneer Sandwich', 120, 'Sandwich', 1, 1, 3);













































































--insert into foodorderdb.user (id, address, deleted, email, first_name, last_name, password, phone_number, role, username) values (1, "Hajduk Veljkova 12", false, "cileb411@gmail.com", "Kristijan", "Bujak", "123", "060123456", 1, "a");
--insert into foodorderdb.user (id, address, deleted, email, first_name, last_name, password, phone_number, role, username) values (2, "Zeleznicka 12", false, "lavezzimario46@gmail.com", "Marko", "Markovic", "123", "0611234321", 0, "b");
--insert into foodorderdb.user (id, address, deleted, email, first_name, last_name, password, phone_number, role, username) values (3, "Zeleznicka 12", false, "lasadasdario46@gmail.com", "Marko", "Markovic", "123", "0611234321", 2, "c");
--
--
--insert into foodorderdb.meal_type (id, type_name) values (1, "PIZZA");
--insert into foodorderdb.meal_type (id, type_name) values (2, "MAIN COURSE");
--insert into foodorderdb.meal_type (id, type_name) values (3, "SALAD");
--insert into foodorderdb.meal_type (id, type_name) values (4, "PANCAKE");
--insert into foodorderdb.meal_type (id, type_name) values (5, "BURGER");
--insert into foodorderdb.meal_type (id, type_name) values (6, "PASTA");
--
--insert into foodorderdb.meal (id, name, price, meal_type_id) values (1, "CAPRICCIOSA", 600, 1);
--insert into foodorderdb.meal (id, name, price, meal_type_id) values (2, "SLATKA PALACINKA", 600, 4);
--insert into foodorderdb.meal (id, name, price, meal_type_id) values (3, "RUSKA SALATA", 600, 3);
--insert into foodorderdb.meal (id, name, price, meal_type_id) values (4, "NESTOOO", 600, 3);