# Input follows the following form:
# metric: "problem1", "problem2"
#
# metric is one of:
# "same as" "different from" "more important than" "more immediate"
from sys import argv,exit
from collections import defaultdict

def build_weights(problems, key):
    for name in problems:
        attribute = problems[name][key]
        beat = attribute['beat']
        beaten = attribute['beaten']
        if beat is not 0 or beaten is not 0:
            attribute['weight'] = float(beat)/(beat + beaten)
        else:
            attribute['weight'] = 0.0
    return

if len(argv) <= 1:
    print "Please provide the input file name."
    exit()
else:
    try:
        f = open(argv[1],'r')
    except:
        print "Please enter a valid filename."
        exit()
    
    problems = defaultdict(lambda: {'count':0, 
        'importance':{'beat':0,'beaten':0}, 
        'immediacy':{'beat':0, 'beaten':0},
        'similar':defaultdict(lambda: 0)})
    # Setup
    for line in f:
        inp = line.strip()
        comp_type, pair = inp.split(': ')
        a,b = pair.split(', ')
        problems[a]['count'] += 1
        problems[b]['count'] += 1
        if comp_type is not 'similar':
            problems[a][comp_type]['beat'] += 1
            problems[b][comp_type]['beaten'] += 1
        else:
            problems[a][comp_type][b] += 1
            problems[b][comp_type][a] += 1
    # Calculation
    build_weights(problems,'importance')
    build_weights(problems,'immediacy')
    # Output Visualization
    for name in problems:
        problem = problems[name]
        print "[", name, ", new Date(2012, 1, 1), ",problem['immediacy']['weight'], ", ", problem['importance']['weight'],", 'East']"
