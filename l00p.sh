filename=$1
address=$2
maxCount=$3



if [ -f "${filename}" ]; then
	echo "continue."
else
	echo "generate file."
	touch ${filename}
fi




# your block

# run something
param=$(pwd)

# get 1 line & note it to file. 
echo ${param} >> ${filename}





# count record-line num.
countbase=$(wc -l ${filename})

# trim filename with space.
count=${countbase% *}

if [ ${count} -lt ${maxCount} ]; then
	# run next soon. add Token if need.
	curl -X POST ${address}
else
	echo "over,"
	# endpoint
fi
