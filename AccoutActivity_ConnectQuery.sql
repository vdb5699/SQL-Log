SELECT
BILLING.ACCOUNTACTIVITY."ACCOUNTKEY",
BILLING.ACCOUNTACTIVITY."ACCOUNTSERVICEKEY",
BILLING.ACCOUNTACTIVITY."ADDBY",
BILLING.ACCOUNTACTIVITY."ADDDTTM",
BILLING.ACCOUNTACTIVITY."ADJUSTMENTKEY",
BILLING.ACCOUNTACTIVITY."APPFEEKEY",
BILLING.ACCOUNTACTIVITY."BILLKEY",
BILLING.ACCOUNTACTIVITY."DEPOSITADJUSTMENTKEY",
BILLING.ACCOUNTACTIVITY."DEPOSITCHARGEKEY",
BILLING.ACCOUNTACTIVITY."LINEITEMKEY",
BILLING.ACCOUNTACTIVITY."LINEITEMSETUPKEY",
BILLING.ACCOUNTACTIVITY."MODBY",
BILLING.ACCOUNTACTIVITY."MODDTTM",
BILLING.ACCOUNTACTIVITY."ONEOFFCHARGEKEY",
BILLING.ACCOUNTACTIVITY."PAYMENTKEY",
BILLING.ACCOUNTACTIVITY."PENALTYKEY",
BILLING.ACCOUNTACTIVITY."REFUNDKEY"
FROM BILLING.ACCOUNTACTIVITY
WHERE MODDTTM  >= V{ExtractFromDateTime} 
AND MODDTTM <= V{ExtractToDateTime}