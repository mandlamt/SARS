--USE [FleetActiv_Wesbank_Dev]
--GO
/****** Object:  StoredProcedure [dbo].[pHorizontalDetails1]    Script Date: 4/8/2020 1:51:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--declare @ClientName varchar(50)
ALTER PROCEDURE [dbo].[pHorizontalDetails1] (@ClientName as varchar(100))

AS
					 IF OBJECT_ID('tempdb..#Temp') IS NOT NULL     --Remove temp here 
						DROP TABLE #Temp 

						IF OBJECT_ID('tempdb..#Temp1') IS NOT NULL     --Remove temp here 
						DROP TABLE #Temp1 

drop table test#

select 
          qddm_deal 'DealNumber',
          qdqm_quote,
          isnull(drm_name, drm_longname) 'ClientName',
          NULL 'SellingDealer',
          --qdqm_vbcpkmaintsell,
		  qddm_chassisno 'ChassisNo',
		  --aud_before,
		  aud_after ValueData,
		  --aud_datetime,
		  FORMAT (aud_datetime, 'dd/MM/yyyy') 'aud_datetime',
		   --FORMAT (aud_datetime, 'yyyy//MM/dd') 'aud_datetime',
		   aud_key2,
		   qdqm_type 'DealType',
		  substring(aud_after,1,2) FieldId
 into #Temp1      
 from qddm deal
            left join qdqm on qdqm_quote = qddm_fk_quote
			left join drm on drm_accno =  qdqm_fk_accno
			left join fleetaudit on aud_key1 = qddm_fk_quote
where aud_field = 'qdqm_vbcpkmaintsell'
and drm_name like '%'+@ClientName+'%'--'VALUE LOGISTICS LIMITED%'
--and qddm_deal = '0000097171'
and aud_after > '0.00'
and qdqm_type in ('W-SP-CPK','W-SP-MONTHLY','W-MP-CPK','W-MP-MONTHLY')
--order by 2 asc
order by --qddm_deal asc ,
aud_after asc 
--aud_datetime desc-- ,
--aud_after asc 
--order by ( FORMAT (aud_datetime, 'yyyy/MM/dd')  )desc
--group by qddm_deal,qdqm_quote,aud_datetime,drm_name,drm_longname,qdqm_vbcpkmaintsell,qddm_chassisno,aud_after,aud_key2
--order by qddm_deal asc
--order by qddm_deal asc,
         ----qdqm_quote asc,
		 --aud_datetime desc-- ,
		 --drm_name,
		 --drm_longname,
		 --qdqm_vbcpkmaintsell
		 --qddm_chassisno,
		 --aud_after,
		 --aud_key2


 --		exec pHorizontalDetails1 'VALUE LOGISTICS LIMITED'

--declare @ClientName as varchar(100) =  substring(ValueData,1,2) from cpk#


Declare @Orders Table (OrderID varchar(10),
					   Product varchar(100),
					   Quantity varchar(100),
					   Client varchar(250),
					   --MaintSell varchar(20),
					   ChassisNo varchar(20),
					   DealType varchar(20) 
	
	);

-- Insert sample data
Insert Into @Orders
select  DealNumber,
        aud_datetime,
		ValueData,
		ClientName,
		--qdqm_vbcpkmaintsell,
        ChassisNo,
		DealType
		  
from #Temp1;
---- desc
----group by aud_datetime, DealNumber,aud_datetime,ValueData,ClientName,qdqm_vbcpkmaintsell,ChassisNo ;
--order by DealNumber,aud_datetime ;
----drop table Orders#


With Orders
     As (Select ROW_NUMBER() Over (Partition By OrderID Order By OrderID desc) As RowID,*
	     From @Orders)

Select OrderID As DealNumber,
       Client AS ClientName,
       --MaintSell As Maint,   
       Min(Quantity1) As CPK1,
	   Min(Product1) As CPKDate1,
       Min(Quantity2) As CPK2,
	   Min(Product2) As CPKDate2,
	   Min(Quantity3) As CPK3,
	   Min(Product3) As CPKDate3,
	   Min(Quantity4) As CPK4,
	   Min(Product4) As CPKDate4,
	   ChassisNo As ChassisNumber,
	   DealType As DealType	
into test#
From (Select ROW_NUMBER() Over (Partition By OrderID Order By OrderID desc) As RowID,
		OrderID,
		Client,
		--MaintSell,
		ChassisNo,
		DealType,
		'Product' + Cast(RowID as varchar) As ProductNum,
		'Quantity' + Cast(RowID as varchar) As QuantityNum,
		Product,
		Quantity
	From Orders) As Pvt
Pivot (Min(Product)
	For ProductNum In ([Product4], [Product3], [Product2], [Product1])) As Pvt1
Pivot (Min(Quantity)
	For QuantityNum In ([Quantity4], [Quantity3], [Quantity2], [Quantity1])) As Pvt2
Group By 
        
		
		--	
       OrderID ,
       Client,
	   ChassisNo,	
	   DealType--,
			----[Product1],--  [Product3], [Product4],
		----[Quantity1],--  [Quantity3], [Quantity4],
		----[Product2],
		----[Quantity2],
		
	
		--MaintSell
		order by 
		--DealNumber,
		CPK1,
		--CPKDate1,
		CPK2,
		--CPKDate2,
		CPK3,
		--CPKDate3,
		CPK4--,
		--CPKDate4
		;


		--OrderID,Client,
		--MaintSell,
		--ChassisNo,
		--DealType
		

select  * from test# 
group by-- CPK1
CPK1,
  CPKDate1,
CPK2,
CPKDate2,
CPK3,
CPKDate3,
DealNumber,
ClientName
order by
 --
  CPK1,
  CPKDate1,
CPK2,
CPKDate2,
CPK3,
CPKDate3,
CPK4,
CPKDate4--,
--DealNumber 


 --		exec pHorizontalDetails1 'VALUE LOGISTICS LIMITED'
--		exec pHorizontalDetails '%'

















--select 


--qddm_deal 'DealNumber',
--	   isnull(drm_name, drm_longname) 'ClientName',
--	   NULL 'SellingDealer',
--	   qdqm_vbcpkmaintsell,
--	   qdqm_quote,
--	   qddm_chassisno 'ChassisNo'
	  
		                      
--into #Temp from qddm deal
--            left join qdqm on qdqm_quote = qddm_fk_quote

			------------------------------
   --         left join (select qddt_fk_deal,
   --                                    sum(qddt_amount) ServiceAmount
   --                         from qddt
   --                           where qddt_ref = 'SERVICES'
   --                           group by qddt_fk_deal) AdminFee on AdminFee.qddt_fk_deal = qddm_deal
          -- left join drm on drm_accno =  qdqm_fk_accno
			---------------
            --left join bvvm on qdqm_fk_man = bvvm_fk_man and qdqm_fk_mod = bvvm_fk_mod and qdqm_fk_var = bvvm_var
            --left join bvmm on bvvm_fk_man = bvmm_man
            

            --left join bvmom on bvvm_fk_man = bvmom_fk_man and bvvm_fk_mod =bvmom_mod




            --left join ( select current_dealno, maint_income, maint_expense
            --            from Func_QD_ReloadedDealDetails( NULL, getdate())) ReloadedDeal on ReloadedDeal.current_dealno = qddm_deal
            --where qddm_new = 'y'
            --and qddm_term != 'y'
            --and qdqm_type in ('W-SP-CPK','W-SP-MONTHLY','W-SP-UPFRONT','W-MP-CPK','W-MP-MONTHLY','W-MP-UPFRONT')
     
				  					 

 
   --		exec pHorizontalDetails1 '%'

--		exec pHorizontalDetails1 'VALUE LOGISTICS LIMITED'

