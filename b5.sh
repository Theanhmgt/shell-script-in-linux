#Viết script tạo user với thông tin được nhập vào từ bàn phím
read -p "Nhap username: " username
read -p "Nhap password: " password
echo
sudo useradd -m -p $(openssl passwd -1 $password) $username