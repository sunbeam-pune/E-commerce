CREATE TABLE `user_roles`(
    `user_id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `role_id` BIGINT NOT NULL
);
CREATE TABLE `user_addr_join`(
    `user_id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `address_id` BIGINT NOT NULL
);
CREATE TABLE `user_payment_details`(
    `user_payment_id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `user_id` BIGINT NOT NULL,
    `acc_name` VARCHAR(255) NOT NULL,
    `bank_name` VARCHAR(255) NOT NULL,
    `card_no` BIGINT NOT NULL,
    `expiry_date` BIGINT NOT NULL,
    `default` TINYINT(1) NOT NULL
);
CREATE TABLE `Product`(
    `product_id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `product_name` VARCHAR(255) NOT NULL,
    `price` DOUBLE NOT NULL,
    `category` VARCHAR(255) NOT NULL,
    `unit_stock` BIGINT NOT NULL,
    `product_desc` BLOB NOT NULL,
    `product_image` VARCHAR(255) NOT NULL
);
CREATE TABLE `user_queries`(
    `user_queries_id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `user_id` BIGINT NOT NULL,
    `subject` VARCHAR(255) NOT NULL,
    `description` BLOB NOT NULL,
    `order_id` BIGINT NULL
);
CREATE TABLE `payments`(
    `payment_id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `user_id` BIGINT NOT NULL,
    `order_id` BIGINT NOT NULL,
    `mode` VARCHAR(255) NOT NULL,
    `total_ammont` DOUBLE NOT NULL,
    `payment_status` TINYINT(1) NOT NULL,
    `time_stamp` TIMESTAMP NOT NULL
);
CREATE TABLE `roles_tbl`(
    `role_id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `role_name` VARCHAR(255) NOT NULL
);
CREATE TABLE `review`(
    `review_id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `user_id` BIGINT NOT NULL,
    `ordered_product_id` BIGINT NOT NULL,
    `rating_value` BIGINT NOT NULL,
    `comment` VARCHAR(255) NOT NULL
);
CREATE TABLE `user_address`(
    `address_id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `house_no` VARCHAR(255) NOT NULL,
    `landmark` VARCHAR(255) NOT NULL,
    `city` VARCHAR(255) NOT NULL,
    `pincode` BIGINT NOT NULL,
    `country` VARCHAR(255) NOT NULL
);
CREATE TABLE `user`(
    `user_id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `f_name` VARCHAR(255) NOT NULL,
    `L_name` VARCHAR(255) NOT NULL,
    `email` VARCHAR(255) NOT NULL,
    `password` VARCHAR(255) NOT NULL,
    `mob_no` BIGINT NOT NULL,
    `gender` ENUM('') NOT NULL
);
CREATE TABLE `ordered_products`(
    `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `product_id` BIGINT NOT NULL,
    `order_id` BIGINT NOT NULL,
    `quantity` BIGINT NOT NULL,
    `price` DOUBLE NOT NULL,
    `time_stamp` TIMESTAMP NOT NULL
);
CREATE TABLE `order`(
    `order_id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `user_id` BIGINT NOT NULL,
    `order_date` DATETIME NOT NULL,
    `payment_method_id` BIGINT NOT NULL,
    `user_address_id` BIGINT NOT NULL,
    `order_total` DOUBLE NOT NULL,
    `order_status` TINYINT(1) NOT NULL
);
CREATE TABLE `cart`(
    `cart_id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `user_id` BIGINT NOT NULL,
    `product_id` BIGINT NOT NULL,
    `quantity` BIGINT NOT NULL
);
ALTER TABLE
    `user_addr_join` ADD CONSTRAINT `user_addr_join_address_id_foreign` FOREIGN KEY(`address_id`) REFERENCES `user_address`(`address_id`);
ALTER TABLE
    `ordered_products` ADD CONSTRAINT `ordered_products_order_id_foreign` FOREIGN KEY(`order_id`) REFERENCES `order`(`order_id`);
ALTER TABLE
    `review` ADD CONSTRAINT `review_user_id_foreign` FOREIGN KEY(`user_id`) REFERENCES `user`(`user_id`);
ALTER TABLE
    `cart` ADD CONSTRAINT `cart_product_id_foreign` FOREIGN KEY(`product_id`) REFERENCES `Product`(`product_id`);
ALTER TABLE
    `payments` ADD CONSTRAINT `payments_user_id_foreign` FOREIGN KEY(`user_id`) REFERENCES `user`(`user_id`);
ALTER TABLE
    `order` ADD CONSTRAINT `order_user_address_id_foreign` FOREIGN KEY(`user_address_id`) REFERENCES `user_address`(`address_id`);
ALTER TABLE
    `user_queries` ADD CONSTRAINT `user_queries_user_id_foreign` FOREIGN KEY(`user_id`) REFERENCES `user`(`user_id`);
ALTER TABLE
    `user_queries` ADD CONSTRAINT `user_queries_order_id_foreign` FOREIGN KEY(`order_id`) REFERENCES `order`(`order_id`);
ALTER TABLE
    `user` ADD CONSTRAINT `user_email_foreign` FOREIGN KEY(`email`) REFERENCES `user_roles`(`user_id`);
ALTER TABLE
    `ordered_products` ADD CONSTRAINT `ordered_products_id_foreign` FOREIGN KEY(`id`) REFERENCES `Product`(`product_id`);
ALTER TABLE
    `cart` ADD CONSTRAINT `cart_user_id_foreign` FOREIGN KEY(`user_id`) REFERENCES `user`(`user_id`);
ALTER TABLE
    `order` ADD CONSTRAINT `order_user_id_foreign` FOREIGN KEY(`user_id`) REFERENCES `user`(`user_id`);
ALTER TABLE
    `user_roles` ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY(`user_id`) REFERENCES `roles_tbl`(`role_id`);
ALTER TABLE
    `user_payment_details` ADD CONSTRAINT `user_payment_details_user_id_foreign` FOREIGN KEY(`user_id`) REFERENCES `user`(`user_id`);
ALTER TABLE
    `user_addr_join` ADD CONSTRAINT `user_addr_join_user_id_foreign` FOREIGN KEY(`user_id`) REFERENCES `user`(`user_id`);
ALTER TABLE
    `ordered_products` ADD CONSTRAINT `ordered_products_product_id_foreign` FOREIGN KEY(`product_id`) REFERENCES `review`(`ordered_product_id`);
ALTER TABLE
    `payments` ADD CONSTRAINT `payments_order_id_foreign` FOREIGN KEY(`order_id`) REFERENCES `order`(`order_id`);