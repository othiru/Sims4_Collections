clear screen;
CREATE OR REPLACE View ViewInsect(ID,Insect_Name,Insect_Rarity,Insect_Simoleons,Insect_Time,Insect_Place) as
SELECT I1.inid, I1.Name, I1.Rarity, I1.Simoleons, I2.Times, I2.Place 
FROM Insect I1 inner join InsectV@vmw I2 on I1.inid = I2.inid;

CREATE OR REPLACE View ViewPlant(ID,Plant_Name,Plant_Rarity,Plant_Simoleons,Plant_Seasons,Plant_Place) as
SELECT P2.plid, p2.Name, P2.Rarity, P2.Simoleons, P1.Seasons, P1.Place 
FROM Plant P1 inner join PlantV@vmw P2 on P1.plid = P2.plid;

commit;