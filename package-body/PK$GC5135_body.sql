CREATE OR REPLACE PACKAGE BODY PK$GC5135 AS
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

  -- Procedure to handle permissions
  PROCEDURE PR_PRVS (PI_KEY IN NUMBER DEFAULT NULL,
                     PO_INS_YN OUT VARCHAR2,
                     PO_UPD_YN OUT VARCHAR2,
                     PO_DEL_YN OUT VARCHAR2,
                     PO_APR_YN OUT VARCHAR2,
                     PO_AUD_YN OUT VARCHAR2) IS
  BEGIN
    PKGC_30_CCL.PR_PRVS(PI_KEY    =>  PI_KEY,
                        PO_INS_YN =>  PO_INS_YN,
                        PO_UPD_YN =>  PO_UPD_YN,
                        PO_DEL_YN =>  PO_DEL_YN,
                        PO_APR_YN =>  PO_APR_YN,
                        PO_AUD_YN =>  PO_AUD_YN);
    PKGC_00.PR_COMMIT;
  END PR_PRVS;

  -- Procedure to process a record
  PROCEDURE PR_PRC (PI_REC IN OUT GC_VT_30_CCL_E%ROWTYPE) IS
  BEGIN
    PKGC_30_CCL.PR_PRC (PI_REC => PI_REC);
    PKGC_00.PR_COMMIT;
  END PR_PRC;

  -- Function to retrieve a record
  FUNCTION FN_REC (PI_KEY IN NUMBER) RETURN GC_30_CCL%ROWTYPE IS
  BEGIN
    RETURN PKGC_30_CCL.FN_REC(PI_KEY => PI_KEY);
  END FN_REC;

  -- Function to retrieve details of a specific record (Extended)
  FUNCTION FN_DTL_E (PI_KEY IN NUMBER) RETURN GC_VT_30_CCL_E%ROWTYPE IS
  BEGIN
    RETURN PKGC_30_CCL.FN_DTL_E(PI_KEY => PI_KEY);
  END FN_DTL_E;

  -- Function to retrieve details of a specific record
  FUNCTION FN_DTL (PI_KEY IN NUMBER) RETURN GC_VT_30_CCL%ROWTYPE IS
  BEGIN
    RETURN PKGC_30_CCL.FN_DTL(PI_KEY => PI_KEY);
  END FN_DTL;

  -- Procedure to approve a record
  PROCEDURE PR_APR (PI_KEY IN NUMBER, PI_CN IN NUMBER) IS
  BEGIN
    PKGC_30_CCL.PR_APR (PI_KEY => PI_KEY,
                        PI_CN  => PI_CN);
    PKGC_00.PR_COMMIT;
  END PR_APR;

  -- Procedure to delete a record
  PROCEDURE PR_DEL (PI_KEY IN NUMBER, PI_CN IN NUMBER) IS
  BEGIN
    PKGC_30_CCL.PR_DEL (PI_KEY => PI_KEY,
                        PI_CN  => PI_CN);
    PKGC_00.PR_COMMIT;
  END PR_DEL;

END PK$GC5135;
