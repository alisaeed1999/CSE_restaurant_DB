-- Insert into sql11494410.Department (Dep_Name, Dep_Phone) values ( "CASHER","0100" );
-- Insert into sql11494410.Department (Dep_Name, Dep_Phone) values ( "WAITER","0101" );
-- Insert into sql11494410.Department (Dep_Name, Dep_Phone) values ( "CHEF","0102" );
-- Insert into sql11494410.Department (Dep_Name, Dep_Phone) values ( "MANAGER","0103" );


-- Insert into sql11494410.Employee (Name, phone, Adress, Salary, Department_ID) values ('ahmed' , 010011 ,'cairo' ,2000 ,2 );
-- Insert into sql11494410.Employee (Name, phone, Adress, Salary, Department_ID) values ('hassan' , 010012 ,'zagazig' ,1000 ,2 );
-- Insert into sql11494410.Employee (Name, phone, Adress, Salary, Department_ID) values ('mahmoud' , 011010 ,'mansoura' ,1500 ,3 );
-- Insert into sql11494410.Employee (Name, phone, Adress, Salary, Department_ID) values ('abdalla' , 010010 ,'cairo' ,2500 ,3 );
-- Insert into sql11494410.Employee (Name, phone, Adress, Salary, Department_ID) values ('abd alrahman' , 010012 ,'cairo' ,1600 ,4 );
-- Insert into sql11494410.Employee (Name, phone, Adress, Salary, Department_ID) values ('ali' , 010011 ,'10th or ramdan' ,1700 ,2 );

-- Insert into sql11494410.Menu_item (Item_Name, item_price) values ('GARLIC BREAD' , 3);
-- Insert into sql11494410.Menu_item (Item_Name, item_price) values ('BUTTERFLY BUFFALO SHRIMP' , 7 ) ; 
-- Insert into sql11494410.Menu_item (Item_Name, item_price) values ('CHEESE FRIES' ,45 ) ; 
-- Insert into sql11494410.Menu_item (Item_Name, item_price) values ('CHILI CHEESE FRIES' ,70 ) ; 
-- Insert into sql11494410.Menu_item (Item_Name, item_price) values ('CHICKEN GYRO' , 110) ; 
-- Insert into sql11494410.Menu_item (Item_Name, item_price) values ('TIROPITA' ,16 ) ; 
-- Insert into sql11494410.Menu_item (Item_Name, item_price) values ('CHICKEN TENDERS' , 65) ; 
-- Insert into sql11494410.Menu_item (Item_Name, item_price) values ('CHICKEN WINGS' ,55 ) ; 
-- Insert into sql11494410.Menu_item (Item_Name, item_price) values ('CHICKEN SAGANAKI' ,73 ) ; 


-- Insert into sql11494410.Delivery (Del_Name, Phone) values ( 'mahmed','010011' );
-- Insert into sql11494410.Delivery (Del_Name, Phone) values ( 'mahmoud','010012' );
-- Insert into sql11494410.Delivery (Del_Name, Phone) values ( 'ali','011011' ); 


-- Insert into sql11494410.Tables (Status, Capacity) values ( 0,4 );
-- Insert into sql11494410.Tables (Status, Capacity) values ( 1,4 );
-- Insert into sql11494410.Tables (Status, Capacity) values ( 1,4 );
-- Insert into sql11494410.Tables (Status, Capacity) values ( 0,4 );
-- Insert into sql11494410.Tables (Status, Capacity) values ( 1,4 );
-- Insert into sql11494410.Tables (Status, Capacity) values ( 0,4 );
-- Insert into sql11494410.Tables (Status, Capacity) values ( 1,4 );



-- Insert into sql11494410.Customer (Cust_Name, Cust_Phone, cust_Address) values ('ali' , '010011','cairo' );
-- Insert into sql11494410.Customer (Cust_Name, Cust_Phone, cust_Address) values ('ahmed' , '012011','cairo' );
-- Insert into sql11494410.Customer (Cust_Name, Cust_Phone, cust_Address) values ('mahmoud' , '010010','cairo' );
-- Insert into sql11494410.Customer (Cust_Name, Cust_Phone, cust_Address) values ('hassan' , '010011','cairo' );




-- Insert into sql11494410.Delivery_Order (Customer_ID,Order_Time , Delviery_ID) values ( 6,'13:30',2 );




-- Insert into sql11494410.Order_in (Table_id) values (1);
-- Insert into sql11494410.Order_in (Table_id) values (3);
-- Insert into sql11494410.Order_in (Table_id) values (4);
-- Insert into sql11494410.Order_in (Table_id) values (7);
-- Insert into sql11494410.Order_in (Table_id) values (2);
-- Insert into sql11494410.Order_in (Table_id) values (5);



-- Insert into sql11494410.order_in_detailes (order_no,Menu_item_id, Quntity, price) values (2,1 ,2 ,0 );
-- Insert into sql11494410.order_in_detailes (order_no,Menu_item_id, Quntity, price) values (2,2 ,2 ,0 );
-- Insert into sql11494410.order_in_detailes (order_no,Menu_item_id, Quntity, price) values (2,7 ,2 ,0 );
-- Insert into sql11494410.order_in_detailes (order_no,Menu_item_id, Quntity, price) values (3,1 ,2 ,0 );
-- Insert into sql11494410.order_in_detailes (order_no,Menu_item_id, Quntity, price) values (3,2 ,2 ,0 );
-- Insert into sql11494410.order_in_detailes (order_no,Menu_item_id, Quntity, price) values (4,3 ,2 ,0 );
-- Insert into sql11494410.order_in_detailes (order_no,Menu_item_id, Quntity, price) values (4,4 ,2 ,0 );
-- Insert into sql11494410.order_in_detailes (order_no,Menu_item_id, Quntity, price) values (4,5 ,2 ,0 );
-- Insert into sql11494410.order_in_detailes (order_no,Menu_item_id, Quntity, price) values (5,6 ,2 ,0 );
-- Insert into sql11494410.order_in_detailes (order_no,Menu_item_id, Quntity, price) values (6,7 ,2 ,0 );
-- Insert into sql11494410.order_in_detailes (order_no,Menu_item_id, Quntity, price) values (6,8 ,2 ,0 );





-- Insert into sql11494410.Order_Details (Order_ID,menu_item_ID, Quantity, Total) values ( 1, 1,3 , 0);
-- Insert into sql11494410.Order_Details (Order_ID,menu_item_ID, Quantity, Total) values ( 1, 2,3 , 0);
Insert into sql11494410.Order_Details (Order_ID,menu_item_ID, Quantity, Total) values ( 2, 2,3 , 0);
Insert into sql11494410.Order_Details (Order_ID,menu_item_ID, Quantity, Total) values ( 2, 2,3 , 0);
Insert into sql11494410.Order_Details (Order_ID,menu_item_ID, Quantity, Total) values ( 3, 2,3 , 0);
Insert into sql11494410.Order_Details (Order_ID,menu_item_ID, Quantity, Total) values ( 3, 2,3 , 0);
Insert into sql11494410.Order_Details (Order_ID,menu_item_ID, Quantity, Total) values ( 3, 2,3 , 0);
Insert into sql11494410.Order_Details (Order_ID,menu_item_ID, Quantity, Total) values ( 2, 1,3 , 0);
Insert into sql11494410.Order_Details (Order_ID,menu_item_ID, Quantity, Total) values ( 1, 3,3 , 0);
Insert into sql11494410.Order_Details (Order_ID,menu_item_ID, Quantity, Total) values ( 3, 2,3 , 0);
Insert into sql11494410.Order_Details (Order_ID,menu_item_ID, Quantity, Total) values ( 2, 1,3 , 0);
Insert into sql11494410.Order_Details (Order_ID,menu_item_ID, Quantity, Total) values ( 1, 2,3 , 0);
Insert into sql11494410.Order_Details (Order_ID,menu_item_ID, Quantity, Total) values ( 3, 3,3 , 0);
Insert into sql11494410.Order_Details (Order_ID,menu_item_ID, Quantity, Total) values ( 2, 3,3 , 0);
Insert into sql11494410.Order_Details (Order_ID,menu_item_ID, Quantity, Total) values ( 1, 1,3 , 0);

