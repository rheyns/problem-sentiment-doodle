# Input follows the following form:
# metric: "problem1", "problem2"
#
# metric is one of:
# "same as" "different from" "more important than" "more immediate"
from sys import argv,exit

if len(argv) <= 1:
    print "Please provide the input file name."
    exit()
else:
    try:
        f = open(argv[1],'r')
    except:
        print "Please enter a valid filename."
        exit()
    
    for line in f:
        inp = line.strip()
