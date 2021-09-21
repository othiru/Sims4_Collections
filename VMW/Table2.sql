clear screen;
set linesize 500;
drop table InsectV;
drop table PlantV;

create table InsectV(inid int, Times varchar2(30), Place varchar2(60));

insert into InsectV values(1,'Morning, Afternoon','Campgrounds, Forest, Deep Woods');
insert into InsectV values(2,'Day, Evening','Campgrounds, Forest, Deep Woods');
insert into InsectV values(3,'Day, Evening','Campgrounds, Forest, Deep Woods');
insert into InsectV values(4,'Night','Campgrounds, Forest, Deep Woods');
insert into InsectV values(5,'Day, Evening','Campgrounds, Forest, Deep Woods');
insert into InsectV values(6,'Day, Evening','Campgrounds, Forest, Deep Woods');
insert into InsectV values(7,'All times','Campgrounds, Forest, Deep Woods');
insert into InsectV values(8,'Day, Night','Campgrounds, Forest, Deep Woods');
insert into InsectV values(9,'Day, Night','Campgrounds, Forest, Deep Woods');
insert into InsectV values(10,'Day, Evening','Campgrounds, Forest, Deep Woods');
insert into InsectV values(11,'Day, Evening','Campgrounds, Forest');
insert into InsectV values(12,'Day','Campgrounds, Forest, Deep Woods');
insert into InsectV values(13,'Day','Campgrounds, Forest, Deep Woods');
insert into InsectV values(14,'Day','Campgrounds, Forest, Deep Woods');
insert into InsectV values(15,'Day','Campgrounds, Forest');
insert into InsectV values(16,'Day','Forest, Deep Woods');
insert into InsectV values(17,'Day','Deep Woods - Herb Garden');
insert into InsectV values(18,'Day','Deep Woods - Waterfall');
insert into InsectV values(19,'Evening, Night','Forest, Deep Woods');
insert into InsectV values(20,'Night','Forest, Deep Woods');
insert into InsectV values(21,'Night','Forest, Deep Woods');


create table PlantV(plid int, Name varchar2(30), Rarity varchar2(30), Simoleons int);

insert into PlantV values(1,'Apple','Common',3);
insert into PlantV values(2,'Blue Bells','Common',2);
insert into PlantV values(3,'Grapes','Common',8);
insert into PlantV values(4,'Sage','Common',3);
insert into PlantV values(5,'Snapdragon','Common',16);
insert into PlantV values(6,'Noxious Elderberry','Common',2);
insert into PlantV values(7,'Lily','Uncommon',36);
insert into PlantV values(8,'Potato','Uncommon',3);
insert into PlantV values(9,'Muckleberry','Uncommon',3);
insert into PlantV values(10,'Fireleaf','Uncommon',2);
insert into PlantV values(11,'Plasma Fruit','Uncommon',6);
insert into PlantV values(12,'Black Beans','Uncommon',2);
insert into PlantV values(13,'Cherry','Uncommon',8);
insert into PlantV values(14,'Blackberry','Rare',3);
insert into PlantV values(15,'Bonsai Buds','Rare',35);
insert into PlantV values(16,'Death Flower','Rare',240);
insert into PlantV values(17,'Orchid','Rare',225);
insert into PlantV values(18,'Pomegranate','Rare',30);
insert into PlantV values(19,'Bizarre Fruit','Rare',2);
insert into PlantV values(20,'Mandrake Root','Rare',3);

COMMIT;

@"C:\Users\VMWare Rums\Desktop\DDS Project VMW\VMW\View2.sql";