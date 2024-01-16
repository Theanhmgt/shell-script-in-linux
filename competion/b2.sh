#!/bin/bash

# Nhập đường dẫn thư mục nguồn từ bàn phím
read -p "Nhap duong dan thu muc nguon: " source_folder

# Đường dẫn thư mục đích là Desktop/Backup
destination_folder="$HOME/Desktop/Backup"

# Kiểm tra nếu thư mục đích chưa tồn tại, tạo mới và xuất thông báo
if [ ! -d "$destination_folder" ]; then
    mkdir -p "$destination_folder"
    echo "Thu muc backup chua ton tai. Tien hanh tao thu muc."
fi

# Tạo tên file sao lưu với định dạng .tar và thêm giờ hiện tại
backup_file_name="Backup$(date +%H:%M:%S).tar"

# Đường dẫn đầy đủ đến file sao lưu
backup_file_path="$destination_folder/$backup_file_name"

# Thực hiện sao lưu
tar -cvf "$backup_file_path" "$source_folder"

# Xuất thông báo sau khi thực hiện xong
echo "Sao luu du lieu thanh cong! File luu tai: $backup_file_path"
