CREATE OR REPLACE PACKAGE pk$gc5135 AS
 /**
  * ===========================================================<br/>
  *  PURPOSE : Add Customers  <br/>
  *  SCHEMA: SYMPLUS20 <br/>
  *  Created By       : Fred-Hess Victor <br/>
  *  Date Created     : 05-NOV-2024 <br/>
  *  Release Version  : 2.0 <br/>
  * ===========================================================<br/>
  * @headcom
  */
  --
  PROCEDURE PR_PRVS (PI_KEY  IN NUMBER DEFAULT NULL,
                     PO_INS_YN  OUT VARCHAR2,
                     PO_UPD_YN  OUT VARCHAR2, 
                     PO_DEL_YN  OUT VARCHAR2,
                     PO_APR_YN  OUT VARCHAR2,
                     PO_AUD_YN  OUT VARCHAR2);
  
  PROCEDURE PR_PRC (PI_REC IN OUT GC_VT_30_CCL_E%ROWTYPE);
  
  PROCEDURE PR_APR (PI_KEY IN NUMBER, PI_CN IN NUMBER);
  
  PROCEDURE PR_DEL (PI_KEY IN NUMBER, PI_CN IN NUMBER);
  
  FUNCTION fn_rec (pi_key IN NUMBER) RETURN GC_30_CCL%ROWTYPE;

  FUNCTION fn_dtl (pi_key IN NUMBER) RETURN GC_VT_30_CCL%ROWTYPE;
  
  FUNCTION fn_dtl_e (pi_key IN NUMBER) RETURN GC_VT_30_CCL_E%ROWTYPE;
  
  ---
END pk$gc5135;
/