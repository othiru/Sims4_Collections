ACCEPT X CHAR PROMPT 'Enter Choice Number = '
ACCEPT A CHAR PROMPT 'Enter Plant Name = '
ACCEPT B CHAR PROMPT 'Enter Plant Rarity = '
ACCEPT C CHAR PROMPT 'Enter Plant Simoleons = '
ACCEPT D CHAR PROMPT 'Enter Plant Seasons = '
ACCEPT E CHAR PROMPT 'Enter Plant Place = '


DECLARE

	uiName PlantV.Name%TYPE;
	uiRarity PlantV.Rarity%TYPE;
	uiSimoleons PlantV.Simoleons%TYPE;
	uiSeasons PlantV.Name%TYPE;
	uiPlace InsectV.Place%TYPE;
	foundIn number;
	Choice number;
	
BEGIN
	Choice := &X;
	uiName := '&A';
	uiRarity := '&B';
	uiSimoleons := '&C';
	uiSeasons := '&D';
	uiPlace := '&E';

	IF Choice = 1 THEN
		foundIn := PlantPackIn.InsertPlant(uiName,uiRarity,uiSimoleons,uiSeasons,uiPlace);
	ELSIF Choice = 2 THEN
		foundIn := PlantPackDe.DeletePlant(uiName,uiRarity,uiSimoleons,uiSeasons,uiPlace);
	ELSIF Choice = 3 THEN
		foundIn := PlantPackUp.UpdatePlant(uiName,uiRarity,uiSimoleons,uiSeasons,uiPlace);
	ELSE
		DBMS_OUTPUT.PUT_LINE('	');
		DBMS_OUTPUT.PUT_LINE('Wrong Choice is selected!!!');
	END IF;
	
END;
/
