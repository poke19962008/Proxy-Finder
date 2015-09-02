#AUTHOR: poke19962008

rm -f log.txt	#Remove Previous Log File
fin="0"

for i in {0..100}
do
	prxy="172.16.0.$i:8080"
	echo "Connecting: $prxy"
	curl --proxy $prxy --max-time 3 --silent 74.125.224.72 --output "log.txt"
	
	if [[ -s log.txt ]]
	then
		echo "STATUS: Success"   #Received Data
		fin="$prxy"
		break
	else
		echo "STATUS: Failed\n"  #Not Received Data
	fi
done

echo "---------------------------------------------------------------"

if [[ $fin != "0" ]]
then
	echo "Open Proxy Server: "$fin
else
	echo "Sorry no proxy server is open."
fi
