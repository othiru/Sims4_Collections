clear screen;
set linesize 500;
drop table Insect;
drop table Plant;

create table Insect(inid int, Name varchar2(30), Rarity varchar2(30), Simoleons int);

insert into Insect values(1,'Bee','Common',4);
insert into Insect values(2,'Blue Morpho Butterfly','Common',4);
insert into Insect values(3,'Fire Ant','Common',3);
insert into Insect values(4,'Firefly','Common',4);
insert into Insect values(5,'Jezebel Butterfly','Common',3);
insert into Insect values(6,'Katydid','Common',4);
insert into Insect values(7,'Ladybug','Common',4);
insert into Insect values(8,'Luna Moth','Common',4);
insert into Insect values(9,'Mosquito','Common',4);
insert into Insect values(10,'Stink Bug','Common',4);
insert into Insect values(11,'Termite','Common',3);
insert into Insect values(12,'Dragonfly','Uncommon',15);
insert into Insect values(13,'Jewel Beetle','Uncommon',15);
insert into Insect values(14,'Locust','Uncommon',15);
insert into Insect values(15,'Mantis','Uncommon',15);
insert into Insect values(16,'Monarch Butterfly','Uncommon',15);
insert into Insect values(17,'Walking Stick','Uncommon',12);
insert into Insect values(18,'Dragon Dragonfly','Rare',600);
insert into Insect values(19,'Dust Spirit','Rare',200);
insert into Insect values(20,'Rainbow Firefly','Rare',75);
insert into Insect values(21,'Will-o-the-Wisp','Rare',150);


create table Plant(plid int, Seasons varchar2(30), Place varchar2(60));

insert into Plant values(1,'Fall','Seed Packet');
insert into Plant values(2,'Spring, Summer','Seed Packet');
insert into Plant values(3,'Fall','Seed Packet');
insert into Plant values(4,'All Seasons','Oasis Springs - end of road by Museum');
insert into Plant values(5,'Spring, Fall','Willow Creek - Garden Essence Home');
insert into Plant values(6,'Summer, Fall','Granite Falls - National Park');
insert into Plant values(7,'Summer','Willow Creek Park, In front of Oakenstead');
insert into Plant values(8,'Winter','Willow Creek - Garden Essence Home');
insert into Plant values(9,'Summer, Fall','Granite Falls - National Park');
insert into Plant values(10,'Spring, Summer','Granite Falls - National Park');
insert into Plant values(11,'All Seasons','Forgotten Hollow - behind Vlad mansion');
insert into Plant values(12,'Summer, Fall','Selvadorada');
insert into Plant values(13,'Cherry','Uncommon');
insert into Plant values(14,'Summer','Oasis Springs - near the dirt path beside the big Park');
insert into Plant values(15,'All Seasons','Rare Seed packet');
insert into Plant values(16,'Winter','Graft Orchid with Pomegranate');
insert into Plant values(17,'Spring, Winter','Graft Lily with Snapdragon');
insert into Plant values(18,'Winter','Graft Apple with Cherry');
insert into Plant values(19,'All Seasons','StrangerVille');
insert into Plant values(20,'Spring and Fall','Realm of Magic');

COMMIT;

@"C:\Users\User\Desktop\DDS Project\LPTP\View1.sql"