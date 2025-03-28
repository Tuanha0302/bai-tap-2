# bai-tap-2 của sinh viên: k225480106011 - Ngụy Đình Tuấn Hà - Môn hệ quản trị csdl

## bài toán
  - Tạo csdl quan hệ với tên QLSV gồm các bảng sau:
    + SinhVien(#masv,hoten,NgaySinh)
    + Lop(#maLop,tenLop)
    + Khoa(#maKhoa,tenKhoa)
    + MonHoc(#mamon,Tenmon,STC)
    + BoMon(#MaBM,tenBM,@maKhoa)
    + GiaoVien(#magv,hoten,NgaySinh,@maBM)
    + LopHP(#maLopHP,TenLopHP,HK,@maMon,@maGV)
    + GVCN(#@maLop,#@magv,#HK)
    + LopSV(#@maLop,#@maSV,ChucVu)
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
      ![image](https://github.com/user-attachments/assets/1011b7f8-0085-4598-9d51-d076d33c27da)
    
      + tạo bảng LopHP có các thuộc tính maLopHP, tenLopHP, HK, mamon, magv và khóa chính là maLopHP, khóa ngoại là mamon, magv
      ![image](https://github.com/user-attachments/assets/60db063d-a7b3-4728-b3f7-060bd086c8c5)

      + tạo bảng GVCN có các thuộc tính malop, magv, HK và khóa chính là malop, magv, Hk, khóa ngoại có malop, magv
      ![image](https://github.com/user-attachments/assets/ff90729d-70da-4b99-b773-88c9db67cea5)

      + tạo bảng LopSV có các thuộc tính malop, MSSV, chucvu và khóa chính là malop, MSSV, khóa ngoại là malop, MSSV
      ![image](https://github.com/user-attachments/assets/829513f7-c2c5-4dd3-a5ba-13f68508b19d)

      + tạo bảng DKMH có các thuộc tính maLopHP, masv, diemthi, diemTP, phantramthi và khóa chính là maLopHP, masv,  khóa ngoại là maLopHP, masv
      ![image](https://github.com/user-attachments/assets/6b3f8cfc-db70-4eb0-989b-983d2293a07e)

- ta có thể cài đặt điều kiện cho các thuộc tính để quản lý lúc nhập bảng
  + ví dụ ta có thể cài điều kiện cho điểm thi, điểm thành phần bằng cách ấn chuột phải để hiện bảng như sau và chọn check constrains...
  ![image](https://github.com/user-attachments/assets/5efadd23-da39-41ae-9654-f77c57b5442a)

    sau đó ta chọn add để thêm selected check constraint:
    ![image](https://github.com/user-attachments/assets/c5101d93-65b5-4fdb-b862-7a8798257eb8)

  + ta chọn vào expression rồi chọn dấu ... bên phải để thêm điều kiện mình muốn vào
  ![image](https://github.com/user-attachments/assets/13d19232-41c5-4ba5-bbea-596ba3c51fd7)

    ta làm tương tự với điều kiện của điểm thi
    ![image](https://github.com/user-attachments/assets/3c7ebb6d-e6b3-4f49-be3a-e63d02b7daeb)
    cuối cùng ta ấn tổ hợp ctrl+s để lưu lại các điều kiện đã thêm
    
    nếu điểm nhập vào không thỏa mãn điều kiện đã đặt thì sẽ hiện thông báo lỗi để cho người dùng biết và sửa lại:
    ![image](https://github.com/user-attachments/assets/e73272b8-bfc8-49f3-be81-3f496f5743de)

- giờ ta đi nhập số liệu cho từng bảng bằng cách chuột phải vào bảng ta muốn nhập rồi chọn edit top 200 rows
  ![image](https://github.com/user-attachments/assets/5903cb3b-e44c-4efd-bf02-a74ed2c168c3)

  + nhập dữ liệu cho bảng SinhVien:
  ![image](https://github.com/user-attachments/assets/6667ae05-aaf0-4263-bb05-39cf2407ea99)

  + nhập dữ liệu cho bảng Lop:
  ![imaage](https://github.com/user-attachments/assets/e6a821de-aa4a-4763-a950-47e9a68fff7d)

  + nhập dữ liệu cho bảng Khoa:
  ![image](https://github.com/user-attachments/assets/026ca67f-5443-4132-b246-f45fd0e2b08a)

  + nhập dữ liệu cho bảng MonHoc:
  ![image](https://github.com/user-attachments/assets/076dbb3d-42c6-41c8-b71a-a29dd50ca1d2)

  + nhập dữ liệu cho bảng BoMon:
  ![image](https://github.com/user-attachments/assets/294adbc2-9959-4d9d-bcfa-4537bc8754fa)
  nếu nhập thông tin phần makhoa khác thông tin đã được lưu ở bảng khoa thì sẽ báo lỗi để check lại:
  ![image](https://github.com/user-attachments/assets/45a2e780-34a8-425e-9d20-820badd044ad)

  + nhập dữ liệu cho bảng GiaoVien:
  ![image](https://github.com/user-attachments/assets/c13f2172-f753-4ee9-8afa-91ea9fe603da)

  + nhập dữ liệu cho bảng LopHP:
  ![image](https://github.com/user-attachments/assets/ea80000f-2e47-47df-b410-671815e466b0)

  + nhập dữ liệu cho bảng GVCN:
  ![image](https://github.com/user-attachments/assets/68d43dea-face-4c92-9b90-849519acb87b)

  + nhập dữ liệu cho bảng LopSV:
  ![image](https://github.com/user-attachments/assets/86e0e142-baa3-4063-b370-be1faa59b0fa)

  + nhập dữ liệu cho bảng DKMH:
  ![image](https://github.com/user-attachments/assets/d6ad7a8e-906e-494f-89c6-f10ebd546a8f)

## Chuyển các thao tác đồ họa trên thành lệnh SQL
- Đầu tiên ta đưa chuột tới tên của máy mình để mở các tính năng ra:
  ![image](https://github.com/user-attachments/assets/52bc2880-b23e-423c-a9e7-e3b34a526f60)
  
  sau đó ta chọn new query để nhập code tạo database mới:
  ![image](https://github.com/user-attachments/assets/4d50ce44-a5ac-4d15-a241-aa54f4d890d7)

- Đây là đoạn code để tạo ra 1 database mới:
![image](https://github.com/user-attachments/assets/e131d6cd-ee77-43e6-a142-74f3570fa2ee)

  nhập xong code ta ấn vào excute để nó chạy code và sau khi chạy ta chuột phải vào database ấn refresh để cho chương trình chạy lại để hiện database mới vừa tạo:
  ![image](https://github.com/user-attachments/assets/61654c94-1457-4620-ae18-39cc9c40ed81)

  sau khi làm các bước trên ta sẽ hiện 1 database mới tên người dùng đặt (ví dụ: baitapcode) bên dưới:
  ![image](https://github.com/user-attachments/assets/03965d93-a24c-4652-9fe0-a9e0694d11b6)

- Đây là đoạn code để tạo ra bảng SinhVien trong tables cảu baitapcode:
![image](https://github.com/user-attachments/assets/3cf594e5-b025-4a02-8c2d-1ee9d6ef022a)

  ta sẽ làm tương tự với bảng Lop, Khoa, MonHoc nhưng phải thay đổi các phần tử bên dưới cho đúng với mỗi bảng ví dụ như tạo bảng MonHoc:
  ![image](https://github.com/user-attachments/assets/e19fcd81-e35b-4a48-a36f-589305456eba)

- còn các bảng còn lại có thêm khóa ngoại và khóa chính hỗn hợp (composite primary key) thì ta sẽ có chút thay đổi về dòng lệnh
  
  + ta có thể tham khảo code khi tạo bảng GVCN dưới đây để xem cách tạo bảng có khóa chính hỗn hợp:
  ![image](https://github.com/user-attachments/assets/a56b2c8b-fada-45a8-b96b-7a71c1595546)

  + sau khi tạo đủ 10 bảng ta có thể thêm khóa ngoại cho các bảng liên kết với nhau ví dụ bằng lệnh code khi liên kết makhoa ở bảng BoMon với makhoa ở bảng Khoa:
  ![image](https://github.com/user-attachments/assets/03dc854c-ad97-4fca-87a1-f84807a323c5)

  + còn nếu muốn thêm điều kiện của từng thuộc tính ta có thể tham khảo dòng code dưới là điều kiện của diemthi, diemTP khi tạo bảng DKMH theo lệnh code:
  ![image](https://github.com/user-attachments/assets/76fecd54-6134-4cc0-a01f-6e866674ff1d)

- sau khi tạo xong đủ các bảng, liên kết các khóa ngoại thì ta có thể thao tác nhập các dữ liệu tương đương với cách thao tác đồ họa mà không bị lỗi 

## lợi ích khi dùng lệnh SQL để làm 
- việc dùng lệnh SQL để làm giúp giảm thời gian khi phải làm nhiều bảng
- các chức năng của cách tạo bằng lệnh tương đương với cách thao tác đồ họa
- có thể tái sử dụng code
- chính xác hơn và ít lỗi hơn cách theo tác đồ họa


    


































      


    







