CREATE OR REPLACE TRIGGER rumstriggerUp1
AFTER UPDATE 
OF Rarity
ON Insect
FOR EACH ROW
DECLARE
BEGIN
	DBMS_OUTPUT.PUT_LINE('Rarity of ' || :old.Name || ' Updated!!!');
END;
/

CREATE OR REPLACE TRIGGER rumstriggerUp2
AFTER UPDATE 
OF Simoleons
ON Insect
FOR EACH ROW
DECLARE
BEGIN
	DBMS_OUTPUT.PUT_LINE('Simoleons of ' || :old.Name || ' Updated!!!');
END;
/


CREATE OR REPLACE PACKAGE InsectPackUp AS

	FUNCTION UpdateInsect(iNameUp IN Insect.Name%TYPE, iRarityUp IN Insect.Rarity%TYPE, iSimoleonsUp IN Insect.Simoleons%TYPE, iTimesUp IN Insect.Name%TYPE, iPlaceUp IN Plant.Place%TYPE)
	RETURN NUMBER;
	
	PROCEDURE UpdateInsectProc(iNameUp IN Insect.Name%TYPE, iRarityUp IN Insect.Rarity%TYPE, iSimoleonsUp IN Insect.Simoleons%TYPE, iTimesUp IN Insect.Name%TYPE, iPlaceUp IN Plant.Place%TYPE);

END InsectPackUp;
/

CREATE OR REPLACE PACKAGE BODY InsectPackUp AS

	FUNCTION UpdateInsect(iNameUp IN Insect.Name%TYPE, iRarityUp IN Insect.Rarity%TYPE, iSimoleonsUp IN Insect.Simoleons%TYPE, iTimesUp IN Insect.Name%TYPE, iPlaceUp IN Plant.Place%TYPE)
	RETURN NUMBER
	IS
		isFound NUMBER := 0;
	

	BEGIN

		FOR R IN (select Name from Insect) LOOP
			IF R.Name = iNameUp THEN
				isFound := 1;
				UpdateInsectProc(iNameUp,iRarityUp,iSimoleonsUp,iTimesUp,iPlaceUp);
				return isFound;

			END IF;
		
		END LOOP;
		
		IF isFound = 0 THEN
			FOR R IN (select Name from Insect) LOOP
				IF R.Name <> iNameUp THEN
					RAISE NO_DATA_FOUND;
				END IF;
			END LOOP;
		END IF;
		
	EXCEPTION
		WHEN NO_DATA_FOUND THEN
			DBMS_OUTPUT.PUT_LINE('Wrong Input!!!');
			return isFound;
		

	END UpdateInsect;
	
	
	PROCEDURE UpdateInsectProc(iNameUp IN Insect.Name%TYPE, iRarityUp IN Insect.Rarity%TYPE, iSimoleonsUp IN Insect.Simoleons%TYPE, iTimesUp IN Insect.Name%TYPE, iPlaceUp IN Plant.Place%TYPE)
	IS
		
	BEGIN
		
		IF iRarityUp is Not Null THEN 
			Update Insect set Rarity = iRarityUp where Insect.Name = iNameUp;
		END IF;
		IF iSimoleonsUp is Not Null THEN
			Update Insect set Simoleons = iSimoleonsUp where Insect.Name = iNameUp;
			
		END IF;
		IF iTimesUp is Not Null THEN
			Update InsectV@vmw set Times = iTimesUp where inid = (SELECT Insect.inid from Insect where Insect.Name = iNameUp);
			DBMS_OUTPUT.PUT_LINE('Times of ' || iNameUp || ' Updated!!!');
		END IF;
		IF iPlaceUp is Not Null THEN
			Update InsectV@vmw set Place = iPlaceUp where inid = (SELECT Insect.inid from Insect where Insect.Name = iNameUp);
			DBMS_OUTPUT.PUT_LINE('Place of ' || iNameUp || ' Updated!!!');
		END IF;
		
	END UpdateInsectProc;
	
	
End InsectPackUp;
/

