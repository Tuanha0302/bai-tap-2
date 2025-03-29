# BÀI TẬP VỀ NHÀ 03 - MÔN HỆ QUẢN TRỊ CSDL: DEADLINE: 23H59 NGÀY 30/03/2025 ĐIỀU KIỆN: (ĐÃ LÀM XONG BÀI 2) BÀI TOÁN: Sửa bài 2 để có csdl như sau:

+ SinhVien(#masv,hoten,NgaySinh)
+ Lop(#maLop,tenLop)
+ GVCN(#@maLop,#@magv,#HK)
+ LopSV(#@maLop,#@maSV,ChucVu)
+ GiaoVien(#magv,hoten,NgaySinh,@maBM)
+ BoMon(#MaBM,tenBM,@maKhoa)
+ Khoa(#maKhoa,tenKhoa)
+ MonHoc(#mamon,Tenmon,STC)
+ LopHP(#maLopHP,TenLopHP,HK,@maMon,@maGV)
+ DKMH(#id_dk, @maLopHP,@maSV,DiemThi,PhanTramThi)
+ Diem(#id, @id_dk, diem)

YÊU CẦU:

1. Sửa bảng DKMH và bảng Điểm từ bài tập 2 để có các bảng như yêu cầu.
2. Nhập dữ liệu demo cho các bảng (nhập có kiểm soát từ tính năng Edit trên UI của mssm)
3. Viết lệnh truy vấn để: Tính được điểm thành phần của 1 sinh viên đang học tại 1 lớp học phần

## tạo bảng điểm 
Đây là một bảng mới trong database baitap:
![image](https://github.com/user-attachments/assets/28703962-b0dd-4fe9-b91a-654403e486f1)

+ đặt điều kiện cho bảng điểm
  ta chọn check constraints.. để thêm điều kiện
  ![image](https://github.com/user-attachments/assets/d3e249ac-c6cb-4c2e-aa1a-0d81d08d70d6)

+ thêm điều kiện cho cột điểm
  ![image](https://github.com/user-attachments/assets/7c517eec-21c8-4774-8111-4a7a8078f4c6)

+ sau khi nhập xong điều kiện ta đóng lại và ấn tổ hợp ctrl+s để lưu lại
  ![image](https://github.com/user-attachments/assets/267cabf4-19ad-4587-b8b1-afcb0dbfbcfe)

## ta sửa bảng DKMH để phù hợp với liên kết bảng điểm đã tạo
![image](https://github.com/user-attachments/assets/34324675-fefd-43db-a5be-f67b7a9ddecd)

## ta đặt khóa ngoại giữa bảng điểm với bảng DKMH
![image](https://github.com/user-attachments/assets/aba36884-2e6b-46c2-9721-74cc8f20478b)

## mô tả các PK, FK của bảng database
![image](https://github.com/user-attachments/assets/be62decc-643d-49a7-bb60-77126db584ec)

## các bảng được nhập 
### bảng maLopHP
![image](https://github.com/user-attachments/assets/240b604f-132c-4ba2-9367-49a1b61a7dc9)

### bảng điểm
![image](https://github.com/user-attachments/assets/db247fc5-c780-491e-bffb-742142e004b3)

### bảng DKMh
![image](https://github.com/user-attachments/assets/62fd362a-ebe3-41e5-a61b-3b3e159a2207)

## code truy vấn các bảng






