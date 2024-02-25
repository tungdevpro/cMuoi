#!/bin/bash

# Đường dẫn đến thư mục bạn muốn lấy danh sách tên file
folderPath="assets/icons/"

# Lấy danh sách tên file
fileNames=$(ls $folderPath)

# Khai báo mảng dữ liệu
declare -a data=()

# Hàm chuyển đổi sang kiểu snake_case
function snake_case {
    local text="$1"
    local a=$(echo "$text" | tr '[:upper:]' '[:lower:]' | sed -E 's/[-_\s.]+(.)?/\U\1/g')
    echo "${a:0:1}${a:1}"
}

# Thêm tên file vào danh sách dữ liệu
for fileName in $fileNames; do
    r=$(snake_case "${fileName::-3}")
    data+=("static const String ic$(echo $r | awk '{print toupper(substr($0,1,1)) substr($0,2)}') = 'assets/icons/$fileName';")
done

# Ghi dữ liệu vào tập tin
outputFile="lib/commons/constants/asset/icon_resource.dart"
echo "abstract class IconResource {" > $outputFile
echo -e "\tconst IconResource._();" >> $outputFile
echo >> $outputFile
for line in "${data[@]}"; do
    echo -e "\t$line" >> $outputFile
done
echo "}" >> $outputFile
