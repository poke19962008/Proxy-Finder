#!bin/bash
#AUTHOR: poke19962008

rm -f log/*	#Remove Previous Log File
fin=( "0" )

# $1 = 172.16.X._
function frth_pos() {

	for j in {0..101}
	do
		prxy="172.16.$1.$j:8080"
		# echo "Connecting: $prxy"
		curl --proxy $prxy --max-time 1 --silent 74.125.224.72 --output "log/logT$1P$j.txt"

		if [[ -s "log/logT$1P$j.txt" ]]
		then
		  # Data Received
			echo "$prxy : is ON"
			echo "Download Speed(bits/sec) : " 
                        curl --proxy $prxy --max-time 2 --silent -w %{speed_download} 74.125.224.72 | awk '/.[0]{3}/'
			echo " "
		fi
	done

}

for i in {0..101}
do
	frth_pos $i &  # MultiThreaded
done
echo "All 100 Threads Scanning for Open Proxy Server"
wait

echo "Scan Finished..."
