Insert into resturant.employee (Name, phone, Adress, Salary, Department_ID) values ('ahmed' , 010011 ,'cairo' ,2000 ,2 );
Insert into resturant.employee (Name, phone, Adress, Salary, Department_ID) values ('hassan' , 010012 ,'zagazig' ,1000 ,2 );
Insert into resturant.employee (Name, phone, Adress, Salary, Department_ID) values ('mahmoud' , 011010 ,'mansoura' ,1500 ,3 );
Insert into resturant.employee (Name, phone, Adress, Salary, Department_ID) values ('abdalla' , 010010 ,'cairo' ,2500 ,3 );
Insert into resturant.employee (Name, phone, Adress, Salary, Department_ID) values ('abd alrahman' , 010012 ,'cairo' ,1600 ,4 );
Insert into resturant.employee (Name, phone, Adress, Salary, Department_ID) values ('ali' , 010011 ,'10th or ramdan' ,1700 ,2 );

Insert into resturant.menu_item (Item_Name, item_price) values ('GARLIC BREAD' , 3);
Insert into resturant.menu_item (Item_Name, item_price) values ('BUTTERFLY BUFFALO SHRIMP' , 7 ) ; 
Insert into resturant.menu_item (Item_Name, item_price) values ('CHEESE FRIES' ,45 ) ; 
Insert into resturant.menu_item (Item_Name, item_price) values ('CHILI CHEESE FRIES' ,70 ) ; 
Insert into resturant.menu_item (Item_Name, item_price) values ('CHICKEN GYRO' , 110) ; 
Insert into resturant.menu_item (Item_Name, item_price) values ('TIROPITA' ,16 ) ; 
Insert into resturant.menu_item (Item_Name, item_price) values ('CHICKEN TENDERS' , 65) ; 
Insert into resturant.menu_item (Item_Name, item_price) values ('CHICKEN WINGS' ,55 ) ; 
Insert into resturant.menu_item (Item_Name, item_price) values ('CHICKEN SAGANAKI' ,73 ) ; 


Insert into resturant.delivery (Del_Name, Phone) values ( 'mahmed','010011' );
Insert into resturant.delivery (Del_Name, Phone) values ( 'mahmoud','010012' );
Insert into resturant.delivery (Del_Name, Phone) values ( 'ali','011011' ); 


Insert into resturant.tables (Status, Capacity) values ( 0,4 );
Insert into resturant.tables (Status, Capacity) values ( 1,4 );
Insert into resturant.tables (Status, Capacity) values ( 1,4 );
Insert into resturant.tables (Status, Capacity) values ( 0,4 );
Insert into resturant.tables (Status, Capacity) values ( 1,4 );
Insert into resturant.tables (Status, Capacity) values ( 0,4 );
Insert into resturant.tables (Status, Capacity) values ( 1,4 );



Insert into resturant.customer (Cust_Name, Cust_Phone, cust_Address) values ('ali' , '010011','cairo' );
Insert into resturant.customer (Cust_Name, Cust_Phone, cust_Address) values ('ahmed' , '012011','cairo' );
Insert into resturant.customer (Cust_Name, Cust_Phone, cust_Address) values ('mahmoud' , '010010','cairo' );
Insert into resturant.customer (Cust_Name, Cust_Phone, cust_Address) values ('hassan' , '010011','cairo' );




Insert into resturant.delivery_order (Customer_ID,Order_Time , Delviery_ID) values ( 6,'13:30',2 );

use resturant;
ALTER TABLE `Delivery_Order` ADD CONSTRAINT `Delivery_Order_fk1` FOREIGN KEY (`Delviery_ID`) REFERENCES `Delivery`(`Del_ID`);



Insert into resturant.order_in (Table_id) values (1);
Insert into resturant.order_in (Table_id) values (3);
Insert into resturant.order_in (Table_id) values (4);
Insert into resturant.order_in (Table_id) values (7);
Insert into resturant.order_in (Table_id) values (2);
Insert into resturant.order_in (Table_id) values (5);



Insert into resturant.order_in_detailes (order_no,menu_item_id, Quntity, price) values (2,1 ,2 ,0 );
Insert into resturant.order_in_detailes (order_no,menu_item_id, Quntity, price) values (2,2 ,2 ,0 );
Insert into resturant.order_in_detailes (order_no,menu_item_id, Quntity, price) values (2,7 ,2 ,0 );
Insert into resturant.order_in_detailes (order_no,menu_item_id, Quntity, price) values (3,1 ,2 ,0 );
Insert into resturant.order_in_detailes (order_no,menu_item_id, Quntity, price) values (3,2 ,2 ,0 );
Insert into resturant.order_in_detailes (order_no,menu_item_id, Quntity, price) values (4,3 ,2 ,0 );
Insert into resturant.order_in_detailes (order_no,menu_item_id, Quntity, price) values (4,4 ,2 ,0 );
Insert into resturant.order_in_detailes (order_no,menu_item_id, Quntity, price) values (4,5 ,2 ,0 );
Insert into resturant.order_in_detailes (order_no,menu_item_id, Quntity, price) values (5,6 ,2 ,0 );
Insert into resturant.order_in_detailes (order_no,menu_item_id, Quntity, price) values (6,7 ,2 ,0 );
Insert into resturant.order_in_detailes (order_no,menu_item_id, Quntity, price) values (6,8 ,2 ,0 );
Insert into resturant.order_in_detailes (order_no,menu_item_id, Quntity, price) values (7,9 ,2 ,0 );
Insert into resturant.order_in_detailes (order_no,menu_item_id, Quntity, price) values (7,3 ,2 ,0 );
Insert into resturant.order_in_detailes (order_no,menu_item_id, Quntity, price) values (7,4 ,2 ,0 );

use resturant;
CREATE TABLE `Delivery_Order` (
	`Order_ID` INT NOT NULL AUTO_INCREMENT,
	`Customer_ID` INT NOT NULL,
	`Order_Time` TIME NOT NULL,
	`Delviery_ID` INT NOT NULL,
	PRIMARY KEY (`Order_ID`)
);

ALTER TABLE `Delivery_Order` ADD CONSTRAINT `Delivery_Order_fk0` FOREIGN KEY (`Customer_ID`) REFERENCES `Customer`(`Cust_ID`);
ALTER TABLE `Delivery_Order` ADD CONSTRAINT `Delivery_Order_fk1` FOREIGN KEY (`Delviery_ID`) REFERENCES `Delivery`(`Del_ID`);


Insert into resturant.order_details (Order_ID,Menu_item_ID, Quantity, Total) values ( 1, 1,3 , 0);
Insert into resturant.order_details (Order_ID,Menu_item_ID, Quantity, Total) values ( 1, 2,3 , 0);
Insert into resturant.order_details (Order_ID,Menu_item_ID, Quantity, Total) values ( 2, 5,3 , 0);
Insert into resturant.order_details (Order_ID,Menu_item_ID, Quantity, Total) values ( 2, 7,3 , 0);
Insert into resturant.order_details (Order_ID,Menu_item_ID, Quantity, Total) values ( 3, 8,3 , 0);
Insert into resturant.order_details (Order_ID,Menu_item_ID, Quantity, Total) values ( 3, 2,3 , 0);
Insert into resturant.order_details (Order_ID,Menu_item_ID, Quantity, Total) values ( 3, 2,3 , 0);
Insert into resturant.order_details (Order_ID,Menu_item_ID, Quantity, Total) values ( 4, 1,3 , 0);
Insert into resturant.order_details (Order_ID,Menu_item_ID, Quantity, Total) values ( 4, 6,3 , 0);
Insert into resturant.order_details (Order_ID,Menu_item_ID, Quantity, Total) values ( 4, 4,3 , 0);
Insert into resturant.order_details (Order_ID,Menu_item_ID, Quantity, Total) values ( 5, 6,3 , 0);
Insert into resturant.order_details (Order_ID,Menu_item_ID, Quantity, Total) values ( 5, 4,3 , 0);
Insert into resturant.order_details (Order_ID,Menu_item_ID, Quantity, Total) values ( 6, 8,3 , 0);
Insert into resturant.order_details (Order_ID,Menu_item_ID, Quantity, Total) values ( 7, 9,3 , 0);
Insert into resturant.order_details (Order_ID,Menu_item_ID, Quantity, Total) values ( 7, 7,3 , 0);
Insert into resturant.order_details (Order_ID,Menu_item_ID, Quantity, Total) values ( 9, 8,3 , 0);
Insert into resturant.order_details (Order_ID,Menu_item_ID, Quantity, Total) values ( 9, 2,3 , 0);



Insert into Delivery_Order (Customer_ID, Order_Time,Delviery_ID) values ( 6,'06:30:40',4 );
