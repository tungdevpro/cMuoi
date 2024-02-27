#!/bin/bash

inputXmlFile="assets/colors/colors.xml"
outputDartFile="lib/common/constants/app_color.dart"

# Kiểm tra xem tệp XML có tồn tại không
if [ ! -f "$inputXmlFile" ]; then
  echo "Tệp XML không tồn tại."
  exit 1
fi

# Tạo mã Dart từ XML
echo "import 'dart:ui';" > "$outputDartFile"
echo "" >> "$outputDartFile"
echo "abstract class AppColor {" >> "$outputDartFile"
echo "  const AppColor._();" >> "$outputDartFile"
echo "" >> "$outputDartFile"

# Đọc nội dung của tệp XML
while IFS= read -r line || [[ -n "$line" ]]; do
  if [[ "$line" == *"color"* ]]; then
    # Lấy tên màu
    colorName=$(echo "$line" | sed -n 's/.*<color name="\([A-Za-z_]\+\)">.*/\1/p' | sed -e 's/_\([a-z]\)/\U\1/g' -e 's/^./\L&/')
    # nameValue=$(echo "$line" | awk -F'[" ]+' '/<color name="/{print $3}')
    nameValue=$(echo "$line" | grep -oE 'name="([^"]+)' | awk -F'"' '{print $2}')

    # Lấy giá trị màu
    # colorValue=$(echo "$line" | sed -n 's:.*<color.*>\(#\w*\)</color>.*:\1:p')
    resColor=$(echo "$line" | sed -n 's/.*#\([0-9A-Fa-f]*\)<\/color>.*/\1/p')

    echo "output: $nameValue"
    # Chuyển đổi mã màu hex sang integer
    # colorInt=$(printf "%d" "0x${colorValue:1}")

    # Ghi hằng số màu vào tệp Dart
    echo "  static const Color $nameValue = Color(0xFF"$resColor");" >> "$outputDartFile"
  fi
done < "$inputXmlFile"

# Đóng class AppColor
echo "" >> "$outputDartFile"
echo "}" >> "$outputDartFile"

echo "Đã tạo xong mã Dart từ tệp XML."
