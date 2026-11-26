# Socket API & Docker Assignment (Exercise 1 & 2)


ชื่อ-นามสกุล: สุรีรัตน์ เย็นฉ่ำ
รหัสนักศึกษา: 6814951029
---


## Exercise 1: Chat (1 Server + 2 Clients)


ระบบแชตด้วย TCP Socket และ threading โดย Server รับการเชื่อมต่อจาก Client 2 ตัว
และส่งต่อ (broadcast) ข้อความที่ได้รับให้ Client อื่น รันบน Docker Compose


### วิธีรัน
bash
cd exercise-1
docker compose up --build
docker exec -it chat_client1 bash    # แล้วรัน python client.py
docker exec -it chat_client2 bash    # แล้วรัน python client.py
docker compose down


### ผลลัพธ์
รัน container ทั้งหมด
-


รายการ container
<img width="1917" height="1077" src=1.png />


แชตระหว่าง Client 1 และ Client 2
<img width="1917" height="1077" src=2.png />


Log ของ Server
-


ปิด container
<img width="1917" height="1077" src=5.png />


---


## Exercise 2: Flask Web App + Socket Server


หน้าเว็บ Flask รับข้อความผ่านฟอร์ม (POST) แล้วทำหน้าที่เป็น socket client
ส่งไปยัง socket server ซึ่งตอบกลับแบบ Echo และแสดงผลบนหน้าเว็บ


### วิธีรัน
bash
cd exercise-2
docker compose up --build
# เปิดเบราว์เซอร์ที่ http://localhost:5000
docker compose down


### ผลลัพธ์
รัน container ทั้งหมด
<img width="1917" height="1077" src=3.png />


หน้าฟอร์ม
<img width="1917" height="1077" src=4.png />


ผลลัพธ์หลังกด Send
-

Log ของ Socket Server
-


---


## วิธีหยุดการทำงาน
รัน docker compose down ในโฟลเดอร์ที่มีไฟล์ docker-compose.yml
