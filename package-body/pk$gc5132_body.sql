CREATE OR REPLACE PACKAGE body pk$gc5132 AS
 /**
  * ===========================================================<br/>
  *  PURPOSE : Add Customers  <br/>
  *  SCHEMA: SYMPLUS20 <br/>
  *  Created By       : Akah Esther<br/>
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
                     PO_AUD_YN  OUT VARCHAR2)IS
	
  BEGIN
	PKGC_30_ADD.PR_PRVS(PI_KEY    =>  PI_KEY,
      PO_INS_YN =>  PO_INS_YN,
      PO_UPD_YN =>  PO_UPD_YN,
      PO_DEL_YN =>  PO_DEL_YN,
      PO_APR_YN =>  PO_APR_YN,
      PO_AUD_YN =>  PO_AUD_YN);
	PKGC_00.PR_COMMIT;
END PR_PRVS; 


	--- 
  PROCEDURE PR_PRC (PI_REC IN OUT GC_VT_30_ADD_E%ROWTYPE) IS
  BEGIN
    PKGC_30_ADD.PR_PRC (PI_REC => PI_REC);
    PKGC_00.PR_COMMIT;
  END PR_PRC;
  
 --
  PROCEDURE PR_APR (PI_KEY IN NUMBER, PI_CN IN NUMBER) IS
  BEGIN
    PKGC_30_ADD.PR_APR (PI_KEY => PI_KEY,
   PI_CN  => PI_CN);
    PKGC_00.PR_COMMIT;
  END PR_APR;
  
 ---
  PROCEDURE PR_DEL (PI_KEY IN NUMBER, PI_CN IN NUMBER) IS
  BEGIN
    PKGC_30_ADD.PR_DEL (PI_KEY => PI_KEY,
   PI_CN  => PI_CN);
    PKGC_00.PR_COMMIT;
  END PR_DEL;
  ---
END pk$gc5132;
/