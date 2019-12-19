create database if not exists Autoshop;

  create TABLE if not exists Autoshop.cars(
    id int PRIMARY KEY auto_increment,
    carName varchar(50) NOT NULL,
    carPrice int,
    imageSrc varchar(100)
  );


/* Car INSERTS*/
insert ignore into Autoshop.cars values (1,"Honda Civic",10000,'/images/honda-civic-type-r.JPG');
insert ignore into Autoshop.cars values (2,"Toyota C-HR",10000,'/images/toyota-c-hr.JPG');
insert ignore into Autoshop.cars values (3,"Toyota Avalon",10000,'/images/Avalon-Hybrid.JPG');
insert ignore into Autoshop.cars values (4,"Lamborghini",30000,'/images/Lambo.JPG');
insert ignore into Autoshop.cars values (5,"Ferrari SF90",50000,'/images/Ferrari_SF90_Stradale.JPG');
insert ignore into Autoshop.cars values (6,"Cyber truck",49000,'/images/cybertruck.JPG');
