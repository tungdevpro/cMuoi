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

    # Lấy giá trị màu
    colorValue=$(echo "$line" | sed -n 's:.*<color.*>\(#\w*\)</color>.*:\1:p')

    # Chuyển đổi mã màu hex sang integer
    colorInt=$(printf "%d" "0x${colorValue:1}")

    # Ghi hằng số màu vào tệp Dart
    echo "  static const Color $colorName = Color(0xFF$(printf "%X" "$colorInt"));" >> "$outputDartFile"
  fi
done < "$inputXmlFile"

# Đóng class AppColor
echo "" >> "$outputDartFile"
echo "}" >> "$outputDartFile"

echo "Đã tạo xong mã Dart từ tệp XML."
