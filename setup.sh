#!/bin/bash

# Cài đặt Xorg (X11 server) và Openbox (trình quản lý cửa sổ nhẹ)

apt install -y xorg openbox

# Cài đặt trình duyệt Firefox hoặc Chromium
# Nếu muốn dùng Chromium, bỏ ghi chú dòng dưới và ghi chú dòng cài Firefox
apt install -y firefox
# apt install -y chromium-browser

# Tạo script để tự động mở trình duyệt và truy cập Google
echo '#!/bin/bash' > ~/start_browser.sh

# Cấu hình mở Firefox với trang Google, thay bằng Chromium nếu cần
echo 'firefox https://www.google.com' >> ~/start_browser.sh
# echo 'chromium-browser https://www.google.com' >> ~/start_browser.sh

# Thêm quyền thực thi cho file script
chmod +x ~/start_browser.sh

# Thêm script vào ~/.bashrc để chạy mỗi khi đăng nhập
echo "~/start_browser.sh" >> ~/.bashrc

# Xóa file setup.sh sau khi cài đặt xong
rm -- "$0"

echo "Cài đặt hoàn tất. Khởi động lại hoặc đăng nhập lại để chạy trình duyệt."
