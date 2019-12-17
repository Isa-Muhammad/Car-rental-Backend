create database if not exists Autoshop;

  create TABLE if not exists Autoshop.cars(
    id int PRIMARY KEY auto_increment,
    carName varchar(50) NOT NULL,
    carPrice int,
    imageSrc varchar(100)
  );


/* Car INSERTS*/
insert ignore into Autoshop.cars values (1,"Honda Civic",10000,'/images/honda-civic-type-r.JPG');
