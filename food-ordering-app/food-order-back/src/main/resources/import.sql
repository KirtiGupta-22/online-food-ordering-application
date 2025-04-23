
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

-- Inserting meal types
INSERT INTO meal_type (id, type_name, image, image_name, description, deleted) VALUES
(1, 'Pizza', 'https://cdn.pixabay.com/photo/2018/01/15/07/51/pizza-3082000_1280.jpg', 'pizza.jpg', 'Delicious pizzas', false),
(2, 'Burger', 'https://cdn.pixabay.com/photo/2016/11/19/12/00/hamburger-1840450_1280.jpg', 'burger.jpg', 'Tasty burgers', false),
(3, 'Sandwich', 'https://cdn.pixabay.com/photo/2016/11/29/09/08/sandwich-1869740_1280.jpg', 'sandwich.jpg', 'Fresh Sandwiches', false),
(4, 'Biryani', 'https://cdn.pixabay.com/photo/2016/11/29/09/08/biryani-1869741_1280.jpg', 'biryani.jpg', 'Flavorful Biryani', false),
(5, 'Thali', 'https://cdn.pixabay.com/photo/2016/11/29/09/08/thali-1869742_1280.jpg', 'thali.jpg', 'Complete Meals', false);

-- Inserting meals
INSERT INTO meal (id, name, price, image, image_name, description, meal_type_id) VALUES
(6, 'Pepperoni Pizza', 220, 'https://cdn.pixabay.com/photo/2018/01/15/07/51/pizza-3082000_1280.jpg', 'pizza.jpg', 'Classic pepperoni pizza with extra cheese', 1),
(7, 'Veggie Burger', 130, 'https://cdn.pixabay.com/photo/2016/11/19/12/00/hamburger-1840450_1280.jpg', 'burger.jpg', 'Grilled veggie burger with fresh toppings', 2),
(8, 'Club Sandwich', 150, 'https://cdn.pixabay.com/photo/2016/11/29/09/08/sandwich-1869740_1280.jpg', 'sandwich.jpg', 'Triple-decker sandwich with turkey and bacon', 3),
(9, 'Vegetable Biryani', 230, 'https://cdn.pixabay.com/photo/2016/11/29/09/08/biryani-1869741_1280.jpg', 'biryani.jpg', 'Aromatic rice with mixed vegetables', 4),
(10, 'Punjabi Thali', 350, 'https://cdn.pixabay.com/photo/2016/11/29/09/08/thali-1869742_1280.jpg', 'thali.jpg', 'A full platter of Punjabi delicacies', 5);

-- New meal types
INSERT INTO meal_type (id, type_name, image, image_name, description, deleted) VALUES
(6, 'Pasta', 'https://cdn.pixabay.com/photo/2018/01/15/07/51/pasta-3082001_1280.jpg', 'pasta.jpg', 'Delicious Pasta Dishes', false),
(7, 'Salad', 'https://cdn.pixabay.com/photo/2016/11/19/12/00/salad-1840451_1280.jpg', 'salad.jpg', 'Fresh and Healthy Salads', false),
(8, 'Dessert', 'https://cdn.pixabay.com/photo/2016/11/19/12/00/dessert-1840452_1280.jpg', 'dessert.jpg', 'Sweet Treats', false),
(9, 'Soup', 'https://cdn.pixabay.com/photo/2016/11/19/12/00/soup-1840453_1280.jpg', 'soup.jpg', 'Warm and Comforting Soups', false),
(10, 'Seafood', 'https://cdn.pixabay.com/photo/2016/11/19/12/00/seafood-1840454_1280.jpg', 'seafood.jpg', 'Fresh Seafood Dishes', false);

-- New meals
INSERT INTO meal (id, name, price, image, image_name, description, meal_type_id) VALUES
(11, 'Spaghetti Carbonara', 250, 'https://cdn.pixabay.com/photo/2018/01/15/07/51/pasta-3082001_1280.jpg', 'pasta.jpg', 'Classic Italian pasta with creamy sauce and pancetta', 6),
(12, 'Caesar Salad', 180, 'https://cdn.pixabay.com/photo/2016/11/19/12/00/salad-1840451_1280.jpg', 'salad.jpg', 'Crisp romaine lettuce with Caesar dressing and croutons', 7),
(13, 'Chocolate Cake', 150, 'https://cdn.pixabay.com/photo/2016/11/19/12/00/dessert-1840452_1280.jpg', 'dessert.jpg', 'Rich and moist chocolate cake with frosting', 8),
(14, 'Tomato Basil Soup', 120, 'https://cdn.pixabay.com/photo/2016/11/19/12/00/soup-1840453_1280.jpg', 'soup.jpg', 'Creamy tomato soup with fresh basil', 9),
(15, 'Grilled Salmon', 350, 'https://cdn.pixabay.com/photo/2016/11/19/12/00/seafood-1840454_1280.jpg', 'seafood.jpg', 'Perfectly grilled salmon served with lemon', 10);















































































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