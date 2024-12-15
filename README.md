# BÁO CÁO BÀI LAB TUẦN 05

## Thông tin sinh viên
- **Họ và tên:** Nguyễn Thanh Tuyền  
- **Mã số sinh viên:** 21080601  
- **Giảng viên hướng dẫn:** Võ Văn Hải

---

## Đề bài
Phát triển ứng dụng web bằng **Spring Boot** dựa trên yêu cầu sau:  
1. Tạo các `Entities` sao cho khi chạy ứng dụng sẽ tạo ra các bảng giống mô hình class diagram.  
2. Viết các `Repository Interface` để thao tác với cơ sở dữ liệu.  
3. Viết các `Service` để xử lý logic nghiệp vụ.  
4. Tạo giao diện web:  
   - Cho phép công ty đăng tin tuyển dụng với các kỹ năng mong muốn.  
   - Gợi ý việc làm phù hợp với kỹ năng của ứng viên khi đăng nhập.  
   - Giúp công ty tìm ứng viên phù hợp và gửi email mời phỏng vấn.  
5. Đề xuất kỹ năng ứng viên cần học thêm.  
6. Các tính năng khác như phân trang, hiển thị danh sách ứng viên và công việc.  

---

## Công nghệ sử dụng
- **Ngôn ngữ:** Java  
- **Framework:** Spring Boot  
- **Cơ sở dữ liệu:** MariaDB  
- **Thư viện:**  
  - Spring Boot Starter Web  
  - Spring Boot Starter Data JPA  
  - Thymeleaf  
  - Lombok  
  - Bootstrap  
  - nv-i18n (mã quốc gia)  

---

## Các bước thực hiện

### 1. Tạo dự án Spring Boot
- Sử dụng **Spring Initializr** để tạo dự án với các dependencies cần thiết:
  - Spring Web
  - Spring Data JPA
  - Thymeleaf
  - MariaDB Driver
  - Lombok

### 2. Tạo `Entities`
- **Lớp Address:** chứa thông tin địa chỉ của ứng viên (đường, thành phố, mã bưu điện, mã quốc gia).  
- **Lớp Candidate:** chứa thông tin ứng viên (tên, ngày sinh, số điện thoại, email, địa chỉ).

### 3. Tạo `Repository Interface`
- **`AddressRepository`:** để thao tác với bảng `Address`.  
- **`CandidateRepository`:** để thao tác với bảng `Candidate`.

### 4. Tạo `Service`
- **`CandidateServices`:** xử lý logic liên quan đến ứng viên, bao gồm tìm kiếm và phân trang.

### 5. Tạo Controller
- **`CandidateController`:** điều khiển các request hiển thị danh sách ứng viên, hỗ trợ phân trang.

### 6. Thiết kế giao diện (HTML)
- **File `candidates.html`:** hiển thị toàn bộ danh sách ứng viên.  
- **File `candidates-paging.html`:** hiển thị danh sách ứng viên có phân trang.

### 7. Thêm dữ liệu mẫu
- Sử dụng `CommandLineRunner` để thêm 20 ứng viên và địa chỉ mẫu vào cơ sở dữ liệu.

---

## Kết quả thực hiện
1. **Endpoint `/list`:** Hiển thị danh sách ứng viên (không phân trang).  

2. **Endpoint `/candidates`:** Hiển thị danh sách ứng viên với phân trang.  

---

## Hướng dẫn chạy ứng dụng
1. **Cấu hình cơ sở dữ liệu:**
   - Mở file `application.properties` và thay đổi thông tin:
     ```properties
     spring.datasource.url=jdbc:mariadb://localhost:3306/lab5
     spring.datasource.username=root
     spring.datasource.password=sapassword
     ```
2. **Chạy ứng dụng:**
   - Mở **IntelliJ IDEA**, chạy file `Lab5Application.java`.  
   - Truy cập các endpoint:
     - `http://localhost:8080/list` - Hiển thị danh sách ứng viên.
     - `http://localhost:8080/candidates` - Hiển thị danh sách ứng viên phân trang.  

---

## Nhận xét
- **Ưu điểm:**  
  - Ứng dụng thực hiện đầy đủ các yêu cầu đề bài.  
  - Tích hợp phân trang giúp hiển thị dữ liệu lớn dễ dàng hơn.  
  - Giao diện thân thiện, sử dụng Bootstrap để thiết kế.  

- **Nhược điểm:**  
  - Chưa triển khai tính năng gửi email tự động.  
  - Cần thêm chức năng cho phép công ty đăng tin tuyển dụng.

---

## Kết luận
Bài thực hành giúp nắm vững cách sử dụng Spring Boot để xây dựng ứng dụng web, tích hợp cơ sở dữ liệu, và thiết kế giao diện bằng Thymeleaf.

