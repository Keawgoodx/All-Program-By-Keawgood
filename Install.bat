@echo off
chcp 65001 >nul
echo ===================================================
echo     กำลังติดตั้งไลบรารีสำหรับ Keawgood Universe
echo ===================================================
echo.
echo [1/2] กำลังตรวจสอบและติดตั้ง Python Libraries...
pip install customtkinter python-docx PyMuPDF tkinterdnd2 moviepy curl_cffi requests playwright chardet beautifulsoup4

echo.
echo [2/2] กำลังติดตั้ง Web Browser สำหรับ Playwright...
echo (ใช้สำหรับ Bypass Cloudflare เวลาดูดไฟล์นิยาย)
playwright install chromium

echo.
echo ===================================================
echo   ติดตั้งเสร็จสมบูรณ์! สามารถปิดหน้าต่างนี้ได้เลย
echo ===================================================
pause >nul