
# !/ bin / bash
echo "initialize array of 11 elements and print its elements:"
array=(a b c d e f g h i j k)
for i in "${array[@]}"; do
	echo $i
done

