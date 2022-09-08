CREATE TABLE Insurance_Scheme(
    Plan_Id INT PRIMARY KEY,
	Plan_Name VARCHAR (25),
	Plan_Amount INT,
	Receipient INT,
	Tenure VARCHAR (40),
	Renew_Plan INT,

	
)


INSERT INTO Insurance_Scheme VALUES (1280,'Premium', 6850, 7536,'Yearly' ,6165 )
INSERT INTO Insurance_Scheme VALUES (1281,'Gold', 9800, 373,'yearly',8820)
INSERT INTO Insurance_Scheme VALUES (1283,'Silver', 8200, 674,'Halfyearly',7380)
INSERT INTO Insurance_Scheme VALUES (1282,'Life cover', 8400, 764,'yearly',7560)
INSERT INTO Insurance_Scheme VALUES (1285,'Critical illness', 6400, 8943,'Quaterly',5760)
INSERT INTO Insurance_Scheme VALUES (1284,'Accidenatal cover', 7600,764,'Biannualy',6840)
INSERT INTO Insurance_Scheme VALUES (1286,'1 crore life cover', 9200, 639,'yearly',8280)
INSERT INTO Insurance_Scheme VALUES (1287,'life cover till 99', 6200, 6373, '99 Year',5580)

SELECT *FROM Insurance_Scheme

CREATE TABLE Category(
Category_Id INT PRIMARY KEY,
Plan_Id INT,
Insurance_Types VARCHAR (25)

CONSTRAINT FK_PLANS FOREIGN KEY(Plan_Id)
REFERENCES Insurance_Scheme(Plan_Id)
)
 SELECT *FROM Category


INSERT INTO Category VALUES (1001,1280,'Full life policy')
INSERT INTO Category VALUES (1002, 1281,'Senior citizen Policy')
INSERT INTO Category VALUES (1003,1283,'Health Policy')
INSERT INTO Category VALUES (1004,1282,'Family Policy')
INSERT INTO Category VALUES (1005,1284,'Accidental Policy ')
INSERT INTO Category VALUES (1008,1285,'Child Policy')
INSERT INTO Category VALUES (1006,1286,' Policy')
INSERT INTO Category VALUES (1007,1287,'Retirement Policy')
 
 





CREATE VIEW  V_Insurance_Scheme AS  SELECT Category,Plans,Receipient,Tenure,Benefits,Recover,Renewal FROM Insurance_Scheme


SELECT * FROM V_Insurance_Scheme
 
