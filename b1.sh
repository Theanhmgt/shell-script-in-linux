#Nhận vào một chuỗi (tên thư mục hoặc tên file), hãy xác định nó có tồn tại trong thư mục hiện tại và cả những thư mục con hay không

#!/bin/bash
echo "Nhập tên file hoặc thư mục: "
read ten_file_thu_muc
# Kiểm tra xem file hoặc thư mục có tồn tại trong thư mục hiện tại và thư mục con không
if find . -type d -name "$ten_file_thu_muc" -o -type f -name "$ten_file_thu_muc" | grep -q .; then
    echo "$ten_file_thu_muc tồn tại trong thư mục hiện tại và thư mục con."
else
    echo "$ten_file_thu_muc không tồn tại trong thư mục hiện tại và thư mục con."
fi