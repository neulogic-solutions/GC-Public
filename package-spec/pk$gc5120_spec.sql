create or replace PACKAGE pk$gc5120 AS
 /**
  * ===========================================================<br/>
  *  PURPOSE : Unlinked Customer Operations <br/>
  *  SCHEMA: SYMPLUS <br/>
  *  Created By       :Onyedinefu Ezinne <br/>
  *  Date Created     : 08-MAR-2024 <br/>
  *  Release Version  : 2.0 <br/>
  * ===========================================================<br/>
  * @headcom
  */
  --
--  /**
--    * Current User privileges on the screen 
--    * @param pi_key         Transaction record key
--    * @param po_ins_yn      Create New Record privilege
--    * @param po_upd_yn      Update/Edit Record privilege
--    * @param po_del_yn      Delete Record privilege
--    * @param po_apr_yn      Approve Record privilege
--  */  
--  PROCEDURE pr_prvs (pi_key       IN NUMBER DEFAULT NULL,
--                     po_ins_yn    OUT VARCHAR2,
--                     po_upd_yn    OUT VARCHAR2,
--                     po_del_yn    OUT VARCHAR2,
--                     po_apr_yn    OUT VARCHAR2,
--                     po_aud_yn    OUT VARCHAR2);
--  --
--  /**
--    * Returns the row key of a processed {inserted/modified} record.
--    * @param pi_rec Input Data
--  */
--  PROCEDURE pr_prc (pi_rec IN OUT dv_vt_10_bkr_e%ROWTYPE);
--  --  
--  --  
--  /**
--    * Approves a record
--    * @param pi_key   Record Key
--    * @param pi_cn    Change Number
--  */
--  PROCEDURE pr_apr (pi_key IN NUMBER, pi_cn IN NUMBER);
--  --
--  /**
--    * Deletes a record
--    * @param pi_key   Record Key
--    * @param pi_cn    Change Number
--  */
--  PROCEDURE pr_del (pi_key IN NUMBER, pi_cn IN NUMBER);
--  --
--  /**
--    * Validate a record
--    * @param pi_key   Record Key
--  */
--  PROCEDURE pr_val (pi_key IN NUMBER);
  PROCEDURE pr_apr_prc(pi_key IN NUMBER, pi_cn IN NUMBER);
  --
  PROCEDURE pr_rej_prc(pi_key IN NUMBER, pi_cn IN NUMBER);
  --
END pk$gc5120;
/
