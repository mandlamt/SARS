truncate acb_sched 
truncate ACBFile
truncate ACBTransFileEntry
truncate [DriverImport]
truncate [drmtmp]
truncate [drstathist]
truncate [drt_histtmp]
truncate [drttmp]
truncate [fam]
truncate [fas]
truncate [fats]
truncate [fleetaudit]
truncate [fleetErrors]
truncate [FleetMail]
truncate [FleetWarnings]
truncate [FleetWebServicesLog1]
truncate [IFM_IMPORT_MAINT_AUTH]
truncate [mnd_audit]
truncate [opacc]
truncate [opacctmp]
truncate [opactmp]
truncate [opahtmp]
truncate [opaltmp]
truncate [opaptmp]
truncate [opastmp]
truncate [opattmp]
truncate [oraap_file]
truncate [ovmtmp]
truncate [qddm_BKP]
truncate [qddm_quote]
truncate [qddmbak]
truncate [qddmtmp]
truncate [qdqmtmp]
truncate [t_BI_INTERFACE_NEW_DEALS]
truncate [t_BI_INTERFACE_TERM_DEALS]
truncate [t_driverdet]
truncate [tempmaint]
truncate [UsersToRegister]
truncate [utmr]
truncate aem_tmp
truncate crcatCRMChangesAudit
truncate crmtmp
truncate [utSmsNotify]

select * from aem 
update  aem
	  set [aem_fname] = convert(varchar,aem_code) + '_aem_fname',
          [aem_sname] = convert(varchar,aem_code) + '_aem_sname',
	    --  [aem_wtel] = convert(varchar,aem_code) + '_aem_wtel'
        --[aem_htel] = convert(varchar,aem_code) + '_aem_htel'
        --[aem_ctel] = convert(varchar,aem_code) + '_aem_ctel'
select * from aem 








select * from aem 	  
update crm
		set [crm_name] = convert(varchar,crm_accno) + '_crm_name',
		 [crm_post1] = convert(varchar,crm_accno) + '_crm_post1',
		 [crm_post2] = convert(varchar,crm_accno) + '_crm_post2',
		 [crm_post3] = convert(varchar,crm_accno) + '_crm_post3',
		 [crm_post4] = convert(varchar,crm_accno) + '_crm_post4',
		 [crm_street1] = convert(varchar,crm_accno) + '_crm_street1',
		 [crm_street2] = convert(varchar,crm_accno) + '_crm_street2',
		 [crm_street3] = convert(varchar,crm_accno) + '_crm_street3',
		 [crm_street4] = convert(varchar,crm_accno) + '_crm_street4',
		 [crm_conacc] = convert(varchar,crm_accno) + '_crm_conacc',
		-- [crm_telacc] = convert(varchar,crm_accno) + '_crm_telacc'
		-- [crm_faxacc] = convert(varchar,crm_accno) + '_crm_faxacc'
		 [crm_conops] = convert(varchar,crm_accno) + '_crm_conops',
	--	 [crm_telops] = convert(varchar,crm_accno) + '_crm_telops',
	--	 [crm_faxops] = convert(varchar,crm_accno) + '_crm_faxops'
		 [crm_bankname] = convert(varchar,crm_accno) + '_crm_bankname',
	--     [crm_bankbrno] = convert(varchar,crm_accno) + '_crm_bankbrno'
         [crm_bankaccno] = convert(varchar,crm_accno) + '_crm_bankaccno',
		 [crm_bankaccname] = convert(varchar,crm_accno) + '_crm_bankaccname',
		-- [crm_vatvendor] = convert(varchar,crm_accno) + '_crm_vatvendor',
		 [crm_vatregno] = convert(varchar,crm_accno) + '_crm_vatregno',
		 [crm_email] = convert(varchar,crm_accno) + '_crm_email',
		 [crm_accemail] = convert(varchar,crm_accno) + '_crm_accemail',
		 [crm_compreg] = convert(varchar,crm_accno) + '_crm_compreg'
select * from aem 


select * from [drcn]
update [drcn]
	  set [deliveryName] =  convert(varchar,id) + '_deliveryName',
       [deliveryAddress] =  convert(varchar,id) + '_deliveryAddress',
       [postalAddress] =  convert(varchar,id) + '_postalAddress'
select * from [drcn]


select * from [drco]	  
update [drco]
      set [drco_desc] = convert(varchar, drco_id) + '_drco_desc' ,
       [drco_vatno] = convert(varchar, drco_id) + '_drco_vatno' ,
       [drco_street1] = convert(varchar, drco_id) + '_drco_street1',
      [drco_street2] = convert(varchar, drco_id) + '_drco_street2' ,
      [drco_street3] = convert(varchar, drco_id) + '_drco_street3',
      [drco_street4] = convert(varchar, drco_id) + '_drco_street4' ,
      [drco_post1] = convert(varchar, drco_id) + '_drco_post1',
      [drco_post2] = convert(varchar, drco_id) + '_drco_post2',
      [drco_post3] = convert(varchar, drco_id) + '_drco_post3',
      [drco_post4] = convert(varchar, drco_id) + '_drco_post4' ,
     -- [drco_fk_bankfincode] = convert(varchar, drco_id) + '_drco_fk_bankfincode'
      [drco_bankname] = convert(varchar, drco_id) + '_drco_bankname' ,
      [drco_bankbrno] = convert(varchar, drco_id) + '_drco_bankbrno',
      [drco_bankaccno] = convert(varchar, drco_id) + '_drco_bankaccno',
      [drco_bankaccname] = convert(varchar, drco_id) + '_drco_bankaccname' ,
     -- [drco_fk_bankacctype] = convert(varchar, drco_id) + '_drco_fk_bankacctype'
select * from [drco]	  













  select * from   [drco_old]
update [drco_old]
     -- set [drco_desc] = convert(varchar, drco_id) + '_drco_desc'
  select * from   [drco_old]  




















select * from [drcp] 
update [drcp]
      set [drcp_name] = convert(varchar, drcp_fk_accno) + '_drcp_name',
   --[drcp_cell] = convert(varchar, drcp_fk_accno) + '_drcp_cell'
       [drcp_mail] = convert(varchar, drcp_fk_accno) + '_drcp_mail',
       [drcp_tel] = convert(varchar, drcp_fk_accno) + '_drcp_tel',
       [drcp_fax] = convert(varchar, drcp_fk_accno) + '_drcp_fax',
       [drcp_id] = convert(varchar, drcp_fk_accno) + '_drcp_id',
   --[drcp_contactid] = convert(varchar, drcp_fk_accno) + '_drcp_contactid',
       [drcp_id_nonsa] = convert(varchar, drcp_fk_accno) + '_drcp_id_nonsa'
select * from [drcp]   
      
      
      
      
      
      
      
      
      
      
      
      
      
select * from [drh]    
update [drh]
	set [drh_delname]  = convert(varchar, drh_docno) +  '_drh_delname',
	[drh_deladdr]  = convert(varchar, drh_docno) +  '_drh_deladdr',
	[drh_postaddr]  = convert(varchar, drh_docno) +  '_drh_postaddr',
	[drh_longname]  = convert(varchar, drh_docno) +  '_drh_longname'
	 
select * from [drh]
	 
	 
	 
select * from [drinv]	 
update [drinv]
	 set [ref]  = convert(varchar, id) +  '_ref',
	  [deliveryName]  = convert(varchar, id) +  '_deliveryName',
	  [deliveryAddress]  = convert(varchar, id) +  '_deliveryAddress',
	  [postalAddress]  = convert(varchar, id) +  '_postalAddress'
select * from [drinv]
	 
	 
	 
	select * from [drinvddrd]
update [drinvddrd]
	 set [desc]  = convert(varchar, fk_id) +  '_desc'
	select * from [drinvddrd]
	
	
select * from [drm]
update [drm]
	 set [drm_name]  = convert(varchar, drm_accno) +  '_drm_name',
	  [drm_longname]  = convert(varchar, drm_accno) +  '_drm_longname',
	  [drm_post1]  = convert(varchar, drm_accno) +  '_drm_post1',
	  [drm_post2]  = convert(varchar, drm_accno) +  '_drm_post2',
	  [drm_post3]  = convert(varchar, drm_accno) +  '_drm_post3',
	  [drm_post4]  = convert(varchar, drm_accno) +  '_drm_post4',
	  [drm_street1]  = convert(varchar, drm_accno) +  '_drm_street1',
	  [drm_street2]  = convert(varchar, drm_accno) +  '_drm_street2',
	  [drm_street3]  = convert(varchar, drm_accno) +  '_drm_street3',
	  [drm_street4]  = convert(varchar, drm_accno) +  '_drm_street4',
	  [drm_conacc]  = convert(varchar, drm_accno) +  '_drm_conacc',
	  --[drm_telacc]  = convert(varchar, drm_accno) +  '_drm_telacc',
	--  [drm_faxacc]  = convert(varchar, drm_accno) +  '_drm_faxacc',
	  [drm_conops]  = convert(varchar, drm_accno) +  '_drm_conops',
	  --[drm_telops]  = convert(varchar, drm_accno) +  '_drm_telops',
	  --[drm_faxops]  = convert(varchar, drm_accno) +  '_drm_faxops', 
	  [drm_bankname]  = convert(varchar, drm_accno) +  '_drm_bankname',
	  [drm_bankbrno]  = convert(varchar, drm_accno) +  '_drm_bankbrno',
	  [drm_bankaccno]  = convert(varchar, drm_accno) +  '_drm_bankaccno',
	  [drm_bankaccname]  = convert(varchar, drm_accno) +  '_drm_bankaccname',	  
	  [drm_inscoy]  = convert(varchar, drm_accno) +  '_drm_inscoy',
	  [drm_insno]  = convert(varchar, drm_accno) +  '_drm_insno',	  
	  --[drm_vatno]  = convert(varchar, drm_accno) +  '_drm_vatno',
	  --[drm_selfins]  = convert(varchar, drm_accno) +  '_drm_selfins',
	  [drm_email]  = convert(varchar, drm_accno) +  '_drm_email',
	  [drm_proxyname]  = convert(varchar, drm_accno) +  '_drm_proxyname',
	  [drm_proxyidno]  = convert(varchar, drm_accno) +  '_drm_proxyidno',	
	--  [drm_proxytel]  = convert(varchar, drm_accno) +  '_drm_proxytel',
	 -- [drm_proxyfax]  = convert(varchar, drm_accno) +  '_drm_proxyfax',
	  [drm_opsmail]  = convert(varchar, drm_accno) +  '_drm_opsmail',
	  [drm_compreg]  = convert(varchar, drm_accno) +  '_drm_compreg',
	  [drm_idnum]  = convert(varchar, drm_accno) +  '_drm_idnum',
	  [drm_employer]  = convert(varchar, drm_accno) +  '_drm_employer',
	  [drm_website]  = convert(varchar, drm_accno) +  '_drm_website',
	  [drm_llname]  = convert(varchar, drm_accno) +  '_drm_llname',
	  --[drm_lltel]  = convert(varchar, drm_accno) +  '_drm_lltel',
	  [drm_llpostal]  = convert(varchar, drm_accno) +  '_drm_llpostal'
	  --[drm_acccell]  = convert(varchar, drm_accno) +  '_drm_acccell'
	  --[drm_opscell]  = convert(varchar, drm_accno) +  '_drm_opscell'
 select * from [drm]
 
 
select * from drm_aem_fm 
update drm_aem_fm
	 set [drm_name]  = convert(varchar, drm_accno) +  '_drm_name',
	[aem_name]  = convert(varchar, drm_accno) +  '_aem_name',
	 [fm_name]  = convert(varchar, drm_accno) +  '_fm_name'
select * from drm_aem_fm
	 
	 
select * from 	 [drn]
update [drn]
	 set [drn_fk_accno]  = convert(varchar, drn_fk_accno) +  '_drn_fk_accno'
select * from 	 [drn]
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
select * from 	 [drsh]  	 
update [drsh]
	 set [drsh_name]  = convert(varchar, drsh_fk_accno) +  '_drsh_name',
	 [drsh_id]  = convert(varchar, drsh_fk_accno) +  '_drsh_id',
	 [drsh_street]  = convert(varchar, drsh_fk_accno) +  '_drsh_street'
	-- [drsh_cellnumber]  = convert(varchar, drsh_fk_accno) +  '_drsh_cellnumber'
	-- [drsh_landlinenumber]  = convert(varchar, drsh_fk_accno) +  '_drsh_landlinenumber'
select * from 	 [drsh]






select * from 	 [glt_info] 
update [glt_info]
	 set [accNameInfo]  = convert(varchar, gllink) +  '_accNameInfo'
select * from 	 [glt_info] 
	 
	 
select * from 	 [glt_info]	 
update [ic_reports]
	 set [owner]  = convert(varchar, id) +  '_owner'
	 select * from 	 [glt_info]
	
 select * from 	 [ics_users] 
update [ics_users]
	 set [name]  = convert(varchar, id) +  '_name'
	  select * from  [ics_users]
	 
 select * from [mnd_audit]
update [mnd_audit]
	 set [mndaud_respdesc]  = convert(varchar, mndaud_audno) +  '_mndaud_respdesc'
select * from [mnd_audit]
	 
update [mndbr]
	 set [mndbr_desc]  = convert(varchar, mndbr_fk_accno) +  '_mndbr_desc'
	
select * from [OdoHistory]	 
update [OdoHistory]
	 set [drm_name]  = convert(varchar, RegNo) +  '_drm_name'
select * from [OdoHistory]


	 
select * from	opah 
update opah
	set 
	--[opah_telno]  = convert(varchar, opah_authno) +  '_opah_telno',
	--     [opah_faxno]  = convert(varchar, opah_authno) +  '_opah_faxno',
	[opah_contact]  = convert(varchar, opah_authno) +  '_opah_contact',
	 [opah_vnotes]  = convert(varchar, opah_authno) +  '_opah_vnotes'
	 
	select * from	opah  
	
	
	
	
	
	
	
	
	
	
	
	
select * from opf	
update opf
	 set [opfl_driver]  = convert(varchar, opfl_fk_lacode) +  '_opfl_driver',
	  [opfl_dstreet]  = convert(varchar, opfl_fk_lacode) +  '_opfl_dstreet',
	  [opfl_ststper]  = convert(varchar, opfl_fk_lacode) +  '_opfl_ststper',
	  [opfl_clientname]  = convert(varchar, opfl_fk_lacode) +  '_opfl_clientname',
	--  [opfl_driverid]  = convert(varchar, opfl_fk_lacode) +  '_opfl_driverid'
	  [opf_streetname]  = convert(varchar, opfl_fk_lacode) +  '_opf_streetname',
	  [opf_dpostal]  = convert(varchar, opfl_fk_lacode) +  '_opf_dpostal',
	  [opf_dmail]  = convert(varchar, opfl_fk_lacode) +  '_opf_dmail',
	--  [opf_dcell]  = convert(varchar, opfl_fk_lacode) +  '_opf_dcell'
	--  [opf_dtelw]  = convert(varchar, opfl_fk_lacode) +  '_opf_dtelw'
	  [opf_pmail]  = convert(varchar, opfl_fk_lacode) +  '_opf_pmail',
	-- [opf_pcell]  = convert(varchar, opfl_fk_lacode) +  '_opf_pcell',
	  [opf_pstreet]  = convert(varchar, opfl_fk_lacode) +  '_opf_pstreet',
	  [opf_ppostal]  = convert(varchar, opfl_fk_lacode) +  '_opf_ppostal'
select * from opf 
	 
	 
	 
	 
	 
	 
	 
	 
	 
select * from	[oraap_trans] 
update  [oraap_trans]
	 set [bankName]  = convert(varchar, fk_batchSource) +  '_bankName',
	  [bankBranch]  = convert(varchar, fk_batchSource) +  '_bankBranch',
	  [bankAccNo]  = convert(varchar, fk_batchSource) +  '_bankAccNo',
	  [bankAccName]  = convert(varchar, fk_batchSource) +  '_bankAccName'
select * from	[oraap_trans] 


select * from	ovm
update ovm
	 set [ovm_regno]  = convert(varchar, ovm_fleetno) +  '_ovm_regno',
	  [ovm_natisno]  = convert(varchar, ovm_fleetno) +  '_ovm_natisno',
	--  [ovm_chassisno]  = convert(varchar, ovm_fleetno) +  '_ovm_chassisno'
	  [ovm_engineno]  = convert(varchar, ovm_fleetno) +  '_ovm_engineno',
	--  [ovm_pfrom]  = convert(varchar, ovm_fleetno) +  '_ovm_pfrom'
	-- [ovm_contact]  = convert(varchar, ovm_fleetno) +  '_ovm_contact'
	 
select * from	ovm
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
select * from qddm
update qddm
	 set [qddm_contact]  = convert(varchar, qddm_deal) +  '_qddm_contact',
	  [qddm_driver]  = convert(varchar, qddm_deal) +  '_qddm_driver',
	  [qddm_dpost]  = convert(varchar, qddm_deal) +  '_qddm_dpost',
	  [qddm_dstreet]  = convert(varchar, qddm_deal) +  '_qddm_dstreet',
	  [qddm_natisno]  = convert(varchar, qddm_deal) +  '_qddm_natisno',
	 -- [qddm_engineno]  = convert(varchar, qddm_deal) +  '_qddm_engineno'
	--  [qddm_chassisno]  = convert(varchar, qddm_deal) +  '_qddm_chassisno',
	--  [qddm_regno]  = convert(varchar, qddm_deal) +  '_qddm_regno'
	 -- [qddm_signby]  = convert(varchar, qddm_deal) +  '_qddm_signby'
	  --[qddm_cellno]  = convert(varchar, qddm_deal) +  '_qddm_cellno'
	--  [qddm_htelno]  = convert(varchar, qddm_deal) +  '_qddm_htelno'
	--  [qddm_otelno]  = convert(varchar, qddm_deal) +  '_qddm_otelno'
	--  [qddm_faxno]  = convert(varchar, qddm_deal) +  '_qddm_faxno'
	  [qddm_email]  = convert(varchar, qddm_deal) +  '_qddm_email'
select * from qddm
	 
	 
select * from  qdqm
update qdqm
	 set --[qdqm_uregno]  = convert(varchar, qdqm_quote) +  '_qdqm_uregno'
	  [qdqm_name]  = convert(varchar, qdqm_quote) +  '_qdqm_name',
	  [qdqm_contact]  = convert(varchar, qdqm_quote) +  '_qdqm_contact',
	  [qdqm_post1]  = convert(varchar, qdqm_quote) +  '_qdqm_post1',
	  [qdqm_post2]  = convert(varchar, qdqm_quote) +  '_qdqm_post2',
	  [qdqm_post3]  = convert(varchar, qdqm_quote) +  '_qdqm_post3',
	  [qdqm_post4]  = convert(varchar, qdqm_quote) +  '_qdqm_post4',
	  [qdqm_email]  = convert(varchar, qdqm_quote) +  '_qdqm_email',
	 -- [qdqm_faxno]  = convert(varchar, qdqm_quote) +  '_qdqm_faxno'
	 -- [qdqm_otelno]  = convert(varchar, qdqm_quote) +  '_qdqm_otelno'
	  --[qdqm_htelno]  = convert(varchar, qdqm_quote) +  '_qdqm_htelno'
	--  [qdqm_cellno]  = convert(varchar, qdqm_quote) +  '_qdqm_cellno'
	 
	 select * from  qdqm
	 
	 
	 
	 
	 
	 
	 
	 	 select * from  qdqmh
update qdqmh
	 set --[qdqmh_uregno]  = convert(varchar, qdqmh_quote) +  '_qdqmh_uregno'
	[qdqmh_name]  = convert(varchar, qdqmh_quote) +  '_qdqmh_name',
	[qdqmh_contact]  = convert(varchar, qdqmh_quote) +  '_qdqmh_contact',
	  [qdqmh_post1]  = convert(varchar, qdqmh_quote) +  '_qdqmh_post1',
	  [qdqmh_post2]  = convert(varchar, qdqmh_quote) +  '_qdqmh_post2',
	  [qdqmh_post3]  = convert(varchar, qdqmh_quote) +  '_qdqmh_post3',
	  [qdqmh_post4]  = convert(varchar, qdqmh_quote) +  '_qdqmh_post4',
	  [qdqmh_email]  = convert(varchar, qdqmh_quote) +  '_qdqmh_email',
	 -- [qdqmh_faxno]  = convert(varchar, qdqmh_quote) +  '_qdqmh_faxno'
	--  [qdqmh_otelno]  = convert(varchar, qdqmh_quote) +  '_qdqmh_otelno'
	--  [qdqmh_htelno]  = convert(varchar, qdqmh_quote) +  '_qdqmh_htelno'
	--  [qdqmh_cellno]  = convert(varchar, qdqmh_quote) +  '_qdqmh_cellno'
	 
	 	 
	 	 select * from  qdqmh
	 
	 
	 
	 	 	 select * from radl
update radl
	 set --[radl_lastname]  = convert(varchar, radl_staffno) +  '_radl_lastname'
 --[radl_firstname]  = convert(varchar, radl_staffno) +  '_radl_firstname'
--[radl_licno]  = convert(varchar, radl_staffno) +  '_radl_licno'
--[radl_liccode]  = convert(varchar, radl_staffno) +  '_radl_liccode'
	--  [radl_driverid]  = convert(varchar, radl_staffno) +  '_radl_driverid'
	 -- [radl_pdp]  = convert(varchar, radl_staffno) +  '_radl_pdp'
	  [radl_postaladdr]  = convert(varchar, radl_staffno) +  '_radl_postaladdr',
	  [radl_homeaddr]  = convert(varchar, radl_staffno) +  '_radl_homeaddr',
	  [radl_workaddr]  = convert(varchar, radl_staffno) +  '_radl_workaddr',
	--  [radl_telh]  = convert(varchar, radl_staffno) +  '_radl_telh'
	--  [radl_telw]  = convert(varchar, radl_staffno) +  '_radl_telw'
--[radl_cell]  = convert(varchar, radl_staffno) +  '_radl_cell'
	  [radl_email]  = convert(varchar, radl_staffno) +  '_radl_email',
	  [radl_employer]  = convert(varchar, radl_staffno) +  '_radl_employer',
	-- [radl_fax]  = convert(varchar, radl_staffno) +  '_radl_fax'
	 	 	 select * from radl	 
	 	 	 
	 select * from [rmt]
update [rmt]
	 set [rmt_payref] = convert(varchar, rmt_id) +  '_rmt_payref'
	 select * from [rmt]





	 select * from 	 suma	 
update suma
	 set [sum_name]  = convert(varchar, sum_id) +  '_sum_name',
	  [sum_fullname]  = convert(varchar, sum_id) +  '_sum_fullname',
	  [sum_email]  = convert(varchar, sum_id) +  '_sum_email',
	  [sum_mobile_number]  = convert(varchar, sum_id) +  '_sum_mobile_number',
	 -- [sum_manager]  = convert(varchar, sum_id) +  '_sum_manager'
 select * from 	 suma
 
  select * from utbr 	 
update utbr
	 set [utb_post1]  = convert(varchar, utbr_code) +  '_utb_post1',
	  [utb_post2]  = convert(varchar, utbr_code) +  '_utb_post2',
	  [utb_post3]  = convert(varchar, utbr_code) +  '_utb_post3',
	  [utb_post4]  = convert(varchar, utbr_code) +  '_utb_post4',
	  [utb_street1]  = convert(varchar, utbr_code) +  '_utb_street1',
	  [utb_street2]  = convert(varchar, utbr_code) +  '_utb_street2',
	  [utb_street3]  = convert(varchar, utbr_code) +  '_utb_street3',
	  [utb_street4]  = convert(varchar, utbr_code) +  '_utb_street4',
	  [utb_coytel]  = convert(varchar, utbr_code) +  '_utb_coytel',
	  [utb_coyfax]  = convert(varchar, utbr_code) +  '_utb_coyfax',
	 [utb_bankname]  = convert(varchar, utbr_code) +  '_utb_bankname',
	  [utb_bankbrno]  = convert(varchar, utbr_code) +  '_utb_bankbrno',
	  [utb_bankaccno]  = convert(varchar, utbr_code) +  '_utb_bankaccno',
	  [utb_bankaccname]  = convert(varchar, utbr_code) +  '_utb_bankaccname',
	  [utb_fk_bankacctype]  = convert(varchar, utbr_code) +  '_utb_fk_bankacctype',
	  [utb_bankname2]  = convert(varchar, utbr_code) +  '_utb_bankname2',
	  [utb_bankbrno2]  = convert(varchar, utbr_code) +  '_utb_bankbrno2',
	  [utb_bankaccno2]  = convert(varchar, utbr_code) +  '_utb_bankaccno2',
	  [utb_bankaccname2]  = convert(varchar, utbr_code) +  '_utb_bankaccname2',
	  [utb_fk_bankacctype2]  = convert(varchar, utbr_code) +  '_utb_fk_bankacctype2'
  select * from utbr
  
  select * from utfund
update utfund
	 set [utf_regno]  = convert(varchar, utf_code) +  '_utf_regno',
	  [utf_vatno]  = convert(varchar, utf_code) +  '_utf_vatno',
	  [utf_telno]  = convert(varchar, utf_code) +  '_utf_telno',
	  [utf_faxno]  = convert(varchar, utf_code) +  '_utf_faxno',
	  [utf_street1]  = convert(varchar, utf_code) +  '_utf_street1',
	  [utf_street2]  = convert(varchar, utf_code) +  '_utf_street2',
	  [utf_street3]  = convert(varchar, utf_code) +  '_utf_street3',
	  [utf_street4]  = convert(varchar, utf_code) +  '_utf_street4',
	  [utf_post1]  = convert(varchar, utf_code) +  '_utf_post1',
	  [utf_post2]  = convert(varchar, utf_code) +  '_utf_post2',
	  [utf_post3]  = convert(varchar, utf_code) +  '_utf_post3',
	  [utf_post4]  = convert(varchar, utf_code) +  '_utf_post4',
	  --[utf_callcentre_tel]  = convert(varchar, utf_code) +  '_utf_callcentre_tel'
	 -- [utf_callcentre_fax]  = convert(varchar, utf_code) +  '_utf_callcentre_fax'
	  [utf_bankaccname]  = convert(varchar, utf_code) +  '_utf_bankaccname',
	  --[utf_bankaccno]  = convert(varchar, utf_code) +  '_utf_bankaccno'
	  [utf_bankname]  = convert(varchar, utf_code) +  '_utf_bankname',
	 -- [utf_bankbrno]  = convert(varchar, utf_code) +  '_utf_bankbrno'
	  [utf_opmanname]  = convert(varchar, utf_code) +  '_utf_opmanname',
	  [utf_procmanname]  = convert(varchar, utf_code) +  '_utf_procmanname',
	  --[utf_opmanname]  = convert(varchar, utf_code) +  '_utf_opmanname'        Duplicate
	  [utf_procmantitle]  = convert(varchar, utf_code) +  '_utf_procmantitle',
	 -- [utf_maintcompany]  = convert(varchar, utf_code) +  '_utf_maintcompany'
	  [utf_statcontname]  = convert(varchar, utf_code) +  '_utf_statcontname',
	 --[utf_statconttel]  = convert(varchar, utf_code) +  '_utf_statconttel',
	 [utf_statcontemail]  = convert(varchar, utf_code) +  '_utf_statcontemail'
	  select * from utfund
	  
select * from  utfundcd 
update utfundcd
	 set [utfcd_telno]  = convert(varchar, utfcd_fk_type) +  '_utfcd_telno',
	  [utfcd_faxno]  = convert(varchar, utfcd_fk_type) +  '_utfcd_faxno',
	  [utfcd_cellno]  = convert(varchar, utfcd_fk_type) +  '_utfcd_cellno',
	  [utfcd_email]  = convert(varchar, utfcd_fk_type) +  '_utfcd_email',
	  [utfcd_street1]  = convert(varchar, utfcd_fk_type) +  '_utfcd_street1',
	  [utfcd_street2]  = convert(varchar, utfcd_fk_type) +  '_utfcd_street2',
	  [utfcd_street3]  = convert(varchar, utfcd_fk_type) +  '_utfcd_street3',
	  [utfcd_street4]  = convert(varchar, utfcd_fk_type) +  '_utfcd_street4',
	  [utfcd_post1]  = convert(varchar, utfcd_fk_type) +  '_utfcd_post1',
	  [utfcd_post2]  = convert(varchar, utfcd_fk_type) +  '_utfcd_post2',
	  [utfcd_post3]  = convert(varchar, utfcd_fk_type) +  '_utfcd_post3',
	  [utfcd_post4]  = convert(varchar, utfcd_fk_type) +  '_utfcd_post4'
select * from  utfundcd 


select * from utli
update utli
	 set [utli_name]  = convert(varchar, utli_code) +  '_utli_name',
	  [utli_add1]  = convert(varchar, utli_code) +  '_utli_add1',
	  [utli_add2]  = convert(varchar, utli_code) +  '_utli_add2',
	  [utli_add3]  = convert(varchar, utli_code) +  '_utli_add3',
	  [utli_add4]  = convert(varchar, utli_code) +  '_utli_add4',
--	  [utli_telno]  = convert(varchar, utli_code) +  '_utli_telno'
--	  [utli_faxno]  = convert(varchar, utli_code) +  '_utli_faxno'
	 
	 select * from utli
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
select * from utp	 
update utp
	set [utp_fullname]  = convert(varchar, utp_code) +  '_utp_fullname',
	  [utp_idno]  = convert(varchar, utp_code) +  '_utp_idno',
	--  [utp_tel]  = convert(varchar, utp_code) +  '_utp_tel'
	--  [utp_fax]  = convert(varchar, utp_code) +  '_utp_fax'
	 -- [utp_address]  = convert(varchar, utp_code) +  '_utp_address'
	 --[utp_postaladdr]  = convert(varchar, utp_code) +  '_utp_postaladdr'
	--[utp_cell]  = convert(varchar, utp_code) +  '_utp_cell'
	  [utp_email]  = convert(varchar, utp_code) +  '_utp_email'
 select * from utp	
	 
	 
 select * from	utUBERdrvs 
update [utUBERdrvs]
set [utUBERdrvs_name] = convert(varchar, utUBERdrvs_uuid) +  '_utUBERdrvs_name'
 select * from utUBERdrvs



 select * from sk
update sk
set sk_value = ''
where sk_id in (
				'certrack_service_url',
				'qdqm_profit_notify_addr',
				'ua_recipient(s)',
				'utc_10dayleave_uri',
				'utc_bankaccname',
				'utc_bankaccno',
				'utc_bankaccsname',
				'utc_bankacctype',
				'utc_bankbrno',
				'utc_bankname',
				'utc_batch_notify_addr',
				'utc_callcenter_fax',
				'utc_callcenter_tel',
				'utc_compbankcode',
				'utc_coyfax',
				'utc_coyreg',
				'utc_coytax',
				'utc_coytel',
				'utc_drdefaultemail',
				'utc_fics_notify_addr',
				'utc_opmanname',
				'utc_post1',
				'utc_post2',
				'utc_post3',
				'utc_post4',
				'utc_procmanname',
				'utc_proxy',
				'utc_proxyfax',
				'utc_proxyID',
				'utc_proxytel',
				'utc_sms_uri',
				'utc_street1',
				'utc_street2',
				'utc_street3',
				'utc_street4',
				'utc_uber_ctrack_password',
				'utc_uber_ctrack_username',
				'utc_uber_email_sender',
				'utc_uber_mix_password',
				'utc_uber_mix_username')
 select * from sk