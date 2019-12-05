var express = require('express');
var router = express.Router();
var bodyParser = require('body-parser');
var urlencodedParser = bodyParser.urlencoded({ extended: false });
var mysql      = require('mysql');
function createCon(){
var connection = mysql.createConnection({
  host     : 'localhost',
  user     : 'root',
  password :  '' ,
  database : 'rafting'
});

connection.connect();

return connection;
}
/* GET home page. */
router.get('/', function(req, res, next) {
  res.render('index');
});
router.get('/data', function(req, res) {
  res.render('admin-panel/dashboard');
});

// admin routes
router.post('/data',urlencodedParser, function(req, res) {
  // connection.resume();
  var connection=createCon();
  connection.query("insert into users (name,email,address,city,state,zipcode) values ('"+req.body.name+"','"+req.body.email+"','"+req.body.address+"','"+req.body.city+"','"+req.body.state+"','"+req.body.zipcode+"') "
  
  , function(err, rows, fields) {
    if (err){
      throw err
      
     }
     else
   // alert("Registeration Successfull");
   res.send("data submitted succsefully");

       
  });
  
   connection.end();
 
  
});


router.get('/dashboard', function(req, res) {
  res.render('admin-panel/dashboard');
});

// admin routes
router.post('/dashboard',urlencodedParser, function(req, res) {
  var connection=createCon();
  // connection.query("select id from admin where  username = ? [req.body.username] AND password = ? [req.body.pass]"
  var sql = 'select id from admin where username = ? AND password = ?';
  connection.query(sql, [req.body.username, req.body.pass]
  , function(err, rows, fields) {
    console.log(rows);
    if (rows[0])
      res.render('admin-panel/dashboard');
     else
    
      res.send("invalid username or password");
       
  });
  
   connection.end();
 
  
});
router.get('/users', function(req, res, next) {
  var connection=createCon();
  connection.query("SELECT * FROM users", function (err, result, fields) {
    if (err) throw err;
    else
    res.render('admin-panel/users',{ users: result });
  });

  connection.end();
});

router.get('/admin', function(req, res, next) {
  res.render('admin-panel/login');
});


module.exports = router;

