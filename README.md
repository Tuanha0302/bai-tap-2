# bai-tap-2 của sinh viên: k225480106011 - Ngụy Đình Tuấn Hà - Môn hệ quản trị csdl

## bài toán
  - Tạo csdl quan hệ với tên QLSV gồm các bảng sau:
    + SinhVien(#masv,hoten,NgaySinh)
    + Lop(#maLop,tenLop)
    + GVCN(#@maLop,#@magv,#HK)
    + LopSV(#@maLop,#@maSV,ChucVu)
    + GiaoVien(#magv,hoten,NgaySinh,@maBM)
    + BoMon(#MaBM,tenBM,@maKhoa)
    + Khoa(#maKhoa,tenKhoa)
    + MonHoc(#mamon,Tenmon,STC)
    + LopHP(#maLopHP,TenLopHP,HK,@maMon,@maGV)
    + DKMH(#@maLopHP,#@maSV,DiemTP,DiemThi,PhanTramThi)
  # các bước tạo csdl
  ## tạo database mới
  - mở SQL Server Management studio 2022 đăng nhập tài khoản và chuột phải vào database rồi chọn new database:
![image](https://github.com/user-attachments/assets/1b89cd3b-7d91-4adb-85bc-fdd9b1fb1e1c)
  - sau đó ta đặt tên và thể chọn ok để tạo database mới hoặc ta chọn chỗ lưu khác ở phần Path
![image](https://github.com/user-attachments/assets/587527bd-98bd-4ba1-a22e-0b12acf95913)
  ## tạo bảng dữ liệu
  - Sau khi tạo xong database ta chọn nào dấu "+" bên cạnh database mới tạo rồi chuột phải vào tables và chọn new tables
![image](https://github.com/user-attachments/assets/fbfaca8a-fd21-45e1-9025-98445c18608b)
    tạo 1 bảng mang tên sinh viên có các thuộc tính MSSV, họ tên, ngày
    ![image](https://github.com/user-attachments/assets/ef42ea41-724b-428c-b6b8-dd91a1a562a3)

    sau khi điền xong ta chột phải vào MSSV để chọn set primary keys để làm khóa chính
    ![image](https://github.com/user-attachments/assets/d19973d4-0e06-4a19-bc5d-010774a99ea6)
    
    ta dùng tổ hợp ctrl+s để lưu lại bảng mang tên sinh viên và để kiểm tra có bảng hay chưa ta chọn chuột phải vào tables và chọn refresh để kiểm tra
    và ta làm tương tự các bước trên để tạo bảng Lop có thuộc tính là malop, tenlop và khóa chính là malop
    ![image](https://github.com/user-attachments/assets/5af16604-750e-411e-ac4c-7eca4319600d)

    sau đó tới bảng khoa có thuộc tính makhoa, tenkhoa và khóa chính là makhoa
    ![image](https://github.com/user-attachments/assets/648dab46-3e19-4842-ae44-e7d6d3bdfb00)

    và tới bảng monhoc có thuộc tính mamon, tenmon, STC có khóa chính là mamon
    ![image](https://github.com/user-attachments/assets/e07e9b58-1d20-49e2-bcb2-3894f0ed54da)

    







