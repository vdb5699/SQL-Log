SELECT
[AccountActivity.ACCOUNTKEY],
[AccountActivity.ACCOUNTSERVICEKEY],
[AccountActivity.ADDBY],
[AccountActivity.ADDDTTM],
[AccountActivity.ADJUSTMENTKEY],
[AccountActivity.APPFEEKEY],
[AccountActivity.BILLKEY], 
[AccountActivity.DEPOSITADJUSTMENTKEY],
[AccountActivity.DEPOSITCHARGEKEY],
[AccountActivity.LINEITEMKEY],
[AccountActivity.LINEITEMSETUPKEY],
[AccountActivity.MODBY], 
[AccountActivity.MODDTTM],
[AccountActivity.ONEOFFCHARGEKEY],
[AccountActivity.PAYMENTKEY],
[AccountActivity.PENALTYKEY],
[AccountActivity.REFUNDKEY]
FROM [AccountActivity]


/* The purpose of this script is to... explain code*/

DIM [v_counter] AS INTEGER = 0
DIM [v_batch] AS INTEGER = 1

IF 
    [v_counter] = 4 /* Should be 100000 in actual solution*/
THEN 
    [v_batch] = [v_batch] + 1 
    [BATCH ID] = [v_batch]
    [v_counter] = 1
ELSE
    [BATCH ID] = [v_batch]
END IF
[LOAD] = GetVariable('LoadNumber')

[ACCOUNTACTIVITY_ID] = VARCHAR([AccountActivity.ACCOUNTKEY]) + '_' + VARCHAR([AccountActivity.ACCOUNTSERVICEKEY]) + '_' + VARCHAR([AccountActivity.ADJUSTMENTKEY])
                       + '_' + VARCHAR([AccountActivity.APPFEEKEY]) + '_' + VARCHAR([AccountActivity.BILLKEY])
                       + '_' + VARCHAR([AccountActivity.LINEITEMSETUPKEY]) + '_' + VARCHAR([AccountActivity.ONEOFFCHARGEKEY])
                       + '_' + VARCHAR([AccountActivity.PAYMENTKEY]) + '_' + VARCHAR([AccountActivity.PENALTYKEY])
                       + '_' + VARCHAR([AccountActivity.REFUNDKEY])
[ACCOUNTKEY] = [AccountActivity.ACCOUNTKEY]
[ACCOUNTSERVICEKEY] = [AccountActivity.ACCOUNTSERVICEKEY]
[ADDBY] = [AccountActivity.ADDBY]
[ADDDTTM] = [AccountActivity.ADDDTTM]
[ADJUSTMENTKEY] = [AccountActivity.ADJUSTMENTKEY]
[APPFEEKEY] = [AccountActivity.APPFEEKEY]
[BILLKEY] = [AccountActivity.BILLKEY]
[DEPOSITADJUSTMENTKEY] = [AccountActivity.DEPOSITADJUSTMENTKEY]
[DEPOSITCHARGEKEY] = [AccountActivity.DEPOSITCHARGEKEY]
[LINEITEMKEY] = [AccountActivity.LINEITEMKEY]
[LINEITEMSETUPKEY] = [AccountActivity.LINEITEMSETUPKEY]
[MODBY] = [AccountActivity.MODBY]
[MODDTTM] = [AccountActivity.MODDTTM]
IF [AccountActivity.MODDTTM] IS NULL THEN [MODDTTM] = DATETIME ('01/01/1901') 
   ELSE [MODDTTM] = [AccountActivity.MODDTTM]
END IF
[ONEOFFCHARGEKEY] = [AccountActivity.ONEOFFCHARGEKEY]
[PAYMENTKEY] = [AccountActivity.PAYMENTKEY]
[PENALTYKEY] = [AccountActivity.PENALTYKEY]
[REFUNDKEY] = [AccountActivity.REFUNDKEY]

WriteRecord

[v_counter] = [v_counter] + 1