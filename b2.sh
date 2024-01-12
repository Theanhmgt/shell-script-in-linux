#Viết chương trình tìm kiếm tập tin trên hệ thống. Tên tập tin được nhập từ bàn phím. Nếu có hiển thị đường dẫn của tập tin. Trong trường hợp người dùng tập tin không nhập phần extention thì thông báo lỗi và cho người dùng nhập lại.
while true; do
	read -p "Nhap ten tap tin: " file_name
	extention=${file_name##*.}
	if [ "$file_name" = "$extention" ];then
		echo "Hay nhap dung ten file(ca phan mo rong)!"
	else
		echo "Đang tim..."
		path=$(sudo find / -type f -name $file_name 2>/dev/null)
		if [ -n $path ];then
			echo "Duong dan cua tap tin la $path"
		else
			echo "Khong tim thay tap tin"
		fi
		break
	fi
done