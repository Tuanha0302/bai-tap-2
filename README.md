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
    + tạo 1 bảng mang tên sinh viên có các thuộc tính MSSV, họ tên, ngày
    ![image](https://github.com/user-attachments/assets/ef42ea41-724b-428c-b6b8-dd91a1a562a3)

    + sau khi điền xong ta chột phải vào MSSV để chọn set primary keys để làm khóa chính
    ![image](https://github.com/user-attachments/assets/d19973d4-0e06-4a19-bc5d-010774a99ea6)
    
    ta dùng tổ hợp ctrl+s để lưu lại bảng mang tên sinh viên và để kiểm tra có bảng hay chưa ta chọn chuột phải vào tables và chọn refresh để kiểm tra
    + và ta làm tương tự các bước trên để tạo bảng Lop có thuộc tính là malop, tenlop và khóa chính là malop
    ![image](https://github.com/user-attachments/assets/5af16604-750e-411e-ac4c-7eca4319600d)

    + sau đó tới tạo bảng Khoa có thuộc tính makhoa, tenkhoa và khóa chính là makhoa
    ![image](https://github.com/user-attachments/assets/648dab46-3e19-4842-ae44-e7d6d3bdfb00)


    + tạo bảng MonHoc có thuộc tính mamon, tenmon, STC có khóa chính là mamon
    ![image](https://github.com/user-attachments/assets/e07e9b58-1d20-49e2-bcb2-3894f0ed54da)

    + tạo bảng BoMon có thuộc tính MaBM, tenBM, makhoa có khóa chính là MaBM
    ![image](https://github.com/user-attachments/assets/fb82d174-39a8-4115-a2c6-271dbf1b0684)

    và sau khi tạo xong ta sẽ liên kết dữ liệu của makhoa ở bảng BoMon với makhoa ở bảng Khoa bằng cách thiết lập Foreign Key(FK) - khóa ngoại bằng cách:

      Bước 1: ấn chuột phải để hiện bảng như sau rồi chọn relationships:
      ![image](https://github.com/user-attachments/assets/a4bc1924-ffa8-4864-a772-f91f18fa8985)

      sau đó chọn add để thêm selected relationships
      ![image](https://github.com/user-attachments/assets/ad85ecc0-1545-4e41-8544-b44c3e87e320)

      Bước 2: ta chọn tables and columns spec và ấn vào nút 3 chấm:
      ![image](https://github.com/user-attachments/assets/bbb913eb-9d1f-4ba2-89ac-ac5e28746471)
      ![image](https://github.com/user-attachments/assets/e5d0c7a7-2250-4256-985b-e40f86118634)

      sau đó ta chọn ở phần primary key table chuyển sang Khoa và ở dưới chọn makhoa và chỉnh sửa bên BoMon thành makhoa để trùng nhau rồi ấn ok và name của relationships sẽ tự đổi cho chúng ta
      ![image](https://github.com/user-attachments/assets/f81bb8a7-dac3-4f44-a265-3dcfc52b0b1b)

      Bước 3: ta chọn INSERT and UPDATE Specification để mở thành cascade điều này giúp ta có thể khi thay đổi ở khóa chính (PK) trong bảng cha thay đổi, tất cả giá trị liên quan trong bảng con cũng sẽ tự động cập nhật theo sau đó ta lưu lại bằng tổ hợp ctrl+s 
      ![image](https://github.com/user-attachments/assets/3e0e082f-36fb-4901-a377-0b74bcda6ab2)

      sau khi ấn lưu nó sẽ hiện bảng có nghĩa là các bảng sẽ được lưu vào csdl, ban có muốn tiếp tục hay không thì ta sẽ yes để lưu 2 bảng đó lại
      ![image](https://github.com/user-attachments/assets/a153e298-6cf7-40b9-ae4f-11c4329c0b64)

      + làm tương tự các bước trên để tạo bảng GiaoVien có các thuộc tính magv, hoten, ngaysinh, MaBM và khóa chính là magv, khóa ngoại là MaBM
      ![image](https://github.com/user-attachments/assets/4ba26360-fad2-4155-9831-51f92b6c410a)

      + tạo bảng LopHP có các thuộc tính maLopHP, tenLopHP, HK, mamon, magv và khóa chính là maLopHP, khóa ngoại là mamon, magv
      ![image](https://github.com/user-attachments/assets/230340e0-0fbd-4b06-9b2c-3fc4734b6a8a)

      + tạo bảng GVCN có các thuộc tính malop, magv, HK và khóa chính là malop, magv, Hk, khóa ngoại có malop, magv
      ![image](https://github.com/user-attachments/assets/53020aa7-7a77-444f-ae79-f3e3b818d525)

      + tạo bảng LopSV có các thuộc tính malop, MSSV, chucvu và khóa chính là malop, MSSV, khóa ngoại là malop, MSSV
      ![image](https://github.com/user-attachments/assets/4e58692f-8a59-40d0-8674-20609ed1bdba)










      


    







