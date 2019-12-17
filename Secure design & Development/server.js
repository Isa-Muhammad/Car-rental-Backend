'use static';

const express = require('express');

const db = require('./databaseModel');

const config = require("./config");


const app = express();

//static webpages


//API FUNCTIONS
app.get('/api/cars', sendCars);
//app.post('/api/');
//app.delete('/api/');


// start server
app.listen(8080, (err) => {
  if (err) console.error('error starting server', err);
  else console.log('server successfully started on port 8080');
});

//server functionality

async function sendCars(req, res){
  try{
    const cars = await db.listCars();
    res.json(cars);
  }catch(e){
    error(res,e);
  }
}
