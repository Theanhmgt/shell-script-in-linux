#Tính tổng số chẵn rồi lưu vào file txt
#!bin/bash
sum=0
file_name="ketqua.txt"
echo -n "Cac so duoc nhap vao: " > "$file_name"
for arg in "$@";do
	echo -n "$arg " >> "$file_name"
	if [ $((arg % 2)) -eq 0 ];then
		sum=$((sum + arg))
	fi
done

if [ $sum -eq 0 ];then
	echo "\nKhong co so chan duoc nhap vao!" >> "$file_name"
else
	echo "\nTong cac so chan la: $sum" >> "$file_name"
fi
