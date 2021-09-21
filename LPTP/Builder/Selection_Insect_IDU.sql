ACCEPT X CHAR PROMPT 'Enter Choice Number = '
ACCEPT A CHAR PROMPT 'Enter Insect Name = '
ACCEPT B CHAR PROMPT 'Enter Insect Rarity = '
ACCEPT C CHAR PROMPT 'Enter Insect Simoleons = '
ACCEPT D CHAR PROMPT 'Enter Insect Times = '
ACCEPT E CHAR PROMPT 'Enter Insect Place = '


DECLARE

	uiName Insect.Name%TYPE;
	uiRarity Insect.Rarity%TYPE;
	uiSimoleons Insect.Simoleons%TYPE;
	uiTimes Insect.Name%TYPE;
	uiPlace Plant.Place%TYPE;
	foundIn number;
	Choice number;
	
BEGIN
	Choice := &X;
	uiName := '&A';
	uiRarity := '&B';
	uiSimoleons := '&C';
	uiTimes := '&D';
	uiPlace := '&E';

	IF Choice = 1 THEN
		foundIn := InsectPackIn.InsertInsect(uiName,uiRarity,uiSimoleons,uiTimes,uiPlace);
	ELSIF Choice = 2 THEN
		foundIn := InsectPackDe.DeleteInsect(uiName,uiRarity,uiSimoleons,uiTimes,uiPlace);
	ELSIF Choice = 3 THEN
		foundIn := InsectPackUp.UpdateInsect(uiName,uiRarity,uiSimoleons,uiTimes,uiPlace);
	ELSE
		DBMS_OUTPUT.PUT_LINE('	');
		DBMS_OUTPUT.PUT_LINE('Wrong Choice is selected!!!');
	END IF;
	
END;
/
