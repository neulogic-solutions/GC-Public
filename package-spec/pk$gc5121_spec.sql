CREATE OR REPLACE PACKAGE PK$GC5121 AUTHID DEFINER AS
 /**
  * ===========================================================<br/>
  *  PURPOSE : Auto Match Customers  <br/>
  *  SCHEMA: SYMPLUS20 <br/>
  *  Created By       : ONYEDINEFU Ezinne<br/>
  *  Date Created     : 29-OCT-2024 <br/>
  *  Release Version  : 2.0 <br/>
  * ===========================================================<br/>
  * @headcom
  */
  --
  PROCEDURE PR_PRVS (PI_KEY IN NUMBER DEFAULT NULL,
                     PO_INS_YN    OUT VARCHAR2,
                     PO_UPD_YN    OUT VARCHAR2,
                     PO_DEL_YN    OUT VARCHAR2,
                     PO_APR_YN    OUT VARCHAR2,
                     PO_AUD_YN  OUT VARCHAR2);
	---
					 
  PROCEDURE PR_PRC (PI_REC IN OUT GC_VT_21_MTCH_E%ROWTYPE);
  ---
  FUNCTION FN_REC (PI_KEY IN NUMBER) RETURN GC_21_MTCH%ROWTYPE;
  ---
  FUNCTION FN_DTL (PI_KEY IN NUMBER) RETURN GC_VT_21_MTCH%ROWTYPE;
  ---
  FUNCTION FN_DTL_E (PI_KEY IN NUMBER) RETURN GC_VT_21_MTCH_E%ROWTYPE;
  ---
  PROCEDURE PR_APR (PI_KEY IN NUMBER, PI_CN IN NUMBER);
 ---
  PROCEDURE PR_DEL (PI_KEY IN NUMBER, PI_CN IN NUMBER);
  ---
  PROCEDURE PR_VAL (PI_KEY IN NUMBER);
  ---
END pk$gc5121;
/

