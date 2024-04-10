ALTER SESSION SET CONTAINER = PDB0;
ALTER SESSION SET CURRENT_SCHEMA = PH2;
SELECT *FROM ALL_SA_LEVELS ;
-- Main policy
exec SA_SYSDBA.DROP_POLICY('OLS_REGION_POLICY');
BEGIN
	SA_SYSDBA.CREATE_POLICY( 
    POLICY_NAME => 'OLS_REGION_POLICY', 
    COLUMN_NAME => 'REGION_LABEL', 
    DEFAULT_OPTIONS => 'READ_CONTROL, UPDATE_CONTROL' 
    ); 
END; 
/ 

EXEC SA_SYSDBA.ENABLE_POLICY('OLS_REGION_POLICY'); 
BEGIN
    SA_COMPONENTS.CREATE_LEVEL(
    POLICY_NAME =>'OLS_REGION_POLICY', 
    LEVEL_NUM   => 30, 
    SHORT_NAME  =>'NV', 
    LONG_NAME   =>'Nhan vien'); 
END;
/
EXECUTE SA_COMPONENTS.CREATE_LEVEL('OLS_REGION_POLICY', 6000, 'TP', 'Truong phong'); 
EXECUTE SA_COMPONENTS.CREATE_LEVEL('OLS_REGION_POLICY', 9000, 'GD', 'Giam doc'); 

EXECUTE SA_COMPONENTS.CREATE_COMPARTMENT('OLS_REGION_POLICY', 1000, 'MB', 'Mua ban'); 
EXECUTE SA_COMPONENTS.CREATE_COMPARTMENT('OLS_REGION_POLICY', 100, 'SX', 'San xuat'); 
EXECUTE SA_COMPONENTS.CREATE_COMPARTMENT('OLS_REGION_POLICY', 10, 'GC', 'Gia cong'); 

EXECUTE SA_COMPONENTS.CREATE_GROUP('OLS_REGION_POLICY', 100, 'MB', 'Mien Bac'); 
EXECUTE SA_COMPONENTS.CREATE_GROUP('OLS_REGION_POLICY', 110, 'MT', 'Mien Trung'); 
EXECUTE SA_COMPONENTS.CREATE_GROUP('OLS_REGION_POLICY', 120, 'MN', 'Mien Nam'); 

EXECUTE SA_USER_ADMIN.SET_USER_PRIVS('OLS_REGION_POLICY', 'PH2_OLS', 'FULL,PROFILE_ACCESS'); 

-- Creating table THONGBAO to store notifications
DROP TABLE THONGBAO;

CREATE TABLE THONGBAO( 
    ID NUMBER(10) GENERATED ALWAYS as IDENTITY(START with 1 INCREMENT by 1), 
    NOIDUNG VARCHAR2(300), 
    THOIGIAN DATE,
    NGUOIGUI VARCHAR2(100),
    DOITUONG VARCHAR2(100), 
    LINHVUC VARCHAR2(100), 
    KHUVUC VARCHAR2(100),
    CONSTRAINT THONGBAO_PK PRIMARY KEY (ID)
);
/

GRANT SELECT ON THONGBAO TO RL_NHANVIEN;
/

DELETE FROM THONGBAO;
/

SELECT * FROM THONGBAO;

INSERT INTO THONGBAO(NOIDUNG, THOIGIAN, NGUOIGUI, DOITUONG, LINHVUC, KHUVUC) VALUES('TB #1: To: Giam doc of San xuat from Bac', null, 'PH2_OLS', 'Giam doc', 'San xuat', 'Mien Bac');;
INSERT INTO THONGBAO(NOIDUNG, THOIGIAN, NGUOIGUI, DOITUONG, LINHVUC, KHUVUC) VALUES('TB #2: To: Giam doc of San xuat from Trung', null, 'PH2_OLS', 'Giam doc', 'San xuat', 'Mien Trung');
INSERT INTO THONGBAO(NOIDUNG, THOIGIAN, NGUOIGUI, DOITUONG, LINHVUC, KHUVUC) VALUES('TB #3: To: Giam doc of San xuat from Nam', null, 'PH2_OLS', 'Giam doc', 'San xuat', 'Mien Nam');
INSERT INTO THONGBAO(NOIDUNG, THOIGIAN, NGUOIGUI, DOITUONG, LINHVUC, KHUVUC) VALUES('TB #4: To: Giam doc of Gia cong from Bac', null, 'PH2_OLS', 'Giam doc', 'Gia cong', 'Mien Bac');
INSERT INTO THONGBAO(NOIDUNG, THOIGIAN, NGUOIGUI, DOITUONG, LINHVUC, KHUVUC) VALUES('TB #5: To: Giam doc of Gia cong from Trung', null, 'PH2_OLS', 'Giam doc', 'Gia cong', 'Mien Trung');
INSERT INTO THONGBAO(NOIDUNG, THOIGIAN, NGUOIGUI, DOITUONG, LINHVUC, KHUVUC) VALUES('TB #6: To: Giam doc of Gia cong from Nam', null, 'PH2_OLS', 'Giam doc', 'Gia cong', 'Mien Nam');
INSERT INTO THONGBAO(NOIDUNG, THOIGIAN, NGUOIGUI, DOITUONG, LINHVUC, KHUVUC) VALUES('TB #7: To: Giam doc of Mua ban from Bac', null, 'PH2_OLS', 'Giam doc', 'Mua ban', 'Mien Bac');
INSERT INTO THONGBAO(NOIDUNG, THOIGIAN, NGUOIGUI, DOITUONG, LINHVUC, KHUVUC) VALUES('TB #8: To: Giam doc of Mua ban from Trung', null, 'PH2_OLS', 'Giam doc', 'Mua ban', 'Mien Trung');
INSERT INTO THONGBAO(NOIDUNG, THOIGIAN, NGUOIGUI, DOITUONG, LINHVUC, KHUVUC) VALUES('TB #9: To: Giam doc of Mua ban from Nam', null, 'PH2_OLS', 'Giam doc', 'Mua ban', 'Mien Nam');
INSERT INTO THONGBAO(NOIDUNG, THOIGIAN, NGUOIGUI, DOITUONG, LINHVUC, KHUVUC) VALUES('TB #10: To: Truong phong of San xuat from Bac', null, 'PH2_OLS', 'Truong phong', 'San xuat', 'Mien Bac');
INSERT INTO THONGBAO(NOIDUNG, THOIGIAN, NGUOIGUI, DOITUONG, LINHVUC, KHUVUC) VALUES('TB #11: To: Truong phong of San xuat from Trung', null, 'PH2_OLS', 'Truong phong', 'San xuat', 'Mien Trung');
INSERT INTO THONGBAO(NOIDUNG, THOIGIAN, NGUOIGUI, DOITUONG, LINHVUC, KHUVUC) VALUES('TB #12: To: Truong phong of San xuat from Nam', null, 'PH2_OLS', 'Truong phong', 'San xuat', 'Mien Nam');
INSERT INTO THONGBAO(NOIDUNG, THOIGIAN, NGUOIGUI, DOITUONG, LINHVUC, KHUVUC) VALUES('TB #13: To: Truong phong of Gia cong from Bac', null, 'PH2_OLS', 'Truong phong', 'Gia cong', 'Mien Bac');
INSERT INTO THONGBAO(NOIDUNG, THOIGIAN, NGUOIGUI, DOITUONG, LINHVUC, KHUVUC) VALUES('TB #14: To: Truong phong of Gia cong from Trung', null, 'PH2_OLS', 'Truong phong', 'Gia cong', 'Mien Trung');
INSERT INTO THONGBAO(NOIDUNG, THOIGIAN, NGUOIGUI, DOITUONG, LINHVUC, KHUVUC) VALUES('TB #15: To: Truong phong of Gia cong from Nam', null, 'PH2_OLS', 'Truong phong', 'Gia cong', 'Mien Nam');
INSERT INTO THONGBAO(NOIDUNG, THOIGIAN, NGUOIGUI, DOITUONG, LINHVUC, KHUVUC) VALUES('TB #16: To: Truong phong of Mua ban from Bac', null, 'PH2_OLS', 'Truong phong', 'Mua ban', 'Mien Bac');
INSERT INTO THONGBAO(NOIDUNG, THOIGIAN, NGUOIGUI, DOITUONG, LINHVUC, KHUVUC) VALUES('TB #17: To: Truong phong of Mua ban from Trung', null, 'PH2_OLS', 'Truong phong', 'Mua ban', 'Mien Trung');
INSERT INTO THONGBAO(NOIDUNG, THOIGIAN, NGUOIGUI, DOITUONG, LINHVUC, KHUVUC) VALUES('TB #18: To: Truong phong of Mua ban from Nam', null, 'PH2_OLS', 'Truong phong', 'Mua ban', 'Mien Nam');
INSERT INTO THONGBAO(NOIDUNG, THOIGIAN, NGUOIGUI, DOITUONG, LINHVUC, KHUVUC) VALUES('TB #19: To: Nhan vien of San xuat from Bac', null, 'PH2_OLS', 'Nhan vien', 'San xuat', 'Mien Bac');
INSERT INTO THONGBAO(NOIDUNG, THOIGIAN, NGUOIGUI, DOITUONG, LINHVUC, KHUVUC) VALUES('TB #20: To: Nhan vien of San xuat from Trung', null, 'PH2_OLS', 'Nhan vien', 'San xuat', 'Mien Trung');
INSERT INTO THONGBAO(NOIDUNG, THOIGIAN, NGUOIGUI, DOITUONG, LINHVUC, KHUVUC) VALUES('TB #21: To: Nhan vien of San xuat from Nam', null, 'PH2_OLS', 'Nhan vien', 'San xuat', 'Mien Nam');
INSERT INTO THONGBAO(NOIDUNG, THOIGIAN, NGUOIGUI, DOITUONG, LINHVUC, KHUVUC) VALUES('TB #22: To: Nhan vien of Gia cong from Bac', null, 'PH2_OLS', 'Nhan vien', 'Gia cong', 'Mien Bac');
INSERT INTO THONGBAO(NOIDUNG, THOIGIAN, NGUOIGUI, DOITUONG, LINHVUC, KHUVUC) VALUES('TB #23: To: Nhan vien of Gia cong from Trung', null, 'PH2_OLS', 'Nhan vien', 'Gia cong', 'Mien Trung');
INSERT INTO THONGBAO(NOIDUNG, THOIGIAN, NGUOIGUI, DOITUONG, LINHVUC, KHUVUC) VALUES('TB #24: To: Nhan vien of Gia cong from Nam', null, 'PH2_OLS', 'Nhan vien', 'Gia cong', 'Mien Nam');
INSERT INTO THONGBAO(NOIDUNG, THOIGIAN, NGUOIGUI, DOITUONG, LINHVUC, KHUVUC) VALUES('TB #25: To: Nhan vien of Mua ban from Bac', null, 'PH2_OLS', 'Nhan vien', 'Mua ban', 'Mien Bac');
INSERT INTO THONGBAO(NOIDUNG, THOIGIAN, NGUOIGUI, DOITUONG, LINHVUC, KHUVUC) VALUES('TB #26: To: Nhan vien of Mua ban from Trung', null, 'PH2_OLS', 'Nhan vien', 'Mua ban', 'Mien Trung');
INSERT INTO THONGBAO(NOIDUNG, THOIGIAN, NGUOIGUI, DOITUONG, LINHVUC, KHUVUC) VALUES('TB #27: To: Nhan vien of Mua ban from Nam', null, 'PH2_OLS', 'Nhan vien', 'Mua ban', 'Mien Nam');
/*
BEGIN
    SA_POLICY_ADMIN.REMOVE_TABLE_POLICY('OLS_REGION_POLICY','PH2_OLS','THONGBAO'); 
END;
*/
BEGIN 
    SA_POLICY_ADMIN.APPLY_TABLE_POLICY ( 
    policy_name => 'OLS_REGION_POLICY', 
    schema_name => 'PH2_OLS', 
    table_name => 'THONGBAO', 
    table_options => 'READ_CONTROL, WRITE_CONTROL, CHECK_CONTROL, LABEL_DEFAULT',
    predicate => NULL); 
END; 
/

BEGIN 
    SA_POLICY_ADMIN.ENABLE_TABLE_POLICY( 
    policy_name => 'OLS_REGION_POLICY', 
    schema_name => 'PH2_OLS',  
    table_name => 'THONGBAO');
END; 
/

CREATE OR REPLACE FUNCTION LABEL_GEN 
(p_role IN VARCHAR2, p_field IN VARCHAR2, p_region IN VARCHAR2) 
RETURN varchar2
AS 
    v_label VARCHAR2(80); 
BEGIN 
     IF UPPER(p_role) = 'GIAM DOC' THEN 
        v_label := 'GD:'; 
     ELSIF UPPER(p_role) = 'TRUONG PHONG' THEN 
        v_label := 'TP:'; 
     ELSE 
        v_label := 'NV:'; 
     END IF; 

    IF UPPER(p_field)= 'MUA BAN' THEN 
        v_label := v_label || 'MB:'; 
     ELSIF UPPER(p_field) = 'SAN XUAT' THEN 
        v_label := v_label || 'SX:'; 
     ELSE
        v_label := v_label || 'GC:'; 
     END IF; 
     
     IF UPPER(p_region) = 'MIEN BAC' THEN 
        v_label := v_label || 'MB'; 
     ELSIF UPPER(p_region) = 'MIEN TRUNG' THEN 
        v_label := v_label || 'MT'; 
     ELSE 
        v_label := v_label || 'MN'; 
     END IF; 
     
     RETURN v_label; 
END LABEL_GEN; 
/

CREATE OR REPLACE PROCEDURE LABEL_SET_THONGBAO
AS
CURSOR CUR 
IS 
SELECT DOITUONG, LINHVUC, KHUVUC, ID FROM THONGBAO; 
    l_doituong VARCHAR2(20); 
    l_linhvuc VARCHAR2(20); 
    l_khuvuc VARCHAR2(20); 
    l_id NUMBER(10);
BEGIN 
    OPEN CUR; 
    LOOP 
        FETCH cur into l_doituong, l_linhvuc, l_khuvuc, l_id; 
        IF cur%NOTFOUND THEN 
            EXIT; 
        END IF; 

        UPDATE THONGBAO 
            SET region_label = CHAR_TO_LABEL('OLS_REGION_POLICY', LABEL_GEN(l_doituong, l_linhvuc, l_khuvuc)) 
            WHERE ID = L_ID;     
    END LOOP; 
    CLOSE CUR; 
END;
/

CREATE OR REPLACE PROCEDURE LABEL_SET_NHANVIEN
AS
CURSOR CUR 
IS 
SELECT VAITRO, LINHVUC, KHUVUC, MANV  
FROM PH2.NHANVIEN; 
    l_doituong VARCHAR2(20); 
    l_linhvuc VARCHAR2(20); 
    l_khuvuc VARCHAR2(20); 
    l_id NUMBER(10);
    t_label VARCHAR2(100);
    query VARCHAR2(300);
BEGIN 
     OPEN CUR; 
     LOOP 
        FETCH cur INTO l_doituong, l_linhvuc, l_khuvuc, l_id; 
        IF cur%NOTFOUND THEN 
            EXIT; 
        END IF; 
        select LABEL_GEN(l_doituong, l_linhvuc, l_khuvuc) into t_label from PH2.NHANVIEN where MANV = l_id;   
     
        query := 'BEGIN SA_USER_ADMIN.SET_USER_LABELS(''OLS_REGION_POLICY'','''|| l_id || ''',''' || t_label ||'''); END;';
        EXECUTE IMMEDIATE (query);
    END LOOP; 
    CLOSE CUR;  
END;
/

CREATE OR REPLACE PROCEDURE THONGBAO_ADD
(P_NOIDUNG IN VARCHAR2, P_NGUOIGUI IN VARCHAR2,P_DOITUONG IN VARCHAR2, 
P_LINHVUC IN VARCHAR2,P_KHUVUC IN VARCHAR2, P_LABEL IN VARCHAR2)
AS
    query VARCHAR2(300);
BEGIN
    INSERT INTO PH2_OLS.THONGBAO (NOIDUNG, THOIGIAN, NGUOIGUI, DOITUONG, LINHVUC, KHUVUC, REGION_LABEL)
        VALUES(P_NOIDUNG, SYSDATE, P_NGUOIGUI, P_DOITUONG, P_LINHVUC, P_KHUVUC, CHAR_TO_LABEL('OLS_REGION_POLICY', UPPER(P_LABEL)));
        
    query := 'BEGIN SA_USER_ADMIN.SET_USER_LABELS(''OLS_REGION_POLICY'',''PH2_OLS'',''NV''); END;';
    EXECUTE IMMEDIATE (query);
    EXCEPTION
    WHEN OTHERS THEN
        IF SQLCODE != -942 THEN
            RAISE;
        END IF;
END;
/     

CREATE OR REPLACE PROCEDURE LABEL_USER(p_user IN VARCHAR2, p_label IN VARCHAR2)
AS
    query VARCHAR2(300);
BEGIN
    query := 'BEGIN SA_USER_ADMIN.SET_USER_LABELS(''OLS_REGION_POLICY'','''|| UPPER(p_user) || ''',''' || UPPER(p_label) ||'''); END;';
    EXECUTE IMMEDIATE (query);
    
    EXCEPTION
    WHEN OTHERS THEN
        IF SQLCODE != -942 THEN
            RAISE;
        END IF;
END;  
/

ALTER SESSION SET CURRENT_SCHEMA=PH2_OLS;
/

CREATE OR REPLACE VIEW V_THONGBAO AS
    SELECT NOIDUNG, THOIGIAN, NGUOIGUI, LINHVUC, KHUVUC 
    FROM THONGBAO;
/

GRANT SELECT ON V_THONGBAO TO RL_NHANVIEN;
/

CREATE OR REPLACE VIEW V_THONGBAO_EX AS
    SELECT ID, NOIDUNG, DOITUONG, LINHVUC, KHUVUC, LABEL_TO_CHAR(REGION_LABEL) LABEL
    FROM THONGBAO;
/

EXEC THONGBAO_ADD('Thong bao T1', 'Giam Doc', 'Truong phong', null, null, 'TP');
EXEC THONGBAO_ADD('Thong bao T2', 'Giam Doc', 'Truong phong', 'San xuat', 'Mien Trung', 'TP:SX:MT');

EXEC THONGBAO_ADD('Thong bao T3', 'Giam Doc', 'Nhan vien', null, null, 'NV');
EXEC THONGBAO_ADD('Thong bao T4', 'Giam Doc', 'Nhan vien', 'San xuat', null, 'NV:SX');
EXEC THONGBAO_ADD('Thong bao T5', 'Giam Doc', 'Truong Phong', 'San xuat', 'Mien Nam, Mien Trung', 'TP:SX:MN, MT');


