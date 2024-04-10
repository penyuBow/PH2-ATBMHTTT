ALTER SESSION SET CONTAINER = PDB0;
ALTER SESSION SET CURRENT_SCHEMA = PH2;

-- Declaring policy function
CREATE OR REPLACE FUNCTION F_MASK_BY_USER(P_SCHEMA VARCHAR2, P_OBJECT VARCHAR2)
RETURN VARCHAR2
AS
    LV_USER VARCHAR(30);
BEGIN
    LV_USER := SYS_CONTEXT('USERENV', 'SESSION_USER');
    RETURN 'MANV = '||''''||LV_USER||'''';
END;
/

-- Installing policy
-- F_MASK_BY_USER on V_QL_NHANVIEN
BEGIN
    DBMS_RLS.add_policy(
    object_schema => 'PH2',
    object_name => 'V_QL_NHANVIEN',
    policy_name => 'QUANLY_MASK',
    function_schema => 'PH2',
    policy_function => 'F_MASK_BY_USER',
    sec_relevant_cols => 'LUONG, PHUCAP',
    sec_relevant_cols_opt => dbms_rls.ALL_ROWS
    );
END;
/

-- F_MASK_BY_USER on V_TP_NHANVIEN
BEGIN
    DBMS_RLS.add_policy(
    object_schema => 'PH2',
    object_name => 'V_TP_NHANVIEN',
    policy_name => 'TRUONGPHONG_MASK',
    function_schema => 'PH2',
    policy_function => 'F_MASK_BY_USER',
    sec_relevant_cols => 'LUONG, PHUCAP',
    sec_relevant_cols_opt => dbms_rls.ALL_ROWS
    );
END;
/