-- Sample Data for "account" table
INSERT INTO "Account" (id, name, user_name, description) VALUES
(1, 'Tech Supply Co.', 'tech_supply', 'Supplier of tech equipment and gadgets'),
(2, 'Home Essentials Inc.', 'home_essentials', 'Retailer of household goods'),
(3, 'Office Works', 'office_works', 'Office supplies and furniture store');

-- Sample Data for "product_category" table
INSERT INTO "ProductCategory" (id, parent_category, account_id, name, description) VALUES
(1, NULL, 1, 'Electronics', 'Devices like phones, computers, and tablets'),
(2, 1, 1, 'Laptops', 'All types of laptops'),
(3, NULL, 2, 'Home Appliances', 'Kitchen and home appliances'),
(4, NULL, 3, 'Office Furniture', 'Chairs, desks, and other furniture for offices');

-- Sample Data for "product" table
INSERT INTO "Product" (id, account_id, description, product_category_id, name, barcode_content) VALUES
(1, 1, 'Latest model of the MacBook Pro', 2, 'MacBook Pro 16"', '123456789012'),
(2, 1, 'High-performance gaming laptop', 2, 'Alienware X15', '987654321098'),
(3, 2, 'Energy-efficient microwave oven', 3, 'Samsung Microwave', '234567890123'),
(4, 3, 'Ergonomic office chair', 4, 'Herman Miller Aeron', '345678901234');

-- Sample Data for "lote" table
INSERT INTO "Lote" (id, product_id, quantity_minimum, quantity_current, expiration_date, creation_date, purchase_price) VALUES
(1, 1, 5, 12, '2026-12-31', '2024-09-15', 2000.00),
(2, 2, 3, 7, NULL, '2024-09-16', 1500.00),
(3, 3, 10, 25, '2025-06-30', '2024-09-17', 300.00),
(4, 4, 2, 5, NULL, '2024-09-17', 1200.00);

-- Sample Data for "lote_updates" table
INSERT INTO "LoteUpdates" (id, stock_id, update_time, quantity_delta) VALUES
(1, 1, '2024-09-18 10:00:00', -2),
(2, 1, '2024-09-20 12:30:00', 3),
(3, 2, '2024-09-18 14:45:00', -1),
(4, 3, '2024-09-19 09:15:00', -5);

-- Sample Data for "shopping_list" table
INSERT INTO "ShoppingList" (stock_id, count) VALUES
(1, 3),
(3, 5),
(4, 2);
