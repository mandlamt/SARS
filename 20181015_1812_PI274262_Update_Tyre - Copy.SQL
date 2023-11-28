
  -- Deal number 0000104338  
 update [FleetActiv_Imperial].[dbo].[qdqm] 
  set qdqm_tyres = 1  ,
  [qdqm_fk_tyresizefront] = '205/55R16',
  [qdqm_fk_tyresizerear] = '205/55R16',
  qdqm_tqtyf = 6   ,
  qdqm_tqtyr = 6     
  WHERE qdqm_quote = '0300090428'


  
  