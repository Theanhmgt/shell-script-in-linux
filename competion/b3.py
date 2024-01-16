#!/usr/bin/env python3
def analyze_text(file_content):
    # Tìm số chữ
    word_count = len(file_content.split())
    # Tìm số ký tự (không có khoảng trắng)
    char_count_no_space = len(file_content.replace(" ", ""))
    # Tìm số ký tự (có khoảng trắng)
    char_count_with_space = len(file_content)
    return word_count, char_count_no_space, char_count_with_space
def compare_files(file1_content, file2_content):
    # Tìm những từ có trong file1 nhưng không có trong file2
    unique_words = set(file1_content.split()) - set(file2_content.split())
    # Lưu kết quả vào file ketqua.txt
    with open("ketqua.txt", "w") as result_file:
        result_file.write("Ket qua: {}\n".format(" ".join(unique_words)))
        # Phân tích và ghi thông tin thống kê vào file
        word_count, char_count_no_space, char_count_with_space = analyze_text(file1_content)
        result_file.write("So chu: {}\n".format(word_count))
        result_file.write("So ky tu (khong co khoan trang): {}\n".format(char_count_no_space))
        result_file.write("So ky tu (co khoan trang): {}\n".format(char_count_with_space))
# Đọc nội dung từ file1.txt và file2.txt
file1_content=$(<file1.txt)
file2_content=$(<file2.txt)
# So sánh và ghi kết quả vào ketqua.txt
compare_files "$file1_content" "$file2_content"

