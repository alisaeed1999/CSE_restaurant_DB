const express = require('express');
const bodyParser = require('body-parser');
const mysql = require('mysql');

const app = express();

let date = new Date();

let db = mysql.createConnection({
  host:'localhost',
  user: 'root',
  password:'Ali01125908919',
  database:'resturant'
});

db.connect(function(err){
  if(err)throw err;
  console.log('database is connected successfully');
});

// function select(table , data='*'){
//   let Data = {};
//   let query = 'SELECT ' + data + ' FROM ' + table;
//   db.query(query , function(err , rows , columns){
//     if (err) throw err;
//     for(let i1 = 0; i1<columns.length; i1++){
//         Data[columns[i1].name] = [];
//         for (let i2 = 0; i2 < rows.length; i2++) {
//             Data[columns[i1].name].push(rows[i2][columns[i1].name]);
//         }  
//     }
//     return Data
//   })
  
// }
// function insert (table , record , data=null){
//     let query = 'INSERT INTO '+ table +' ('+ record +') Values ('+data+')';
//     db.query(query, function(err, rows , columns){
//         if(err){
//           console.log('connection error: '+ err.stack)
//         }
//     })
// }

app.use(bodyParser.urlencoded({extended: true}));

app.use(express.static('static'));

app.set('view engine', 'ejs');


// ******************** home ************************* ok //
app.get('/',function(req , res){
  res.render('home');
})

// ********************** delivery file ********************* ok //
app.get('/delivery' , function(req , res){
  let Data = {};
  let query = 'SELECT * FROM delivery';
  db.query(query , function(err , rows , columns){
    if (err) throw err;
    for(let i1 = 0; i1<columns.length; i1++){
        Data[columns[i1].name] = [];
        for (let i2 = 0; i2 < rows.length; i2++) {
            Data[columns[i1].name].push(rows[i2][columns[i1].name]);
        }  
    }
    res.render('delivery' , Data);
  })
});

app.post('/addDelivery' , function(req , res){
  let query = 'insert into delivery (Del_Name , Phone) values (' + ['"'+req.body.name+'"' , '"'+req.body.phone+'"'] + ')';
  db.query(query, function(err, rows , columns){
        if(err){
          console.log('connection error: '+ err.stack)
        }
    })
  res.redirect('delivery');
})


// ******************** in Order file ********************** ok //
app.get('/inOrder' , function(req , res){
  let Data = {};
  let query = 'SELECT * FROM order_in';
  db.query(query , function(err , rows , columns){
    if (err) throw err;
    for(let i1 = 0; i1<columns.length; i1++){
        Data[columns[i1].name] = [];
        for (let i2 = 0; i2 < rows.length; i2++) {
            Data[columns[i1].name].push(rows[i2][columns[i1].name]);
        }  
    }
    res.render('inOrder' , Data);
  })
});

app.post('/addInOrder' , function(req , res){
  let query = 'insert into order_in (Table_id) values (' + Number(req.body.tableId)+ ')';
  db.query(query, function(err, rows , columns){
        if(err){
          console.log('connection error: '+ err.stack)
        }
    })
  res.redirect('inOrder');
})


// ********************************** tables *********************************** ok //
app.get('/tables' , function(req , res){
  let Data = {};
  let query = 'SELECT * FROM Tables';
  db.query(query , function(err , rows , columns){
    if (err) throw err;
    for(let i1 = 0; i1<columns.length; i1++){
        Data[columns[i1].name] = [];
        for (let i2 = 0; i2 < rows.length; i2++) {
            Data[columns[i1].name].push(rows[i2][columns[i1].name]);
        }  
    }
    res.render('tables' , Data);
  })
});

app.post('/addTables' , function(req , res){
  let query = 'insert into Tables (Status , Capacity) values (' + [req.body.status , Number(req.body.capacity)] + ')';
  db.query(query, function(err, rows , columns){
        if(err){
          console.log('connection error: '+ err.stack)
        }
    })
  res.redirect('tables');
})


// **************************** customer ****************************** ok //
app.get('/customer' , function(req , res){
  let Data = {};
  let query = 'SELECT * FROM Customer';
  db.query(query , function(err , rows , columns){
    if (err) throw err;
    for(let i1 = 0; i1<columns.length; i1++){
        Data[columns[i1].name] = [];
        for (let i2 = 0; i2 < rows.length; i2++) {
            Data[columns[i1].name].push(rows[i2][columns[i1].name]);
        }  
    }
    res.render('customer', Data);
  })
});

app.post('/addCustomer' , function(req , res){
  let query = 'insert into Customer (Cust_Name , cust_Address ,  Cust_Phone) values (' + ['"'+req.body.name+'"' , '"'+req.body.address+'"','"'+req.body.phone+'"'] + ')';
  db.query(query, function(err, rows , columns){
        if(err){
          console.log('connection error: '+ err.stack)
        }
    })
  res.redirect('customer');
})



// ******************************** department **************** ok // 
app.get('/department' , function(req , res){
  let Data = {};
  let query = 'SELECT * FROM Department';
  db.query(query , function(err , rows , columns){
    if (err) throw err;
    for(let i1 = 0; i1<columns.length; i1++){
        Data[columns[i1].name] = [];
        for (let i2 = 0; i2 < rows.length; i2++) {
            Data[columns[i1].name].push(rows[i2][columns[i1].name]);
        }  
    }
    res.render('department' , Data);
  })
});

app.post('/addDepartment' , function(req , res){
  let query = 'insert into Department (Dep_Name , Dep_Phone) values (' + ['"'+req.body.name+'"' , '"'+req.body.phone+'"'] + ')';
  db.query(query, function(err, rows , columns){
        if(err){
          console.log('connection error: '+ err.stack)
        }
    })
  res.redirect('department');
})



// *********************** employee ****************** ok //
app.get('/employee' , function(req , res){
  let Data = {};
  let query = 'SELECT * FROM employee';
  db.query(query , function(err , rows , columns){
    if (err) throw err;
    for(let i1 = 0; i1<columns.length; i1++){
        Data[columns[i1].name] = [];
        for (let i2 = 0; i2 < rows.length; i2++) {
            Data[columns[i1].name].push(rows[i2][columns[i1].name]);
        }  
    }
    res.render('employee' , Data);
  })
});

app.post('/addEmployee' , function(req , res){
  let query = 'INSERT INTO employee (Name,phone,Adress,Salary,Department_ID)VALUES('+['"'+req.body.name+'"','"'+req.body.phone+'"','"'+req.body.address+'"',parseFloat(req.body.salary) , Number(req.body.departmentId)]+')';
  db.query(query, function(err, rows , columns){
        if(err){
          console.log('connection error: '+ err.stack)
        }
    })
  res.redirect('employee');
})

// ******************************** in order details ************************** ok/ 
app.get('/inOrderDetails' , function(req , res){
  let Data = {};
  let query = 'SELECT * FROM order_in_detailes';
  db.query(query , function(err , rows , columns){
    if (err) throw err;
    for(let i1 = 0; i1<columns.length; i1++){
        Data[columns[i1].name] = [];
        for (let i2 = 0; i2 < rows.length; i2++) {
            Data[columns[i1].name].push(rows[i2][columns[i1].name]);
        }  
    }
    res.render('inOrderDetails' , Data);
  })
});

app.post('/addInOrderDetails' , function(req , res){
  let query = 'insert into order_in_detailes (order_no , menu_item_id , Quntity , price) values (' + [Number(req.body.orderNum),Number(req.body.menuItemId),Number(req.body.quntity),parseFloat(req.body.price)] + ')';
  db.query(query, function(err, rows , columns){
        if(err){
          console.log('connection error: '+ err.stack)
        }
    })
  res.redirect('inOrderDetails');
})


// ************************************* menu ****************************** ok //
app.get('/menu' , function(req , res){
  let Data = {};
  let query = 'SELECT * FROM menu_item';
  db.query(query , function(err , rows , columns){
    if (err) throw err;
    for(let i1 = 0; i1<columns.length; i1++){
        Data[columns[i1].name] = [];
        for (let i2 = 0; i2 < rows.length; i2++) {
            Data[columns[i1].name].push(rows[i2][columns[i1].name]);
        }  
    }
    res.render('menu' , Data);
  })
});

app.post('/addMenu' , function(req , res){
  let query = 'insert into menu_item (item_Name , item_Price) values (' + ['"'+req.body.name+'"' , parseFloat(req.body.price)] + ')';
  db.query(query, function(err, rows , columns){
        if(err){
          console.log('connection error: '+ err.stack)
        }
    })
  res.redirect('menu');
})


// *************************************** order details ******************** ok //
app.get('/orderDetails' , function(req , res){
  let Data = {};
  let query = 'SELECT * FROM order_details';
  db.query(query , function(err , rows , columns){
    if (err) throw err;
    for(let i1 = 0; i1<columns.length; i1++){
        Data[columns[i1].name] = [];
        for (let i2 = 0; i2 < rows.length; i2++) {
            Data[columns[i1].name].push(rows[i2][columns[i1].name]);
        }  
    }
    res.render('orderDetails' , Data);
  })
});

app.post('/addOrderDetails' , function(req , res){
  let query = 'insert into order_details (Order_ID , Menu_item_ID , Quantity , Total) values (' + [Number(req.body.orderNum),Number(req.body.menuItemId),Number(req.body.quntity),parseFloat(req.body.price)] + ')';
  db.query(query, function(err, rows , columns){
        if(err){
          console.log('connection error: '+ err.stack)
        }
    })
  res.redirect('orderDetails');
})


// ************************************ orders  ************************//
app.get('/orders' , function(req , res){
  let Data = {};
  let query = 'select order_no,sum(item_price)as "Total_Price" from resturant.order_in_detailes,resturant.menu_item where resturant.order_in_detailes.menu_item_id = resturant.menu_item.Item_ID group by resturant.order_in_detailes.order_no';
  db.query(query , function(err , rows , columns){
    if (err) throw err;
    for(let i1 = 0; i1<columns.length; i1++){
        Data[columns[i1].name] = [];
        for (let i2 = 0; i2 < rows.length; i2++) {
            Data[columns[i1].name].push(rows[i2][columns[i1].name]);
        }  
    }
    // console.log(Data);
    res.render('orders' , Data);
   })
});

// app.post('/addOrder' , function(req , res){
//   let query = 'insert into delivery (Del_Name , Phone) values (' + ['"'+req.body.name+'"' , '"'+req.body.phone+'"'] + ')';
//   db.query(query, function(err, rows , columns){
//         if(err){
//           console.log('connection error: '+ err.stack)
//         }
//     })
//   res.redirect('delivery');
// })
/**/

// *************************** out order ********************* ok //
app.get('/outOrder' , function(req , res){
  let Data = {};
  let query = 'SELECT * FROM Delivery_Order';
  db.query(query , function(err , rows , columns){
    if (err) throw err;
    for(let i1 = 0; i1<columns.length; i1++){
        Data[columns[i1].name] = [];
        for (let i2 = 0; i2 < rows.length; i2++) {
            Data[columns[i1].name].push(rows[i2][columns[i1].name]);
        }  
    }
    res.render('outOrder' , Data);
  })
});

app.post('/addOutOrder' , function(req , res){
  const options = { year: 'numeric', month: 'numeric', day: 'numeric' };
  let query = 'insert into Delivery_Order (Customer_ID , Order_Time , Delviery_ID) values (' + [Number(req.body.customerId) , date.toLocaleDateString('en-us' , options) , Number(req.body.deliveryId)] + ')';
  console.log(date.toLocaleDateString('en-us' , options));
  db.query(query, function(err, rows , columns){
        if(err){
          console.log('connection error: '+ err.stack)
        }
    })
  res.redirect('outOrder');
})


/* ******************** out order history ******************* */
app.get('/deliveryHist' , function(req , res){
  let Data = {};
  let query = 'select Order_ID,sum(item_price)as "Total_Price" from resturant.order_details,resturant.menu_item where resturant.order_details.Menu_item_ID = resturant.menu_item.Item_ID group by resturant.order_details.Order_ID';
  db.query(query , function(err , rows , columns){
    if (err) throw err;
    for(let i1 = 0; i1<columns.length; i1++){
        Data[columns[i1].name] = [];
        for (let i2 = 0; i2 < rows.length; i2++) {
            Data[columns[i1].name].push(rows[i2][columns[i1].name]);
        }  
    }
    // console.log(Data);
    res.render('ordersOut' , Data);
   })
})




app.listen(3000 , ()=> console.log('server running on port 3000'));
