#Tạo các tập tin có cấu trúc tên tập tin như sau: taptin10.txt, taptin11.txt… taptin20.txt. Với số lượng file và tên file được nhập từ bàn phím
read -p "Nhap so luong file: " num
read -p "Nhap ten file: " name
for i in `seq 1 $num`
do
	file="$name$i.txt"
	touch "$file"
done