ACCEPT X CHAR PROMPT 'Enter Choice Number = '
ACCEPT Y CHAR PROMPT 'Enter Insect/Plant Name = '

DECLARE
	Choice number;
	sname varchar2(30);
	
BEGIN
	Choice := &X;
	sname := '&Y';

	IF Choice = 1 THEN
		InsectPack.SearchInsect(sname);
	ELSIF Choice = 2 THEN
		PlantPack.SearchPlant(sname);
	END IF;
	
END;
/
