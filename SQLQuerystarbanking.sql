CREATE TABLE Insurance_Scheme(
    Category varchar (255),
	Plans varchar (255) PRIMARY KEY,
	Receipient varchar (255), 
	Tenure varchar (255),
	Benefits varchar (255),
	Recover varchar(255),
	Renewal varchar(255),
) 

insert into Insurance_Scheme values ('Premium', 49999, 7, '1 year', 'Ambulence, Free Bed, Meal, Recover Benefits', 'Get 20% off','yearly')
insert into Insurance_Scheme values ('Gold', 39999, 3, '1 year', 'Ambulence, Free Bed, Meal', 'Get 15% off','yearly')
insert into Insurance_Scheme values ('Silver', 27999, 3, '1 year', 'Ambulence, Free Bed', 'Get 10% off', 'yearly')
insert into Insurance_Scheme values ('Life cover', 28999, 18, '1 year', 'Ambulence, Free Bed', 'Get 5% off','yearly')
insert into Insurance_Scheme values ('Critical illness', 21999, 30, '1 year', 'Ambulence, Free Bed', 'Get 5% off','yearly')
insert into Insurance_Scheme values ('Accidenatal cover', 19999, 30, '1 year', 'Assuring all benefits', 'Decided on situation','yearly')
insert into Insurance_Scheme values ('1 crore life cover', 23999, 63, '1 year', 'Assuring all benefits', 'immidiate','yearly')
insert into Insurance_Scheme values ('life cover till 99', 60000, 6, '99 year', 'Assuring all benefits', 'Whole life', 'yearly')

Select *from Insurance_Scheme









Create View V_Insurance_Scheme as Select Category,Plans,Receipient,Tenure,Benefits,Recover,Renewal from Insurance_Scheme


Select * from V_Insurance_Scheme


Insert into V_Insurance_Scheme values('Dimond',59999,3,'1 year','Gold+Health Insurancecard','30% off','yearly')


Delete from V_Insurance_Scheme where Category='Accidental'


Alter View V_Insurance_Scheme
as
Select  Category,Plans,Receipient,Tenure,Benefits,Recover,Renewal from Insurance_Scheme 
Insert into V_Insurance_Scheme values('Pearl',59990,3,'1 year','Gold+Health Insurancecard','30% off','qauterly')


Drop View V_Insurance_Scheme
Create Procedure Proc_Insurance_Scheme_Insert

    @VCategory varchar(255),
	@VPlans varchar(255), 
	@VReceipient varchar(255),
	@VTenure varchar(255),
	@VBenefits varchar(255),
	@VRecover varchar(255),
	@VRenewal varchar(255)
    AS
  Begin Transaction
  Insert into Insurance_Scheme( Category,Plans,Receipient,Tenure,Benefits,Recover,Renewal)
  values@VCategory,@VPlans,@VReceipient,@VTenure,@VBenefits,@VRecover,@VRenewal)
Commit Transaction

Exec Proc_Insurance_Scheme_Insert 'pearl','59999','3','1 year','Gold+Health Insurancecard','30% off','qauterly'

Select * from Insurance_Scheme

Alter Procedure Proc_Insurance_Scheme_Insert


    @VCategory varchar(255),
	@VPlans varchar(255), 
	@VReceipient varchar(255),
	@VTenure varchar(255),
	@VBenefits varchar(255),
	@VRecover varchar(255),
	@VRenewal varchar(255)
As



Begin



 Begin Transaction



   if ((len(@vCategory) > 0) And (len(@VPlans) > 0))



   Begin



     Insert into Insurance_Scheme(Category,Plans,Receipient,Tenure,Benefits,Recover,Renewal) values(@VCategory,@VPlans,@VReceipient,@VTenure,@VBenefits,@VRecover,@VRenewal)



   End



   Else



   Begin



     Print 'Cannot insert blank Branch Name and / Locate'



   End



 Commit Transaction



End



Exec Proc_Insurance_Scheme_Insert 'Accidental',70000,3,'1 year','Gold+Health Insurancecard','30% off','qauterly'
