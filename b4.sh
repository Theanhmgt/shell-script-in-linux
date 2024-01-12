#Viết chương trình xóa tất cả các file có trong một thư mục. Thư mục và loại tập tin được nhập từ bàn phím. Ví dụ muốn xóa tất cả tập tin .txt tại Desktop thì nhập vào: Desktop và txt
read -p "Nhập đường dẫn tới thư mục: " duong_dan_thu_muc
read -p "Nhập loại tập tin cần xóa (ví dụ: txt): " loai_tap_tin
if [ ! -d "$duong_dan_thu_muc" ]; then
    echo "Lỗi: Thư mục không tồn tại."
    exit 1
fi
find "$duong_dan_thu_muc" -type f -name "*.$loai_tap_tin" -delete