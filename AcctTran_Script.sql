SELECT
[AcctTran.ACCOUNTKEY],
[AcctTran.ADDBY],
[AcctTran.ADDDTTM],
[AcctTran.ADJUSTMENTKEY],
[AcctTran.APPFEEKEY],
[AcctTran.COMMENTSKEY],
[AcctTran.DEPOSITTRANSACTIONKEY],
[AcctTran.INTERNALFLAG],
[AcctTran.LINEITEMKEY],
[AcctTran.MODBY],
[AcctTran.MODDTTM],
[AcctTran.NEEDSJOURNAL],
[AcctTran.ONEOFFCHARGEKEY],
[AcctTran.PAYKEY],
[AcctTran.PENALTYKEY],
[AcctTran.REFTRANNO],
[AcctTran.REFUNDKEY],
[AcctTran.SOURCEKEY],
[AcctTran.SOURCETYPE], 
[AcctTran.TRANAMT],
[AcctTran.TRANBY],
[AcctTran.TRANDATE],
[AcctTran.TRANNO],
[AcctTran.TRANSACTIONDESIGNATOR],
[AcctTran.TRANSACTIONTYPE]
FROM [AcctTran]


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

[ACCOUNTKEY] = [AcctTran.ACCOUNTKEY]
[ADDBY] = [AcctTran.ADDBY]
[ADDDTTM] = [AcctTran.ADDDTTM]
[ADJUSTMENTKEY] = [AcctTran.ADJUSTMENTKEY]
[APPFEEKEY] = [AcctTran.APPFEEKEY]
[COMMENTSKEY] = [AcctTran.COMMENTSKEY]
[DEPOSITTRANSACTIONKEY] = [AcctTran.DEPOSITTRANSACTIONKEY]
[INTERNALFLAG] = [AcctTran.INTERNALFLAG]
[LINEITEMKEY] = [AcctTran.LINEITEMKEY]
[MODBY] = [AcctTran.MODBY]
[MODDTTM] = [AcctTran.MODDTTM]
IF [AcctTran.MODDTTM] IS NULL THEN [MODDTTM] = DATETIME ('01/01/1901') 
   ELSE [MODDTTM] = [AcctTran.MODDTTM]
END IF
[NEEDSJOURNAL] = [AcctTran.NEEDSJOURNAL]
[ONEOFFCHARGEKEY] = [AcctTran.ONEOFFCHARGEKEY]
[PAYKEY] = [AcctTran.PAYKEY]
[PENALTYKEY] = [AcctTran.PENALTYKEY]
[REFTRANNO] = [AcctTran.REFTRANNO]
[REFUNDKEY] = [AcctTran.REFUNDKEY]
[SOURCEKEY] = [AcctTran.SOURCEKEY]
[SOURCETYPE] = [AcctTran.SOURCETYPE]
[TRANAMT] = [AcctTran.TRANAMT]
[TRANBY] = [AcctTran.TRANBY]
[TRANDATE] = [AcctTran.TRANDATE]
[TRANNO] = [AcctTran.TRANNO]
[TRANSACTIONDESIGNATOR] = [AcctTran.TRANSACTIONDESIGNATOR]
[TRANSACTIONTYPE] = [AcctTran.TRANSACTIONTYPE]

WriteRecord

[v_counter] = [v_counter] + 1