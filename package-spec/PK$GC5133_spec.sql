CREATE OR REPLACE PACKAGE PK$GC5133 AS
 /**
  * ===========================================================<br/>
  *  PURPOSE : Remove Customers  <br/>
  *  SCHEMA: SYMPLUS20 <br/>
  *  Created By       : Adenuga Afeez<br/>
  *  Date Created     : 29-OCT-2024 <br/>
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
  
  PROCEDURE PR_PRC (PI_REC IN OUT GC_VT_30_RLS_E%ROWTYPE);
  
  PROCEDURE PR_APR (PI_KEY IN NUMBER, PI_CN IN NUMBER);
  
  PROCEDURE PR_DEL (PI_KEY IN NUMBER, PI_CN IN NUMBER);
  ---
END PK$GC5133;
/