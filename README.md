# รายงานแบบฝึกหัด Socket API & Docker (Assignment 1 & 2)

## ข้อมูลผู้จัดทำ

- **ชื่อ-นามสกุล:** นางสาวสุรีรัตน์ เย็นฉ่ำ
- **รหัสนักศึกษา:** 6814951029
- **กลุ่มเรียน:** 2

---

## แบบฝึกหัดที่ 1: ระบบ Chat ด้วย Docker (2 Clients & 1 Server)

### 1. คำอธิบายการทำงาน

ระบบแชทประยุกต์ใช้ Socket API แบบ TCP ในการส่งข้อมูลระหว่าง Client จำนวน 2 เครื่อง ผ่าน Server ตัวกลาง โดย Client สามารถส่งข้อความถึงกันได้ผ่าน Server

### 2. โครงสร้างไฟล์

```text
exercise-1/
├── server.py
├── client.py
├── Dockerfile.server
├── Dockerfile.client
└── docker-compose.yml
```

### 3. ขั้นตอนการติดตั้งและใช้งาน (How to Run)

**ขั้นตอนที่ 1: เข้าโฟลเดอร์แบบฝึกหัดที่ 1**

```bash
cd exercise-1
```

**ขั้นตอนที่ 2: สร้างและเริ่มต้น Container**

```bash
docker compose up --build
```

**ขั้นตอนที่ 3: เปิดใช้งาน Client 1**

เปิด Terminal ใหม่ แล้วใช้คำสั่ง

```bash
docker exec -it chat_client1 python client.py
```

**ขั้นตอนที่ 4: เปิดใช้งาน Client 2**

เปิด Terminal ใหม่อีกหน้าต่าง แล้วใช้คำสั่ง

```bash
docker exec -it chat_client2 python client.py
```

**ขั้นตอนที่ 5: ทดสอบการส่งข้อความ**

พิมพ์ข้อความใน Client 1 และ Client 2 เพื่อตรวจสอบการรับส่งข้อความระหว่างกัน

**ขั้นตอนที่ 6: หยุดการทำงาน**

```bash
docker compose down
```

---

## แบบฝึกหัดที่ 2: การใช้งาน Socket API ร่วมกับ Web Application

### 1. คำอธิบายการทำงาน

เป็นการประยุกต์ใช้ Socket API ร่วมกับ Web Application โดยใช้ Flask เป็นส่วนติดต่อผู้ใช้งาน (Web Application) และ Socket Server สำหรับรับส่งข้อมูล

ผู้ใช้สามารถกรอกข้อความผ่านหน้าเว็บไซต์ จากนั้นระบบจะส่งข้อความไปยัง Socket Server และรับข้อความตอบกลับในรูปแบบ Echo

### 2. โครงสร้างไฟล์

```text
exercise-2/
├── app.py
├── socket_server.py
├── Dockerfile.app
├── Dockerfile.socket
└── docker-compose.yml
```

### 3. ขั้นตอนการติดตั้งและใช้งาน (How to Run)

**ขั้นตอนที่ 1: เข้าโฟลเดอร์แบบฝึกหัดที่ 2**

```bash
cd exercise-2
```

**ขั้นตอนที่ 2: สร้างและเริ่มต้น Container**

```bash
docker compose up --build
```

**ขั้นตอนที่ 3: เปิด Web Browser**

เข้าเว็บไซต์ตามที่กำหนด

```text
http://localhost:5000
```

**ขั้นตอนที่ 4: ทดสอบการส่งข้อความ**

1. กรอกข้อความในหน้าเว็บไซต์
2. กดส่งข้อความ
3. ตรวจสอบข้อความที่ส่ง (Message sent)
4. ตรวจสอบข้อความตอบกลับจาก Server (Response from server)

**ขั้นตอนที่ 5: ตรวจสอบผลการทำงาน**

ตรวจสอบ Terminal เพื่อดูข้อความที่ Socket Server ได้รับ

**ขั้นตอนที่ 6: หยุดการทำงาน**

```bash
docker compose down
```

---

## เครื่องมือและเทคโนโลยีที่ใช้

- Python
- Socket API (TCP)
- Docker
- Docker Compose
- Flask
- HTML

---

## สรุปผลการทดลอง

จากการทำแบบฝึกหัดทั้ง 2 งาน สามารถทดลองใช้งาน Socket API สำหรับการสื่อสารระหว่าง Client และ Server รวมถึงการประยุกต์ใช้ Socket API ร่วมกับ Web Application ได้ โดยใช้ Docker และ Docker Compose ในการจัดการ Container และทดสอบการรับส่งข้อมูลระหว่างระบบ

---

**ผู้จัดทำ:** นางสาวสุรีรัตน์ เย็นฉ่ำ

**รหัสนักศึกษา:** 6814951029

**กลุ่มเรียน:** 2
