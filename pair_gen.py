from random import randint


def randpairs(probs):
    """
    Takes a list of problems and returns a list of random (non-duplicate) pairs
    """
    maxidx = len(probs) - 1
    randidxs = []
    for i in range(len(probs)):
        randidx = randint(1, maxidx)
        if randidx <= i:
            randidx -= 1
        randidxs.append((i, randidx))
    return [(probs[pair[0]], probs[pair[1]]) for pair in randidxs]

ROUNDS = 3

with open("problems.txt") as f:
    probs = [problem.strip() for problem in f]

with open("problem_types.txt") as f:
    prob_types = [prob_type.strip() for prob_type in f]

pairs = []
for i in range(ROUNDS):
    newpairs = randpairs(probs)
    for pair in newpairs:
        pairs.append(pair)

with open("problem_pairs.txt", 'w') as f:
    for pair in pairs:
        f.write(prob_types[randint(0, len(prob_types) - 1)] +
                '\n A: ' + pair[0] + '\n B: ' + pair[1] + '\n\n')
