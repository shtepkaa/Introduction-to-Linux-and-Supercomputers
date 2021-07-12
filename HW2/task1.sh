# !/ bin / bash
echo "even numbers in interval from 100 to 1000:"
for i in {100..1000}; do
	if [ $((i%2)) -eq 0 ]; then
		echo $i
	fi
done
