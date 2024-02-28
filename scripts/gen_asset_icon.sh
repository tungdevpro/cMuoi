#!/bin/bash

type=$1
className=""
op=""
idir=""

if [ "$type" == "image" ]; 
then
    className="ImageResource"
    op="image_resource"
    idir="images"
else
    className="IconResource"
    op="icon_resource"
    idir="icons"
fi

# Đường dẫn tới thư mục chứa các icon SVG
iconsDir="assets/$idir/"

# Tạo tệp output Dart
outputFile="lib/common/constants/$op.dart"

echo ">>> " "$outputFile"

# Xóa tệp output cũ nếu có
if [ -f "$outputFile" ]; then
  rm "$outputFile"
fi

# Viết phần khởi tạo của tệp Dart
echo "abstract class $className {" >> "$outputFile"
echo "  const $className._();" >> "$outputFile"
echo "" >> "$outputFile"

# Lặp qua các file trong thư mục icon|image
if [ "$type" == "image" ]; 
then
    for imageFile in "$iconsDir"*.png; do
        echo "f... $imageFile"
        # Lấy tên file mà không có đường dẫn
        imageName=$(basename "$imageFile")
    
        # Loại bỏ phần mở rộng của file
        imageBaseName="${imageName%.*}"

        # Chuyển đổi tên thành dạng UpperCamelCase
        imageConstantName=$(echo "$imageBaseName" | sed -e 's/_\([a-z]\)/\U\1/g' -e 's/-\([a-z]\)/\U\1/g' -e 's/^./\L&/' -e 's/-//g')
    
        # Tạo hằng số
        echo "  static const String $imageConstantName = '$iconsDir$imageName';" >> "$outputFile"
    done
else
    for svgFile in "$iconsDir"*.svg; do
        echo "svgFile... $svgFile"
        # Lấy tên file mà không có đường dẫn
        iconFileName=$(basename "$svgFile")
        
        # Loại bỏ phần mở rộng .svg
        iconName="${iconFileName%.*}"

        # Chuyển đổi tên thành dạng camelCase
        iconNameCamelCase=$(echo "$iconName" | sed -e 's/_\([a-z]\)/\U\1/g' -e 's/-\([a-z]\)/\U\1/g' -e 's/^./\L&/' -e 's/-//g')
        
        # Tạo hằng số
        echo "  static const String $iconNameCamelCase = '$svgFile';" >> "$outputFile"
    done
fi



# Đóng class IconResource
echo "" >> "$outputFile"
echo "}" >> "$outputFile"

echo "Đã tạo xong các hằng số trong Dart từ danh sách file icon $className."
