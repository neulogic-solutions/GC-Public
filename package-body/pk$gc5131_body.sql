CREATE OR REPLACE PACKAGE BODY PK$GC5131 AS
 /**
  * ===========================================================<br/>
  *  PURPOSE : Merge Global Customer IDs  <br/>
  *  SCHEMA: SYMPLUS20 <br/>
  *  Created By       : Onuoha Mike<br/>
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
    PKGC_30_MRG.PR_PRVS(
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
  PROCEDURE PR_PRC (PI_REC IN OUT GC_VT_30_MRG_E%ROWTYPE) IS
  BEGIN
    PKGC_30_MRG.PR_PRC (PI_REC => PI_REC);
    PKGC_00.PR_COMMIT;
  END PR_PRC;  
  ---
  FUNCTION FN_DTL (PI_KEY IN NUMBER) RETURN GC_VT_30_MRG%ROWTYPE IS
  BEGIN
    RETURN PKGC_30_MRG.FN_DTL(PI_KEY => PI_KEY);
  END FN_DTL;  
  ---
  FUNCTION FN_DTL_E (PI_KEY IN NUMBER) RETURN GC_VT_30_MRG_E%ROWTYPE IS
  BEGIN
    RETURN PKGC_30_MRG.FN_DTL_E(PI_KEY => PI_KEY);
  END FN_DTL_E;  
  ---
  PROCEDURE PR_APR (PI_KEY IN NUMBER, PI_CN IN NUMBER) IS
  BEGIN
    PKGC_30_MRG.PR_APR (PI_KEY => PI_KEY,
                         PI_CN  => PI_CN);
    PKGC_00.PR_COMMIT;
  END PR_APR;  
  ---
  PROCEDURE PR_DEL (PI_KEY IN NUMBER, PI_CN IN NUMBER) IS
  BEGIN
    PKGC_30_MRG.PR_DEL (PI_KEY => PI_KEY,
                         PI_CN  => PI_CN);
    PKGC_00.PR_COMMIT;
  END PR_DEL;  
  ---
END pk$GC5131;
/
