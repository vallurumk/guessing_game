echo "[Welcome to guessing game]"

function ask {
	echo "Please enter the number of files in the current directory:"
	read think
    files=$(ls -1 | wc -l)
}

ask

while [[ $think -ne $files ]]
do
	if [[ $think -lt $files ]] 
	then
		echo "Low, please try again with higher value."
	else
		echo "High, please try again with lower value."
	fi
	ask
done
echo "you are a genius!"