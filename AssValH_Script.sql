SELECT
[AssValH.ACCDEPREC],
[AssValH.ACCPERIOD],
[AssValH.ACQDATE],
[AssValH.ACQTYPE],
[AssValH.ADDBY],
[AssValH.ADDDTTM],
[AssValH.ASSVALHISTKEY],
[AssValH.ASSVALKEY],
[AssValH.ASSVALRUNKEY],
[AssValH.BACKDATEADJFLAG],
[AssValH.BGTKEY],
[AssValH.BGTKEY2],
[AssValH.BGTKEY3],
[AssValH.BGTNO],
[AssValH.BOOKID],
[AssValH.CAPTLDATE],
[AssValH.CAPTLEXP],
[AssValH.CATEGORY],
[AssValH.CLASS],
[AssValH.COMPKEY],
[AssValH.COMPTYPE],
[AssValH.DEPRECRATE],
[AssValH.DEPRECTYPE],
[AssValH.DEPRECYTD],
[AssValH.DEPRESIDLF],
[AssValH.DISJOURNALDATE],						 
[AssValH.DISPBGTKEY],
[AssValH.DISPBGTNO],
[AssValH.DISPDATE],
[AssValH.DISPDESC],
[AssValH.DISPVAL],
[AssValH.EXPLIFE],
[AssValH.INITCOST],
[AssValH.INSUREVAL], 
[AssValH.LINEARFROMFT],
[AssValH.LINEARFROMM],
[AssValH.LINEARTOFT],
[AssValH.LINEARTOM],
[AssValH.MAINTEXP],
[AssValH.MODBY],
[AssValH.MODDTTM],
[AssValH.PROFITLOSS],
[AssValH.RECLNO],
[AssValH.RESIDLIFE],
[AssValH.RESIDVAL],
[AssValH.REVALAMT],
[AssValH.ROLLEDBACKFLAG],
[AssValH.RWATTRKEY],
[AssValH.RWATTRTYPE],
[AssValH.TAXVAL],
[AssValH.TOBESOLDDATE],
[AssValH.TOBESOLDDESC],
[AssValH.VALDATE],
[AssValH.WRITEDNVAL]
FROM [AssValH]


/* The purpose of this script is to... explain code*/

DIM [v_counter] AS INTEGER = 0
DIM [v_batch] AS INTEGER = 1

IF 
    [v_counter] = 100000  /* Should be 100000 in actual solution*/
THEN 
    [v_batch] = [v_batch] + 1
    [BATCH ID] = [v_batch]
    [v_counter] = 0
ELSE
    [BATCH ID] = [v_batch]
END IF
[LOAD] = GetVariable('LoadNumber')

[ACCDEPREC] = [AssValH.ACCDEPREC]
[ACQDATE] = [AssValH.ACQDATE]
[ACQTYPE] = [AssValH.ACQTYPE]
[ADDBY] = [AssValH.ADDBY]
[ADDDTTM] = [AssValH.ADDDTTM]
[ASSVALHISTKEY] = [AssValH.ASSVALHISTKEY]
[ASSVALKEY] = [AssValH.ASSVALKEY]
[ASSVALRUNKEY] = [AssValH.ASSVALRUNKEY]
[BACKDATEADJFLAG] = [AssValH.BACKDATEADJFLAG]
[BGTKEY] = [AssValH.BGTKEY]
[BGTKEY2] = [AssValH.BGTKEY2]
[BGTKEY3] = [AssValH.BGTKEY3]
[BGTNO] = [AssValH.BGTNO]
[BOOKID] = [AssValH.BOOKID]
[CAPTLDATE] = [AssValH.CAPTLDATE]
[CAPTLEXP] = [AssValH.CAPTLEXP]
[CATEGORY] = [AssValH.CATEGORY]
[CLASS] = [AssValH.CLASS]
[COMPKEY] = [AssValH.COMPKEY]
[COMPTYPE] = [AssValH.COMPTYPE]
[DEPRECRATE] = [AssValH.DEPRECRATE]
[DEPRECTYPE] = [AssValH.DEPRECTYPE]
[DEPRECYTD] = [AssValH.DEPRECYTD]
[DEPRESIDLF] = [AssValH.DEPRESIDLF]
[DISJOURNALDATE] = [AssValH.DISJOURNALDATE]
[DISPBGTKEY] = [AssValH.DISPBGTKEY]
[DISPBGTNO] = [AssValH.DISPBGTNO]
[DISPDATE] = [AssValH.DISPDATE]
[DISPDESC] = [AssValH.DISPDESC]
[DISPVAL] = [AssValH.DISPVAL]
[EXPLIFE] = [AssValH.EXPLIFE]
[INITCOST] = [AssValH.INITCOST]
[INSUREVAL] = [AssValH.INSUREVAL]
[LINEARFROMFT] = [AssValH.LINEARFROMFT]
[LINEARFROMM] = [AssValH.LINEARFROMM]
[LINEARTOFT] = [AssValH.LINEARTOFT]
[LINEARTOM] = [AssValH.LINEARTOM]
[MAINTEXP] = [AssValH.MAINTEXP]
[MODBY] = [AssValH.MODBY]
[MODDTTM] = [AssValH.MODDTTM]
IF [AssValH.MODDTTM] IS NULL THEN [MODDTTM] = DATETIME ('01/01/1901') 
   ELSE [MODDTTM] = [AssValH.MODDTTM]
END IF
[PROFITLOSS] = [AssValH.PROFITLOSS]
[RECLNO] = [AssValH.RECLNO]
[RESIDLIFE] = [AssValH.RESIDLIFE]
[RESIDVAL] = [AssValH.RESIDVAL]
[REVALAMT] = [AssValH.REVALAMT]
[ROLLEDBACKFLAG] = [AssValH.ROLLEDBACKFLAG]
[RWATTRKEY] = [AssValH.RWATTRKEY]
[RWATTRTYPE] = [AssValH.RWATTRTYPE]
[TAXVAL] = [AssValH.TAXVAL]
[TOBESOLDDATE] = [AssValH.TOBESOLDDATE]
[TOBESOLDDESC] = [AssValH.TOBESOLDDESC]
[VALDATE] = [AssValH.VALDATE]
[WRITEDNVAL] = [AssValH.WRITEDNVAL]
WriteRecord
[v_counter] = [v_counter] + 1