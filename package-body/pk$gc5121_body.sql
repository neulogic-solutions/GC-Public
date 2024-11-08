CREATE OR REPLACE PACKAGE BODY PK$GC5121 AS
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
                     PO_AUD_YN  OUT VARCHAR2) IS
  BEGIN
    PKGC_21_MTCH.PR_PRVS(
      PI_KEY    => PI_KEY,
      PO_INS_YN => PO_INS_YN,
      PO_UPD_YN => PO_UPD_YN,
      PO_DEL_YN => PO_DEL_YN,
      PO_APR_YN => PO_APR_YN,
      PO_AUD_YN => PO_AUD_YN  
    );
    PKGC_00.PR_COMMIT;
  END PR_PRVS;

  ---
  PROCEDURE PR_PRC (PI_REC IN OUT GC_VT_21_MTCH_E%ROWTYPE) IS
  BEGIN
    PKGC_21_MTCH.PR_PRC (PI_REC => PI_REC);
    PKGC_00.PR_COMMIT;
  END PR_PRC;
  
  ---
  FUNCTION FN_REC (PI_KEY IN NUMBER) RETURN GC_21_MTCH%ROWTYPE IS
  BEGIN
    RETURN PKGC_21_MTCH.FN_REC(PI_KEY => PI_KEY);
  END FN_REC;
  
  ---
  FUNCTION FN_DTL (PI_KEY IN NUMBER) RETURN GC_VT_21_MTCH%ROWTYPE IS
  BEGIN
    RETURN PKGC_21_MTCH.FN_DTL(PI_KEY => PI_KEY);
  END FN_DTL;
  
  ---
  FUNCTION FN_DTL_E (PI_KEY IN NUMBER) RETURN GC_VT_21_MTCH_E%ROWTYPE IS
  BEGIN
    RETURN PKGC_21_MTCH.FN_DTL_E(PI_KEY => PI_KEY);
  END FN_DTL_E;
  
  ---
  PROCEDURE PR_APR (PI_KEY IN NUMBER, PI_CN IN NUMBER) IS
  BEGIN
    PKGC_21_MTCH.PR_APR (PI_KEY => PI_KEY,
                         PI_CN  => PI_CN);
    PKGC_00.PR_COMMIT;
  END PR_APR;
  
  ---
  PROCEDURE PR_DEL (PI_KEY IN NUMBER, PI_CN IN NUMBER) IS
  BEGIN
    PKGC_21_MTCH.PR_DEL (PI_KEY => PI_KEY,
                         PI_CN  => PI_CN);
    PKGC_00.PR_COMMIT;
  END PR_DEL;
  
  ---
  PROCEDURE PR_VAL (PI_KEY IN NUMBER) IS
  BEGIN
    PKGC_21_MTCH.PR_VAL (PI_KEY => PI_KEY);
    PKGC_00.PR_COMMIT;
  END PR_VAL;
  
  ---
END pk$gc5121;
/
