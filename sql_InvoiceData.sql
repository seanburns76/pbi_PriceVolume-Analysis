


SELECT

  sfaddj,
  sfadvp,
  sfaexp,

  sfbot,
  sfcars,

  sfcol,
 
  sfd35,
  sfd50,
  sfd70,
  sfd85,
  sfdate,
  sfdcto,
  sfdirl,
  sfdoc,
  sfdoco,

  sfecst,
  sffrthd,
  sfftrh,

  sfglc,
  sfglcd,
  sfglsb,

  sfhgtn,

  sfitm,
  sfitwt,
  sfivd,
  sfktln,
  sflact,
  sflfix,
  sflitm,
  sflnid,
  sflnty,
  sflntyd,
  sflprc,
  sflttr,
  sflvar,
  sfmacr,
  sfmcu,
  sfmdsc,
  sfmfix,
  sfmmtl,
  sfmot,
  sfmotd,
  sfmtl,
  sfmtlg,
  sfmvar,
  sfnor,
 
  sfopen,
  sfot,
  sfoto,
  sfover,
  sfpa8,
  sfpar,
  sfplt,
  sfpred,
  sfprice,
  sfprod,
  sfprov,
  sfprt,
  sfptc,
  sfptcd,
  sfqote,
  sfrkco,
  sfrlit,

  sfsec,
 
  sfshad,

  sfshnm,
  sfshpc,
  sfshst,
 
  sfslit,
  sfsoad,
  sfsocn,
 
  sfsoct,
  sfsonm,
  sfsopc,
  sfsoqs,
  sfsost,

  sfsty,
  sfta30,
  
  sfta32,
  
  sftdsc,
 
  sftrdj,

  sfuncs,
  sfuom,
  sfuom1,
  sfuom4,
  sfuorg,
  DAY(sfivd) as dayint,

  sfuprc,
  sfvmid,
  sfvmidd,

  sfwid,
  sfwidn,
  sfzon,
  sfzond,
  YEAR(sfdate) AS SFYEAR,
  MONTH(sfdate) AS SFMONTH,

  YEAR(sfivd) AS SFINVYEAR,
  MONTH(sfivd) AS SFINVMONTH,

  sfpred AS 'Price Eff Date',
  sfaddj AS 'Actual Ship Date',
  sfcndj AS 'Cancelled Date',
  sfdrqj AS 'Promised Ship Date',
  sfivd AS 'Invoiced Date',
  sfdate AS 'Reporting Date',
  sftrdj AS 'Order Create Date'


FROM datamartapps.dbo.vInvoiced

where sfco = '00003'
AND sfsocn = 0
AND sflttr NOT IN (980, 999)

AND sfcndj IS NULL
AND SFKTLN = 0
AND sfdcto NOT IN ('ST'
, 'SW'
, 'SU'
, 'S7'
, 'SD'
, 'SA'
, 'SL')
AND sflitm NOT LIKE '%DEP%'
AND sflnty NOT IN ('ST'
, 'E'
, 'F'
, 'R'
)
AND sfsrp1 <> 'NON'
