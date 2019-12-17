'use strict';

const mysql = require('mysql');

const config = require('./config');

const sql = mysql.createConnection(config.mysql);

module.export.listCars =() => {
  return new Promise((resolve, reject) => {
    let query = 'select cars.carName, cars.id, cars.carPrice, cars.imageSrc from cars order by cars.id desc'



    sql.query(query, (err,data) =>{
    if (err) {
      reject(['failed to run the query', err]);
      return;
    }

    const retval = [];
    data.forEach((row)=>{
      retval.push({
        id: row.id,
        title: row.carName,
        price: row.carPrice,
        imageSource: row.imageSrc,
      });
    });

    resolve(retval);
  });

});

};
