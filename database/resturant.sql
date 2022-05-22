CREATE DATABASE resturant;
use resturant;
CREATE TABLE `Employee` (
	`Emp_ID` INT NOT NULL AUTO_INCREMENT,
	`Name` varchar(50) NOT NULL,
	`phone` varchar(50) NOT NULL,
	`Adress` varchar(50) NOT NULL,
	`Salary` DECIMAL NOT NULL,
	`Department_ID` INT NOT NULL,
	PRIMARY KEY (`Emp_ID`)
);

CREATE TABLE `Department` (
	`Dep_ID` INT NOT NULL AUTO_INCREMENT,
	`Dep_Name` varchar(100) NOT NULL,
	`Dep_Phone` varchar(20) NOT NULL,
	PRIMARY KEY (`Dep_ID`)
);

CREATE TABLE `Menu_item` (
	`Item_ID` INT NOT NULL AUTO_INCREMENT,
	`Item_Name` varchar(255) NOT NULL,
	`item_price` DECIMAL NOT NULL,
	PRIMARY KEY (`Item_ID`)
);

CREATE TABLE `Customer` (
	`Cust_ID` INT NOT NULL AUTO_INCREMENT,
	`Cust_Name` varchar(100) NOT NULL,
	`Cust_Phone` varchar(100) NOT NULL,
	`cust_Address` varchar(255) NOT NULL,
	PRIMARY KEY (`Cust_ID`)
);

CREATE TABLE `Delivery_Order` (
	`Order_ID` INT(255) NOT NULL AUTO_INCREMENT,
	`Customer_ID` INT NOT NULL,
	`Order_Time` TIME NOT NULL,
	`Delviery_ID` INT NOT NULL,
	PRIMARY KEY (`Order_ID`)
);

CREATE TABLE `Delivery` (
	`Del_ID` INT NOT NULL AUTO_INCREMENT,
	`Del_Name` varchar(50) NOT NULL,
	`Phone` varchar(50) NOT NULL,
	PRIMARY KEY (`Del_ID`)
);

CREATE TABLE `Order_Details` (
	`Order_ID` INT NOT NULL,
	`Menu_item_ID` INT NOT NULL,
	`Quantity` INT NOT NULL,
	`Total` DECIMAL NOT NULL
);

CREATE TABLE `Tables` (
	`Table_ID` INT NOT NULL AUTO_INCREMENT,
	`Status` BOOLEAN NOT NULL,
	`Capacity` INT NOT NULL,
	PRIMARY KEY (`Table_ID`)
);

CREATE TABLE `Order_in` (
	`order_no` INT NOT NULL AUTO_INCREMENT,
	`Table_id` INT NOT NULL,
	PRIMARY KEY (`order_no`)
);

CREATE TABLE `order_in_detailes` (
	`order_no` INT NOT NULL,
	`menu_item_id` INT NOT NULL,
	`Quntity` INT NOT NULL,
	`price` DECIMAL NOT NULL
);

ALTER TABLE `Employee` ADD CONSTRAINT `Employee_fk0` FOREIGN KEY (`Department_ID`) REFERENCES `Department`(`Dep_ID`);


ALTER TABLE `Delivery_Order` ADD CONSTRAINT `Delivery_Order_fk1` FOREIGN KEY (`Delviery_ID`) REFERENCES `Delivery`(`Del_ID`);

ALTER TABLE `Order_Details` ADD CONSTRAINT `Order Details_fk0` FOREIGN KEY (`Order_ID`) REFERENCES `Delivery_Order`(`Order_ID`);

ALTER TABLE `Order_Details` ADD CONSTRAINT `Order Details_fk1` FOREIGN KEY (`Menu_item_ID`) REFERENCES `Menu_item`(`Item_ID`);

ALTER TABLE `Order_in` ADD CONSTRAINT `Order_in_fk0` FOREIGN KEY (`Table_id`) REFERENCES `Tables`(`Table_ID`);

ALTER TABLE `order_in_detailes` ADD CONSTRAINT `order_in_detailes_fk0` FOREIGN KEY (`order_no`) REFERENCES `Order_in`(`order_no`);

ALTER TABLE `order_in_detailes` ADD CONSTRAINT `order_in_detailes_fk1` FOREIGN KEY (`menu_item_id`) REFERENCES `Menu_item`(`Item_ID`);