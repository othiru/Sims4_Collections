Information:
1. LPTP folder is for my laptop (server) and VMW folder is for the virtual machine (site).
2. In LPTP and VMW, there are two sub-folders - Builder and Seeker.
3. In LPTP, Builder is used for insert,update and delete of only Insect table. In VMW, Builder is used for insert,update and delete of only Plant table. (Partial Access)
4. Both Seeker folder in LPTP and VMW is for Users who are seeking for informations of Insects and Plants. (Full Access)
5. There is a Table1 in LPTP folder which has partial Insect table data and Plant table data. There is a Table2 in VMW folder which has rest Insect table data and Plant table data.
6. Both tables are vertically fragmented. Total 4 tables in Table1 and Table2.

Run:
1. In Laptop (LPTP Folder):
	a) Run Table1.sql
	b) Run main_Search.sql - to see information
	c) Run main_Insect_IDU - to Insert, Delete and Update Insect table only
2. In Virtual Machine (VMW Folder):
	a) Run Table2.sql
	b) Run main_Search.sql - to see information
	c) Run main_Plant_IDU - to Insert, Delete and Update Plant table only
