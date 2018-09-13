use master;
insert into [ustull0036\apsreport].reportingdimensions.dbo.dimItemMaster(
 [ShortItem]
      ,[LongItem]
      ,[ItemDesc1]
      ,[ItemDesc2]
      ,[srp1]
      ,[srp2]
      ,[srp3]
      ,[srp4]
      ,[srp5]
      ,[srp7]
      ,[srp9]
      ,[srp1_Desc]
      ,[srp2_Desc]
      ,[srp3_Desc]
      ,[srp4_Desc]
      ,[srp5_Desc]
      ,[srp7_Desc]
      ,[srp9_Desc]
      ,[prp1]
      ,[prp2]
      ,[prp3]
      ,[prp4]
      ,[prp6]
      ,[prp9]
      ,[prp1_Desc]
      ,[prp2_Desc]
      ,[prp3_Desc]
      ,[prp4_Desc]
      ,[prp6_Desc]
      ,[prp9_Desc]
      ,[LastUpdateInt]
      ,[ChangeDate]
	  )
SELECT 
 imitm AS ShortItem
,imlitm AS LongItem
,imdsc1 AS ItemDesc1
,imdsc2 AS ItemDesc2
,imsrp1 as srp1
,imsrp2 as srp2
,imsrp3 as srp3
,imsrp4 as srp4
,imsrp5 as srp5
,imsrp7 as srp7
,imsrp9 as srp9
,srp1d.drdl01 as srp1_Desc
,srp2d.drdl01 as srp2_Desc
,srp3d.drdl01 as srp3_Desc
,srp4d.drdl01 as srp4_Desc
,srp5d.drdl01 as srp5_Desc
,srp7d.drdl01 as srp7_Desc
,srp9d.drdl01 as srp9_Desc
,imprp1 as prp1
,imprp2 as prp2
,imprp3 as prp3
,imprp4 as prp4
,imprp6 as prp6
,imprp9 as prp9
,prp1d.drdl01 as prp1_Desc
,prp2d.drdl01 as prp2_Desc
,prp3d.drdl01 as prp3_Desc
,prp4d.drdl01 as prp4_Desc
,prp6d.drdl01 as prp6_Desc
,prp9d.drdl01 as prp9_Desc

,imupmj as LastUpdateInt
,getdate() as ChangeDate




FROM as400.s1049zkm.amsdta.f4101 

LEFT JOIN	as400.s1049zkm.amscom.f0005 AS srp1d ON srp1d.drsy='41' AND srp1d.drrt='S1' AND rtrim(ltrim(srp1d.drky)) = rtrim(ltrim(f4101.imsrp1))
LEFT JOIN	as400.s1049zkm.amscom.f0005 AS srp2d ON srp2d.drsy='41' AND srp2d.drrt='S2' AND rtrim(ltrim(srp2d.drky)) = rtrim(ltrim(f4101.imsrp2))
LEFT JOIN	as400.s1049zkm.amscom.f0005 AS srp3d ON srp3d.drsy='41' AND srp3d.drrt='S3' AND rtrim(ltrim(srp3d.drky)) = rtrim(ltrim(f4101.imsrp3))
LEFT JOIN	as400.s1049zkm.amscom.f0005 AS srp4d ON srp4d.drsy='41' AND srp4d.drrt='S4' AND rtrim(ltrim(srp4d.drky)) = rtrim(ltrim(f4101.imsrp4))
LEFT JOIN	as400.s1049zkm.amscom.f0005 AS srp5d ON srp5d.drsy='41' AND srp5d.drrt='S5' AND rtrim(ltrim(srp5d.drky)) = rtrim(ltrim(f4101.imsrp5))
LEFT JOIN	as400.s1049zkm.amscom.f0005 AS srp7d ON srp7d.drsy='41' AND srp7d.drrt='07' AND rtrim(ltrim(srp7d.drky)) = rtrim(ltrim(f4101.imsrp7))
LEFT JOIN	as400.s1049zkm.amscom.f0005 AS srp9d ON srp9d.drsy='41' AND srp9d.drrt='09' AND rtrim(ltrim(srp9d.drky)) = rtrim(ltrim(f4101.imsrp9))
LEFT JOIN	as400.s1049zkm.amscom.f0005 AS prp1d ON prp1d.drsy='41' AND prp1d.drrt='P1' AND rtrim(ltrim(prp1d.drky)) = rtrim(ltrim(f4101.imprp1))
LEFT JOIN	as400.s1049zkm.amscom.f0005 AS prp2d ON prp2d.drsy='41' AND prp2d.drrt='P2' AND rtrim(ltrim(prp2d.drky)) = rtrim(ltrim(f4101.imprp2))
LEFT JOIN	as400.s1049zkm.amscom.f0005 AS prp3d ON prp3d.drsy='41' AND prp3d.drrt='P3' AND rtrim(ltrim(prp3d.drky)) = rtrim(ltrim(f4101.imprp3))
LEFT JOIN	as400.s1049zkm.amscom.f0005 AS prp4d ON prp4d.drsy='41' AND prp4d.drrt='P4' AND rtrim(ltrim(prp4d.drky)) = rtrim(ltrim(f4101.imprp4))
LEFT JOIN	as400.s1049zkm.amscom.f0005 AS prp6d ON prp6d.drsy='41' AND prp6d.drrt='01' AND rtrim(ltrim(prp6d.drky)) = rtrim(ltrim(f4101.imprp6))
LEFT JOIN	as400.s1049zkm.amscom.f0005 AS prp9d ON prp9d.drsy='41' AND prp9d.drrt='02' AND rtrim(ltrim(prp9d.drky)) = rtrim(ltrim(f4101.imprp9))
