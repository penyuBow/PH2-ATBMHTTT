ALTER SESSION SET CONTAINER=PDB0;
ALTER SESSION SET CURRENT_SCHEMA=PH2;

-- Reset table's data
DELETE FROM PHANCONG;
DELETE FROM PHONGBAN;
DELETE FROM DEAN;
DELETE FROM NHANVIEN;
/

-- Inserting records
-- Table PHONGBAN
INSERT ALL
    INTO PHONGBAN VALUES(1, 'Phong 1', NULL)
    INTO PHONGBAN VALUES(2, 'Phong 2', NULL)
    INTO PHONGBAN VALUES(3, 'Phong 3', NULL)
    INTO PHONGBAN VALUES(4, 'Phong 4', NULL)
    INTO PHONGBAN VALUES(5, 'Phong 5', NULL)
    INTO PHONGBAN VALUES(6, 'Phong 6', NULL)
    INTO PHONGBAN VALUES(7, 'Phong 7', NULL)
    INTO PHONGBAN VALUES(8, 'Phong 8', NULL)
SELECT 1 FROM DUAL;
/

-- Table NHANVIEN
INSERT ALL
    INTO NHANVIEN VALUES('001', 'Truong Song Tien', 'Nam', TO_DATE('2013-2-25','YYYY-MM-DD'), 'TP. HCM', null, '1000000', '3700', 'Giam doc', NULL, null, '123', 'Mien Trung', 'San xuat')
    INTO NHANVIEN VALUES('002', 'Dang Hoang Thuong', 'Nu', TO_DATE('2011-5-5','YYYY-MM-DD'), 'TP. HCM', null, '20000', '2500', 'Truong de an', NULL, 3, '123', 'Mien Nam', 'Gia cong')
    INTO NHANVIEN VALUES('003', 'Ly Chi Anh', 'Nam', TO_DATE('2018-3-27','YYYY-MM-DD'), 'TP. HCM', null, '20000', '24100', 'Truong de an', NULL, 3, '123', 'Mien Nam', 'Mua ban')
    INTO NHANVIEN VALUES('004', 'Nguyen Song Bac', 'Nam', TO_DATE('2007-7-19','YYYY-MM-DD'), 'TP. HCM', null, '20000', '11400', 'Truong de an', NULL, 2, '123', 'Mien Bac', 'San xuat')
    INTO NHANVIEN VALUES('005', 'Truong Song Tiep', 'Nam', TO_DATE('2003-9-21','YYYY-MM-DD'), 'TP. HCM', null, '11000', '16200', 'Tai chinh', NULL, 4, '123', 'Mien Nam', 'Gia cong')
    INTO NHANVIEN VALUES('006', 'Truong Hoang Chi', 'Nu', TO_DATE('2019-1-20','YYYY-MM-DD'), 'TP. HCM', null, '11000', '24600', 'Tai chinh', NULL, 5, '123', 'Mien Nam', 'Mua ban')
    INTO NHANVIEN VALUES('007', 'Le Thi Vinh', 'Nam', TO_DATE('2013-5-28','YYYY-MM-DD'), 'TP. HCM', null, '11000', '10900', 'Tai chinh', NULL, 1, '123', 'Mien Bac', 'San xuat')
    INTO NHANVIEN VALUES('008', 'Tran Song Tin', 'Nu', TO_DATE('2011-11-2','YYYY-MM-DD'), 'TP. HCM', null, '11000', '20700', 'Tai chinh', NULL, 3, '123', 'Mien Nam', 'Gia cong')
    INTO NHANVIEN VALUES('009', 'Truong Van Duy', 'Nam', TO_DATE('2019-8-20','YYYY-MM-DD'), 'TP. HCM', null, '11000', '19400', 'Tai chinh', NULL, 2, '123', 'Mien Bac', 'Mua ban')
    INTO NHANVIEN VALUES('010', 'Ly Gia Thong', 'Nam', TO_DATE('2012-12-4','YYYY-MM-DD'), 'TP. HCM', null, '13000', '21600', 'Nhan su', NULL, 7, '123', 'Mien Trung', 'San xuat')
    INTO NHANVIEN VALUES('011', 'Dang Tung Chi', 'Nu', TO_DATE('2005-4-24','YYYY-MM-DD'), 'TP. HCM', null, '13000', '18600', 'Nhan su', NULL, 2, '123', 'Mien Bac', 'Gia cong')
    INTO NHANVIEN VALUES('012', 'Truong Gia Bac', 'Nu', TO_DATE('2010-6-21','YYYY-MM-DD'), 'TP. HCM', null, '13000', '20400', 'Nhan su', NULL, 1, '123', 'Mien Bac', 'Mua ban')
    INTO NHANVIEN VALUES('013', 'Ung Chi Thien', 'Nu', TO_DATE('2000-8-14','YYYY-MM-DD'), 'TP. HCM', null, '13000', '13100', 'Nhan su', NULL, 8, '123', 'Mien Trung', 'San xuat')
    INTO NHANVIEN VALUES('014', 'Truong Song Quoc', 'Nu', TO_DATE('2008-10-26','YYYY-MM-DD'), 'TP. HCM', null, '13000', '17600', 'Nhan su', NULL, 4, '123', 'Mien Nam', 'Gia cong')
    INTO NHANVIEN VALUES('015', 'Vu Song Tu', 'Nam', TO_DATE('2007-1-26','YYYY-MM-DD'), 'TP. HCM', null, '22000', '17200', 'Truong phong', NULL, 8, '123', 'Mien Trung', 'Mua ban')
    INTO NHANVIEN VALUES('016', 'Ung Tung Giang', 'Nam', TO_DATE('2006-4-18','YYYY-MM-DD'), 'TP. HCM', null, '22000', '2200', 'Truong phong', NULL, 7, '123', 'Mien Trung', 'San xuat')
    INTO NHANVIEN VALUES('017', 'Lai Thi Thuong', 'Nam', TO_DATE('2003-9-12','YYYY-MM-DD'), 'TP. HCM', null, '22000', '21600', 'Truong phong', NULL, 2, '123', 'Mien Bac', 'Gia cong')
    INTO NHANVIEN VALUES('018', 'Vo Chi Thong', 'Nu', TO_DATE('2005-11-25','YYYY-MM-DD'), 'TP. HCM', null, '22000', '11400', 'Truong phong', NULL, 4, '123', 'Mien Nam', 'Mua ban')
    INTO NHANVIEN VALUES('019', 'Vu Chi Phu', 'Nam', TO_DATE('2000-9-14','YYYY-MM-DD'), 'TP. HCM', null, '22000', '14600', 'Truong phong', NULL, 5, '123', 'Mien Nam', 'San xuat')
    INTO NHANVIEN VALUES('020', 'Nguyen Gia Quoc', 'Nam', TO_DATE('2005-8-20','YYYY-MM-DD'), 'TP. HCM', null, '22000', '5500', 'Truong phong', NULL, 7, '123', 'Mien Trung', 'Gia cong')
    INTO NHANVIEN VALUES('021', 'Duong Chi Chung', 'Nu', TO_DATE('2012-5-26','YYYY-MM-DD'), 'TP. HCM', null, '22000', '24300', 'Truong phong', NULL, 8, '123', 'Mien Trung', 'Mua ban')
    INTO NHANVIEN VALUES('022', 'Ho Quoc Giang', 'Nu', TO_DATE('2006-12-16','YYYY-MM-DD'), 'TP. HCM', null, '22000', '18300', 'Truong phong', NULL, 5, '123', 'Mien Nam', 'San xuat')
    INTO NHANVIEN VALUES('023', 'Lai Quoc Minh', 'Nam', TO_DATE('2006-2-12','YYYY-MM-DD'), 'TP. HCM', null, '25000', '18000', 'Quan ly', NULL, 3, '123', 'Mien Nam', 'Gia cong')
    INTO NHANVIEN VALUES('024', 'Nguyen Thi Han', 'Nam', TO_DATE('2001-3-21','YYYY-MM-DD'), 'TP. HCM', null, '25000', '11700', 'Quan ly', NULL, 4, '123', 'Mien Nam', 'Mua ban')
    INTO NHANVIEN VALUES('025', 'Bui Gia Thuong', 'Nu', TO_DATE('2014-8-9','YYYY-MM-DD'), 'TP. HCM', null, '25000', '10700', 'Quan ly', NULL, 3, '123', 'Mien Nam', 'San xuat')
    INTO NHANVIEN VALUES('026', 'Le Quoc Thien', 'Nu', TO_DATE('2002-7-9','YYYY-MM-DD'), 'TP. HCM', null, '25000', '4100', 'Quan ly', NULL, 8, '123', 'Mien Trung', 'Gia cong')
    INTO NHANVIEN VALUES('027', 'Bui Van Tin', 'Nu', TO_DATE('2007-6-26','YYYY-MM-DD'), 'TP. HCM', null, '25000', '10700', 'Quan ly', NULL, 2, '123', 'Mien Bac', 'Mua ban')
    INTO NHANVIEN VALUES('028', 'Pham Chi Han', 'Nu', TO_DATE('2022-11-24','YYYY-MM-DD'), 'TP. HCM', null, '25000', '5600', 'Quan ly', NULL, 2, '123', 'Mien Bac', 'San xuat')
    INTO NHANVIEN VALUES('029', 'Vu Hoang Khanh', 'Nam', TO_DATE('2003-5-20','YYYY-MM-DD'), 'TP. HCM', null, '25000', '15200', 'Quan ly', NULL, 6, '123', 'Mien Trung', 'Gia cong')
    INTO NHANVIEN VALUES('030', 'Ly Quoc Thuong', 'Nam', TO_DATE('2017-10-26','YYYY-MM-DD'), 'TP. HCM', null, '25000', '21300', 'Quan ly', NULL, 6, '123', 'Mien Trung', 'Mua ban')
    INTO NHANVIEN VALUES('031', 'Ung Tung Duy', 'Nu', TO_DATE('2013-9-2','YYYY-MM-DD'), 'TP. HCM', null, '25000', '9300', 'Quan ly', NULL, 1, '123', 'Mien Bac', 'San xuat')
    INTO NHANVIEN VALUES('032', 'Tran Chi Tiep', 'Nu', TO_DATE('2016-12-23','YYYY-MM-DD'), 'TP. HCM', null, '25000', '19800', 'Quan ly', NULL, 2, '123', 'Mien Bac', 'Gia cong')
    INTO NHANVIEN VALUES('033', 'Ly Tung Chung', 'Nu', TO_DATE('2003-12-14','YYYY-MM-DD'), 'TP. HCM', null, '25000', '1900', 'Quan ly', NULL, 6, '123', 'Mien Trung', 'Mua ban')
    INTO NHANVIEN VALUES('034', 'Bui Thi Chung', 'Nam', TO_DATE('2009-11-5','YYYY-MM-DD'), 'TP. HCM', null, '25000', '21400', 'Quan ly', NULL, 2, '123', 'Mien Bac', 'San xuat')
    INTO NHANVIEN VALUES('035', 'Le Van Thien', 'Nu', TO_DATE('2016-6-4','YYYY-MM-DD'), 'TP. HCM', null, '25000', '22700', 'Quan ly', NULL, 5, '123', 'Mien Nam', 'Gia cong')
    INTO NHANVIEN VALUES('036', 'Vo Tung Tan', 'Nu', TO_DATE('2016-10-12','YYYY-MM-DD'), 'TP. HCM', null, '25000', '2700', 'Quan ly', NULL, 8, '123', 'Mien Trung', 'Mua ban')
    INTO NHANVIEN VALUES('037', 'Bui Van Bao', 'Nam', TO_DATE('2020-11-26','YYYY-MM-DD'), 'TP. HCM', null, '25000', '14600', 'Quan ly', NULL, 5, '123', 'Mien Nam', 'San xuat')
    INTO NHANVIEN VALUES('038', 'Vu Gia Nguyet', 'Nu', TO_DATE('2012-8-4','YYYY-MM-DD'), 'TP. HCM', null, '25000', '12400', 'Quan ly', NULL, 4, '123', 'Mien Nam', 'Gia cong')
    INTO NHANVIEN VALUES('039', 'Dang Quoc Quoc', 'Nu', TO_DATE('2022-9-24','YYYY-MM-DD'), 'TP. HCM', null, '25000', '9400', 'Quan ly', NULL, 1, '123', 'Mien Bac', 'Mua ban')
    INTO NHANVIEN VALUES('040', 'Dang Gia Han', 'Nam', TO_DATE('2013-9-20','YYYY-MM-DD'), 'TP. HCM', null, '25000', '5300', 'Quan ly', NULL, 4, '123', 'Mien Nam', 'San xuat')
    INTO NHANVIEN VALUES('041', 'Lai Tung Minh', 'Nu', TO_DATE('2020-6-19','YYYY-MM-DD'), 'TP. HCM', null, '25000', '18500', 'Quan ly', NULL, 6, '123', 'Mien Trung', 'Gia cong')
    INTO NHANVIEN VALUES('042', 'Bui Hoang Thien', 'Nu', TO_DATE('2022-8-14','YYYY-MM-DD'), 'TP. HCM', null, '25000', '3000', 'Quan ly', NULL, 8, '123', 'Mien Trung', 'Mua ban')
    INTO NHANVIEN VALUES('043', 'Pham Quoc Viet', 'Nam', TO_DATE('2016-10-16','YYYY-MM-DD'), 'TP. HCM', null, '1800', '2800', 'Nhan vien', '042', 5, '123', 'Mien Nam', 'San xuat')
    INTO NHANVIEN VALUES('044', 'Ho Van Nguyet', 'Nu', TO_DATE('2008-6-6','YYYY-MM-DD'), 'TP. HCM', null, '18400', '13200', 'Nhan vien', '031', 3, '123', 'Mien Nam', 'Gia cong')
    INTO NHANVIEN VALUES('045', 'Le Gia Chi', 'Nu', TO_DATE('2009-12-18','YYYY-MM-DD'), 'TP. HCM', null, '7300', '10300', 'Nhan vien', '035', 3, '123', 'Mien Nam', 'Mua ban')
    INTO NHANVIEN VALUES('046', 'Duong Tung Tu', 'Nu', TO_DATE('2002-5-16','YYYY-MM-DD'), 'TP. HCM', null, '6300', '9600', 'Nhan vien', '038', 1, '123', 'Mien Bac', 'San xuat')
    INTO NHANVIEN VALUES('047', 'Nguyen Chi Tiep', 'Nu', TO_DATE('2000-7-14','YYYY-MM-DD'), 'TP. HCM', null, '13700', '6700', 'Nhan vien', '036', 6, '123', 'Mien Trung', 'Gia cong')
    INTO NHANVIEN VALUES('048', 'Truong Thi Chung', 'Nam', TO_DATE('2010-7-19','YYYY-MM-DD'), 'TP. HCM', null, '3500', '23300', 'Nhan vien', '035', 5, '123', 'Mien Nam', 'Mua ban')
    INTO NHANVIEN VALUES('049', 'Pham Song Tin', 'Nu', TO_DATE('2013-9-11','YYYY-MM-DD'), 'TP. HCM', null, '8700', '23300', 'Nhan vien', '028', 4, '123', 'Mien Nam', 'San xuat')
    INTO NHANVIEN VALUES('050', 'Vo Thi Tuan', 'Nam', TO_DATE('2011-10-9','YYYY-MM-DD'), 'TP. HCM', null, '11000', '1300', 'Nhan vien', '040', 5, '123', 'Mien Nam', 'Gia cong')
    INTO NHANVIEN VALUES('051', 'Ho Van Vu', 'Nu', TO_DATE('2019-2-14','YYYY-MM-DD'), 'TP. HCM', null, '3100', '16600', 'Nhan vien', '025', 4, '123', 'Mien Nam', 'Mua ban')
    INTO NHANVIEN VALUES('052', 'Lai Quoc Nam', 'Nam', TO_DATE('2002-3-28','YYYY-MM-DD'), 'TP. HCM', null, '20200', '9600', 'Nhan vien', '028', 5, '123', 'Mien Nam', 'San xuat')
    INTO NHANVIEN VALUES('053', 'Dang Chi Tan', 'Nu', TO_DATE('2008-2-14','YYYY-MM-DD'), 'TP. HCM', null, '3800', '8500', 'Nhan vien', '030', 8, '123', 'Mien Trung', 'Gia cong')
    INTO NHANVIEN VALUES('054', 'Truong Chi Vy', 'Nu', TO_DATE('2019-6-1','YYYY-MM-DD'), 'TP. HCM', null, '19100', '11600', 'Nhan vien', '036', 7, '123', 'Mien Trung', 'Mua ban')
    INTO NHANVIEN VALUES('055', 'Vu Chi Tiep', 'Nu', TO_DATE('2007-1-7','YYYY-MM-DD'), 'TP. HCM', null, '22900', '13600', 'Nhan vien', '032', 6, '123', 'Mien Trung', 'San xuat')
    INTO NHANVIEN VALUES('056', 'Nguyen Gia Quoc', 'Nu', TO_DATE('2006-10-2','YYYY-MM-DD'), 'TP. HCM', null, '6600', '1000', 'Nhan vien', '038', 3, '123', 'Mien Nam', 'Gia cong')
    INTO NHANVIEN VALUES('057', 'Truong Hoang Chung', 'Nam', TO_DATE('2009-1-6','YYYY-MM-DD'), 'TP. HCM', null, '4600', '6000', 'Nhan vien', '041', 8, '123', 'Mien Trung', 'Mua ban')
    INTO NHANVIEN VALUES('058', 'Truong Quoc Anh', 'Nu', TO_DATE('2005-9-23','YYYY-MM-DD'), 'TP. HCM', null, '23800', '1300', 'Nhan vien', '027', 1, '123', 'Mien Bac', 'San xuat')
    INTO NHANVIEN VALUES('059', 'Dang Chi Phu', 'Nu', TO_DATE('2016-1-11','YYYY-MM-DD'), 'TP. HCM', null, '11300', '20100', 'Nhan vien', '035', 1, '123', 'Mien Bac', 'Gia cong')
    INTO NHANVIEN VALUES('060', 'Le Quoc Bao', 'Nam', TO_DATE('2018-7-27','YYYY-MM-DD'), 'TP. HCM', null, '5800', '23300', 'Nhan vien', '037', 6, '123', 'Mien Trung', 'Mua ban')
    INTO NHANVIEN VALUES('061', 'Vo Van Tiep', 'Nam', TO_DATE('2013-3-18','YYYY-MM-DD'), 'TP. HCM', null, '19800', '15000', 'Nhan vien', '041', 3, '123', 'Mien Nam', 'San xuat')
    INTO NHANVIEN VALUES('062', 'Ly Song Tiep', 'Nam', TO_DATE('2018-11-18','YYYY-MM-DD'), 'TP. HCM', null, '11100', '8400', 'Nhan vien', '042', 7, '123', 'Mien Trung', 'Gia cong')
    INTO NHANVIEN VALUES('063', 'Le Chi Giang', 'Nam', TO_DATE('2009-6-19','YYYY-MM-DD'), 'TP. HCM', null, '24600', '18700', 'Nhan vien', '040', 4, '123', 'Mien Nam', 'Mua ban')
    INTO NHANVIEN VALUES('064', 'Pham Thi Thien', 'Nam', TO_DATE('2016-6-15','YYYY-MM-DD'), 'TP. HCM', null, '14200', '21700', 'Nhan vien', '030', 8, '123', 'Mien Trung', 'San xuat')
    INTO NHANVIEN VALUES('065', 'Pham Song Khanh', 'Nu', TO_DATE('2019-1-9','YYYY-MM-DD'), 'TP. HCM', null, '12700', '24900', 'Nhan vien', '023', 1, '123', 'Mien Bac', 'Gia cong')
    INTO NHANVIEN VALUES('066', 'Truong Van Vu', 'Nu', TO_DATE('2013-2-19','YYYY-MM-DD'), 'TP. HCM', null, '6100', '14000', 'Nhan vien', '025', 6, '123', 'Mien Trung', 'Mua ban')
    INTO NHANVIEN VALUES('067', 'Ung Chi Bac', 'Nam', TO_DATE('2020-9-7','YYYY-MM-DD'), 'TP. HCM', null, '14800', '18400', 'Nhan vien', '033', 6, '123', 'Mien Trung', 'San xuat')
    INTO NHANVIEN VALUES('068', 'Vo Quoc An', 'Nu', TO_DATE('2002-1-25','YYYY-MM-DD'), 'TP. HCM', null, '22600', '17400', 'Nhan vien', '035', 1, '123', 'Mien Bac', 'Gia cong')
    INTO NHANVIEN VALUES('069', 'Tran Tung Tin', 'Nam', TO_DATE('2021-10-9','YYYY-MM-DD'), 'TP. HCM', null, '23500', '2200', 'Nhan vien', '035', 3, '123', 'Mien Nam', 'Mua ban')
    INTO NHANVIEN VALUES('070', 'Vo Thi Vu', 'Nam', TO_DATE('2008-9-20','YYYY-MM-DD'), 'TP. HCM', null, '19800', '9800', 'Nhan vien', '034', 6, '123', 'Mien Trung', 'San xuat')
    INTO NHANVIEN VALUES('071', 'Ho Tung Anh', 'Nu', TO_DATE('2015-3-10','YYYY-MM-DD'), 'TP. HCM', null, '24700', '11000', 'Nhan vien', '035', 2, '123', 'Mien Bac', 'Gia cong')
    INTO NHANVIEN VALUES('072', 'Bui Van Thong', 'Nu', TO_DATE('2003-10-26','YYYY-MM-DD'), 'TP. HCM', null, '8500', '16200', 'Nhan vien', '033', 4, '123', 'Mien Nam', 'Mua ban')
    INTO NHANVIEN VALUES('073', 'Ly Van Tin', 'Nam', TO_DATE('2009-2-2','YYYY-MM-DD'), 'TP. HCM', null, '23400', '12400', 'Nhan vien', '025', 7, '123', 'Mien Trung', 'San xuat')
    INTO NHANVIEN VALUES('074', 'Tran Thi Bac', 'Nu', TO_DATE('2001-4-28','YYYY-MM-DD'), 'TP. HCM', null, '12300', '3000', 'Nhan vien', '035', 4, '123', 'Mien Nam', 'Gia cong')
    INTO NHANVIEN VALUES('075', 'Vo Quoc Chi', 'Nu', TO_DATE('2002-8-5','YYYY-MM-DD'), 'TP. HCM', null, '21100', '4100', 'Nhan vien', '040', 8, '123', 'Mien Trung', 'Mua ban')
    INTO NHANVIEN VALUES('076', 'Ung Song Thien', 'Nu', TO_DATE('2010-7-15','YYYY-MM-DD'), 'TP. HCM', null, '8500', '2000', 'Nhan vien', '035', 4, '123', 'Mien Nam', 'San xuat')
    INTO NHANVIEN VALUES('077', 'Nguyen Song Anh', 'Nam', TO_DATE('2015-3-10','YYYY-MM-DD'), 'TP. HCM', null, '20300', '9900', 'Nhan vien', '041', 3, '123', 'Mien Nam', 'Gia cong')
    INTO NHANVIEN VALUES('078', 'Vo Thi Tiep', 'Nu', TO_DATE('2007-10-5','YYYY-MM-DD'), 'TP. HCM', null, '19700', '1000', 'Nhan vien', '035', 8, '123', 'Mien Trung', 'Mua ban')
    INTO NHANVIEN VALUES('079', 'Ly Hoang Tien', 'Nu', TO_DATE('2004-12-2','YYYY-MM-DD'), 'TP. HCM', null, '23700', '5800', 'Nhan vien', '026', 8, '123', 'Mien Trung', 'San xuat')
    INTO NHANVIEN VALUES('080', 'Nguyen Thi Khanh', 'Nam', TO_DATE('2003-11-19','YYYY-MM-DD'), 'TP. HCM', null, '15400', '14700', 'Nhan vien', '030', 8, '123', 'Mien Trung', 'Gia cong')
    INTO NHANVIEN VALUES('081', 'Vu Hoang Quoc', 'Nu', TO_DATE('2019-7-7','YYYY-MM-DD'), 'TP. HCM', null, '1000', '9300', 'Nhan vien', '034', 7, '123', 'Mien Trung', 'Mua ban')
    INTO NHANVIEN VALUES('082', 'Ly Song Quoc', 'Nam', TO_DATE('2004-9-8','YYYY-MM-DD'), 'TP. HCM', null, '15800', '4300', 'Nhan vien', '040', 8, '123', 'Mien Trung', 'San xuat')
    INTO NHANVIEN VALUES('083', 'Duong Tung Han', 'Nam', TO_DATE('2015-7-21','YYYY-MM-DD'), 'TP. HCM', null, '23700', '17100', 'Nhan vien', '034', 6, '123', 'Mien Trung', 'Gia cong')
    INTO NHANVIEN VALUES('084', 'Ly Gia Minh', 'Nam', TO_DATE('2009-6-15','YYYY-MM-DD'), 'TP. HCM', null, '18800', '16900', 'Nhan vien', '026', 1, '123', 'Mien Bac', 'Mua ban')
    INTO NHANVIEN VALUES('085', 'Ho Thi Tu', 'Nu', TO_DATE('2009-3-17','YYYY-MM-DD'), 'TP. HCM', null, '17400', '3400', 'Nhan vien', '034', 8, '123', 'Mien Trung', 'San xuat')
    INTO NHANVIEN VALUES('086', 'Ung Chi Giang', 'Nam', TO_DATE('2017-3-15','YYYY-MM-DD'), 'TP. HCM', null, '3500', '11400', 'Nhan vien', '023', 2, '123', 'Mien Bac', 'Gia cong')
    INTO NHANVIEN VALUES('087', 'Pham Hoang Tuan', 'Nu', TO_DATE('2001-2-11','YYYY-MM-DD'), 'TP. HCM', null, '15200', '4000', 'Nhan vien', '033', 4, '123', 'Mien Nam', 'Mua ban')
    INTO NHANVIEN VALUES('088', 'Truong Gia Giang', 'Nam', TO_DATE('2012-7-4','YYYY-MM-DD'), 'TP. HCM', null, '19800', '15400', 'Nhan vien', '030', 7, '123', 'Mien Trung', 'San xuat')
    INTO NHANVIEN VALUES('089', 'Tran Hoang Nguyet', 'Nam', TO_DATE('2001-2-5','YYYY-MM-DD'), 'TP. HCM', null, '19200', '19200', 'Nhan vien', '033', 7, '123', 'Mien Trung', 'Gia cong')
    INTO NHANVIEN VALUES('090', 'Dang Van An', 'Nu', TO_DATE('2003-11-9','YYYY-MM-DD'), 'TP. HCM', null, '13100', '8300', 'Nhan vien', '026', 5, '123', 'Mien Nam', 'Mua ban')
    INTO NHANVIEN VALUES('091', 'Ly Thi Viet', 'Nu', TO_DATE('2005-10-6','YYYY-MM-DD'), 'TP. HCM', null, '11700', '16000', 'Nhan vien', '033', 7, '123', 'Mien Trung', 'San xuat')
    INTO NHANVIEN VALUES('092', 'Tran Gia Tan', 'Nam', TO_DATE('2002-6-18','YYYY-MM-DD'), 'TP. HCM', null, '10600', '4300', 'Nhan vien', '029', 1, '123', 'Mien Bac', 'Gia cong')
    INTO NHANVIEN VALUES('093', 'Duong Hoang Viet', 'Nu', TO_DATE('2010-8-18','YYYY-MM-DD'), 'TP. HCM', null, '16800', '9900', 'Nhan vien', '023', 3, '123', 'Mien Nam', 'Mua ban')
    INTO NHANVIEN VALUES('094', 'Ung Thi Quoc', 'Nam', TO_DATE('2007-8-21','YYYY-MM-DD'), 'TP. HCM', null, '21200', '17000', 'Nhan vien', '038', 6, '123', 'Mien Trung', 'San xuat')
    INTO NHANVIEN VALUES('095', 'Vu Van Tien', 'Nu', TO_DATE('2003-7-7','YYYY-MM-DD'), 'TP. HCM', null, '21300', '12300', 'Nhan vien', '038', 3, '123', 'Mien Nam', 'Gia cong')
    INTO NHANVIEN VALUES('096', 'Ly Gia Vu', 'Nu', TO_DATE('2007-11-28','YYYY-MM-DD'), 'TP. HCM', null, '14200', '23900', 'Nhan vien', '026', 6, '123', 'Mien Trung', 'Mua ban')
    INTO NHANVIEN VALUES('097', 'Ly Gia Bac', 'Nu', TO_DATE('2016-11-2','YYYY-MM-DD'), 'TP. HCM', null, '18000', '10700', 'Nhan vien', '030', 7, '123', 'Mien Trung', 'San xuat')
    INTO NHANVIEN VALUES('098', 'Vo Hoang Nam', 'Nu', TO_DATE('2006-1-12','YYYY-MM-DD'), 'TP. HCM', null, '15000', '1500', 'Nhan vien', '036', 6, '123', 'Mien Trung', 'Gia cong')
    INTO NHANVIEN VALUES('099', 'Vo Tung Tien', 'Nu', TO_DATE('2007-10-25','YYYY-MM-DD'), 'TP. HCM', null, '17100', '21900', 'Nhan vien', '042', 6, '123', 'Mien Trung', 'Mua ban')
SELECT 1 FROM DUAL;

-- Table DEAN
INSERT ALL
   INTO DEAN VALUES('DA101', 'DA #1 - Phong 1', TO_DATE('2023-10-8','YYYY-MM-DD'), 1, '038')
   INTO DEAN VALUES('DA102', 'DA #2 - Phong 1', TO_DATE('2021-5-3','YYYY-MM-DD'), 1, '036')
   INTO DEAN VALUES('DA201', 'DA #1 - Phong 2', TO_DATE('2021-9-22','YYYY-MM-DD'), 2, '036')
   INTO DEAN VALUES('DA202', 'DA #2 - Phong 2', TO_DATE('2022-12-2','YYYY-MM-DD'), 2, '036')
   INTO DEAN VALUES('DA203', 'DA #3 - Phong 2', TO_DATE('2022-1-20','YYYY-MM-DD'), 2, '038')
   INTO DEAN VALUES('DA204', 'DA #4 - Phong 2', TO_DATE('2021-6-5','YYYY-MM-DD'), 2, '037')
   INTO DEAN VALUES('DA301', 'DA #1 - Phong 3', TO_DATE('2021-10-20','YYYY-MM-DD'), 3, '037')
   INTO DEAN VALUES('DA302', 'DA #2 - Phong 3', TO_DATE('2020-7-2','YYYY-MM-DD'), 3, '038')
   INTO DEAN VALUES('DA303', 'DA #3 - Phong 3', TO_DATE('2021-11-14','YYYY-MM-DD'), 3, '037')
   INTO DEAN VALUES('DA401', 'DA #1 - Phong 4', TO_DATE('2021-5-5','YYYY-MM-DD'), 4, '037')
   INTO DEAN VALUES('DA402', 'DA #2 - Phong 4', TO_DATE('2020-1-22','YYYY-MM-DD'), 4, '037')
   INTO DEAN VALUES('DA403', 'DA #3 - Phong 4', TO_DATE('2020-1-13','YYYY-MM-DD'), 4, '036')
   INTO DEAN VALUES('DA501', 'DA #1 - Phong 5', TO_DATE('2023-4-11','YYYY-MM-DD'), 5, '036')
   INTO DEAN VALUES('DA502', 'DA #2 - Phong 5', TO_DATE('2020-8-28','YYYY-MM-DD'), 5, '036')
   INTO DEAN VALUES('DA503', 'DA #3 - Phong 5', TO_DATE('2022-1-16','YYYY-MM-DD'), 5, '037')
   INTO DEAN VALUES('DA601', 'DA #1 - Phong 6', TO_DATE('2021-3-13','YYYY-MM-DD'), 6, '037')
   INTO DEAN VALUES('DA602', 'DA #2 - Phong 6', TO_DATE('2022-4-22','YYYY-MM-DD'), 6, '037')
   INTO DEAN VALUES('DA603', 'DA #3 - Phong 6', TO_DATE('2022-9-14','YYYY-MM-DD'), 6, '037')
   INTO DEAN VALUES('DA701', 'DA #1 - Phong 7', TO_DATE('2021-4-5','YYYY-MM-DD'), 7, '036')
   INTO DEAN VALUES('DA702', 'DA #2 - Phong 7', TO_DATE('2021-1-4','YYYY-MM-DD'), 7, '036')
   INTO DEAN VALUES('DA703', 'DA #3 - Phong 7', TO_DATE('2023-5-17','YYYY-MM-DD'), 7, '038')
   INTO DEAN VALUES('DA801', 'DA #1 - Phong 8', TO_DATE('2022-8-21','YYYY-MM-DD'), 8, '038')
   INTO DEAN VALUES('DA802', 'DA #2 - Phong 8', TO_DATE('2023-12-23','YYYY-MM-DD'), 8, '036')
   INTO DEAN VALUES('DA803', 'DA #3 - Phong 8', TO_DATE('2021-9-12','YYYY-MM-DD'), 8, '038')
   INTO DEAN VALUES('DA804', 'DA #4 - Phong 8', TO_DATE('2022-1-12','YYYY-MM-DD'), 8, '037')
SELECT 1 FROM DUAL;
/

-- Table PHANCONG
INSERT ALL
   INTO PHANCONG VALUES('043', 'DA703', TO_DATE('2021-11-13','YYYY-MM-DD'))
   INTO PHANCONG VALUES('044', 'DA402', TO_DATE('2021-8-1','YYYY-MM-DD'))
   INTO PHANCONG VALUES('045', 'DA301', TO_DATE('2021-12-9','YYYY-MM-DD'))
   INTO PHANCONG VALUES('046', 'DA801', TO_DATE('2022-6-26','YYYY-MM-DD'))
   INTO PHANCONG VALUES('047', 'DA603', TO_DATE('2021-12-11','YYYY-MM-DD'))
   INTO PHANCONG VALUES('048', 'DA501', TO_DATE('2021-9-22','YYYY-MM-DD'))
   INTO PHANCONG VALUES('049', 'DA102', TO_DATE('2021-3-10','YYYY-MM-DD'))
   INTO PHANCONG VALUES('050', 'DA102', TO_DATE('2021-3-17','YYYY-MM-DD'))
   INTO PHANCONG VALUES('051', 'DA402', TO_DATE('2020-6-9','YYYY-MM-DD'))
   INTO PHANCONG VALUES('052', 'DA204', TO_DATE('2022-3-16','YYYY-MM-DD'))
   INTO PHANCONG VALUES('053', 'DA701', TO_DATE('2022-6-15','YYYY-MM-DD'))
   INTO PHANCONG VALUES('054', 'DA201', TO_DATE('2020-9-1','YYYY-MM-DD'))
   INTO PHANCONG VALUES('055', 'DA702', TO_DATE('2022-4-24','YYYY-MM-DD'))
   INTO PHANCONG VALUES('056', 'DA302', TO_DATE('2020-12-6','YYYY-MM-DD'))
   INTO PHANCONG VALUES('057', 'DA101', TO_DATE('2021-2-25','YYYY-MM-DD'))
   INTO PHANCONG VALUES('058', 'DA602', TO_DATE('2020-11-6','YYYY-MM-DD'))
   INTO PHANCONG VALUES('059', 'DA201', TO_DATE('2022-7-8','YYYY-MM-DD'))
   INTO PHANCONG VALUES('060', 'DA101', TO_DATE('2020-12-9','YYYY-MM-DD'))
   INTO PHANCONG VALUES('061', 'DA302', TO_DATE('2022-10-23','YYYY-MM-DD'))
   INTO PHANCONG VALUES('062', 'DA303', TO_DATE('2021-4-3','YYYY-MM-DD'))
   INTO PHANCONG VALUES('063', 'DA601', TO_DATE('2020-9-16','YYYY-MM-DD'))
   INTO PHANCONG VALUES('064', 'DA301', TO_DATE('2022-1-27','YYYY-MM-DD'))
   INTO PHANCONG VALUES('065', 'DA102', TO_DATE('2021-3-23','YYYY-MM-DD'))
   INTO PHANCONG VALUES('066', 'DA801', TO_DATE('2020-11-25','YYYY-MM-DD'))
   INTO PHANCONG VALUES('067', 'DA403', TO_DATE('2022-12-17','YYYY-MM-DD'))
   INTO PHANCONG VALUES('068', 'DA502', TO_DATE('2020-9-5','YYYY-MM-DD'))
   INTO PHANCONG VALUES('069', 'DA602', TO_DATE('2022-2-18','YYYY-MM-DD'))
   INTO PHANCONG VALUES('070', 'DA203', TO_DATE('2021-2-2','YYYY-MM-DD'))
   INTO PHANCONG VALUES('071', 'DA101', TO_DATE('2022-7-8','YYYY-MM-DD'))
   INTO PHANCONG VALUES('072', 'DA701', TO_DATE('2021-8-28','YYYY-MM-DD'))
   INTO PHANCONG VALUES('073', 'DA803', TO_DATE('2021-3-14','YYYY-MM-DD'))
   INTO PHANCONG VALUES('074', 'DA503', TO_DATE('2022-7-11','YYYY-MM-DD'))
   INTO PHANCONG VALUES('075', 'DA101', TO_DATE('2020-2-3','YYYY-MM-DD'))
   INTO PHANCONG VALUES('076', 'DA503', TO_DATE('2020-12-26','YYYY-MM-DD'))
   INTO PHANCONG VALUES('077', 'DA401', TO_DATE('2021-1-9','YYYY-MM-DD'))
   INTO PHANCONG VALUES('078', 'DA101', TO_DATE('2021-3-1','YYYY-MM-DD'))
   INTO PHANCONG VALUES('079', 'DA702', TO_DATE('2021-12-10','YYYY-MM-DD'))
   INTO PHANCONG VALUES('080', 'DA403', TO_DATE('2022-6-20','YYYY-MM-DD'))
   INTO PHANCONG VALUES('081', 'DA802', TO_DATE('2022-6-23','YYYY-MM-DD'))
   INTO PHANCONG VALUES('082', 'DA303', TO_DATE('2022-10-3','YYYY-MM-DD'))
   INTO PHANCONG VALUES('083', 'DA301', TO_DATE('2021-5-15','YYYY-MM-DD'))
   INTO PHANCONG VALUES('084', 'DA202', TO_DATE('2022-2-27','YYYY-MM-DD'))
   INTO PHANCONG VALUES('085', 'DA203', TO_DATE('2020-5-22','YYYY-MM-DD'))
   INTO PHANCONG VALUES('086', 'DA204', TO_DATE('2021-5-12','YYYY-MM-DD'))
   INTO PHANCONG VALUES('087', 'DA802', TO_DATE('2022-1-22','YYYY-MM-DD'))
   INTO PHANCONG VALUES('088', 'DA501', TO_DATE('2021-10-23','YYYY-MM-DD'))
   INTO PHANCONG VALUES('089', 'DA703', TO_DATE('2021-4-5','YYYY-MM-DD'))
   INTO PHANCONG VALUES('090', 'DA201', TO_DATE('2022-4-10','YYYY-MM-DD'))
   INTO PHANCONG VALUES('091', 'DA701', TO_DATE('2022-7-21','YYYY-MM-DD'))
   INTO PHANCONG VALUES('092', 'DA403', TO_DATE('2021-6-2','YYYY-MM-DD'))
   INTO PHANCONG VALUES('093', 'DA402', TO_DATE('2020-10-16','YYYY-MM-DD'))
   INTO PHANCONG VALUES('094', 'DA403', TO_DATE('2021-1-28','YYYY-MM-DD'))
   INTO PHANCONG VALUES('095', 'DA701', TO_DATE('2022-6-22','YYYY-MM-DD'))
   INTO PHANCONG VALUES('096', 'DA501', TO_DATE('2022-4-18','YYYY-MM-DD'))
   INTO PHANCONG VALUES('097', 'DA203', TO_DATE('2022-2-26','YYYY-MM-DD'))
   INTO PHANCONG VALUES('098', 'DA303', TO_DATE('2020-9-15','YYYY-MM-DD'))
   INTO PHANCONG VALUES('099', 'DA303', TO_DATE('2022-2-4','YYYY-MM-DD'))
SELECT 1 FROM DUAL;

-- Altering tables
UPDATE PHONGBAN set TrPHG = '015' WHERE MaPB = 1;
UPDATE PHONGBAN set TrPHG = '016' WHERE MaPB = 2;
UPDATE PHONGBAN set TrPHG = '017' WHERE MaPB = 3;
UPDATE PHONGBAN set TrPHG = '018' WHERE MaPB = 4;
UPDATE PHONGBAN set TrPHG = '019' WHERE MaPB = 5;
UPDATE PHONGBAN set TrPHG = '020' WHERE MaPB = 6;
UPDATE PHONGBAN set TrPHG = '021' WHERE MaPB = 7;
UPDATE PHONGBAN set TrPHG = '022' WHERE MaPB = 8;


/*
select * from PHONGBAN;
select * from NHANVIEN;
select * from DEAN;
select * from PHANCONG;

*/