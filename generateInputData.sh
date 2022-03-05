#                             Online Bash Shell.
#                 Code, Compile, Run and Debug Bash script online.
# Write your code in this editor and press "Run" button to execute it.


#                             Online Bash Shell.
#                 Code, Compile, Run and Debug Bash script online.
# Write your code in this editor and press "Run" button to execute it.


#!/bin/bash
if [[ $# -eq 0 ]] ; then
    echo 'You should specify output file!'
    exit 1
fi
# NodeCPU
METRIC_IDS=("1"
           "2"
           "3")

# prefix doesn't mean something - it can be repetable
PREFIX="Node"

# postfix
POSTFIXES=("CPU"
         "RAM")

rm -rf input
mkdir input

printf -v TIMESTAMP '%(%s)T\n' -1
#                             Online Bash Shell.
#                 Code, Compile, Run and Debug Bash script online.
# Write your code in this editor and press "Run" button to execute it.


#                             Online Bash Shell.
#                 Code, Compile, Run and Debug Bash script online.
# Write your code in this editor and press "Run" button to execute it.


#!/bin/bash
if [[ $# -eq 0 ]] ; then
    echo 'You should specify output file!'
    exit 1
fi

rm -rf input
mkdir input

printf -v TIMESTAMP '%(%s)T\n' -1

for i in {1..200}
	do 
	    TIMESTAMP=$((TIMESTAMP+2))
	    VALUE=$((RANDOM % 100))
	    METRIC_ID=$((RANDOM % 3 + 1))
		RESULT="$METRIC_ID, $TIMESTAMP, $VALUE"
		echo $RESULT >> input/$1.1
	done

for i in {1..50}
	do
	    TIMESTAMP=$((TIMESTAMP+2))
	    VALUE=$((RANDOM % 100))
	    METRIC_ID=$((RANDOM % 3 + 1))
		RESULT="$METRIC_ID, $TIMESTAMP, $VALUE"
		echo $RESULT >> input/$1.2
	done

for i in {1..50}
	do
	    TIMESTAMP=$((TIMESTAMP+2))
	    VALUE=$((RANDOM % 100))
	    METRIC_ID=$((RANDOM % 3 + 1))
		RESULT="$METRIC_ID, $TIMESTAMP, $VALUE"
		echo $RESULT >> input/$1.3
	done

