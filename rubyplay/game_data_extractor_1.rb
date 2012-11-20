#!/usr/bin/env ruby

# Question Type
# One or More Problems being discussed (1-3)
# The answer to the question
# 
# Similarity Button: (if so, which is the better problem statement?)

# Section 1: Problem Comparison Questions 
# 1 - Which is more important to you?
# 2 - Which is more of immediate concern to you?
# 3 - Which of these do you believe is a more complex problem?
# 4 - Which of these do you believe will cost more to address?
#
# Section 2:  Issue Data Verification
# 7 - Does this (A) cause (B)?
# 8 - Is (A) and effect of (B)
# 9 - Which of these two causes has a greater affect on Problem (A)?
# 10 - Which of these is a more significant effect of Problem (A)?
#
# Section 3: Matching elements from different submitted issues
# 13 - Does one of these elements affect the other? (<-, ->, No)
# 14 - Is this a problem?
# 
# UserID = int[0:X]
# QuestionFlavor = int[0:15]
# Response = int[0:3]
# Same = int[0:1]
# Skip = int[0:1]
# Prob_A = int[0:X]
# Prob_B = int[0:X]
# Prob_C = int[0:X]
#
# [UserID, QuestionFlavor, Response, Same, Skip, Prob_A, Prob_B, Prob_C]

# First Run through
# Only Q's 1-4
# No Same
# No Skip
# No Prob C (putting rand in there now - can likely take out and reduce)

puts "This is a test"

class GameData
    def intialize(gamdata)
        @gamdata = gamdata;
    end
    def show_data
      @gamdata = { '1'=>[1,1,0,0,0,4,7,0],
        '2'=>[1,2,1,0,0,6,2,0],
        '3'=>[1,3,1,0,0,3,8,0],
        '4'=>[1,4,1,0,0,1,4,0],
        '5'=>[1,2,0,0,0,5,9,0],
        '6'=>[1,1,1,0,0,8,4,0],
        '7'=>[1,3,0,0,0,3,6,0],
        '8'=>[2,4,1,0,0,3,7,0],
        '9'=>[2,3,0,0,0,4,1,0],
        '10'=>[2,2,1,0,0,5,2,0],
        '11'=>[3,1,1,0,0,9,6,0],
        '12'=>[3,2,0,0,0,4,3,0],
        '13'=>[3,4,0,0,0,1,8,0],
        '14'=>[3,3,0,0,0,6,5,0],
        '15'=>[3,4,1,0,0,7,1,0],
        '16'=>[3,1,0,0,0,2,3,0],
        '17'=>[3,2,0,0,0,1,4,0],
        '18'=>[3,3,1,0,0,8,7,0],
        '19'=>[3,1,1,0,0,5,3,0],
        '20'=>[3,2,0,0,0,2,9,0],
        '21'=>[3,1,1,0,0,6,4,0],
        '22'=>[3,4,1,0,0,7,1,0],
        '23'=>[4,4,1,0,0,1,2,0],
        '24'=>[4,1,0,0,0,3,4,0],
        '25'=>[4,2,0,0,0,5,6,0],
        '26'=>[4,3,1,0,0,9,7,0],
        '27'=>[4,4,1,0,0,8,1,0],
        '28'=>[4,1,1,0,0,2,3,0],
        '29'=>[5,1,1,0,0,4,5,0],
        '30'=>[5,4,1,0,0,6,7,0],
        '31'=>[5,3,0,0,0,8,9,0],
        '32'=>[5,2,0,0,0,1,3,0],
        '33'=>[5,1,1,0,0,2,4,0],
        '34'=>[5,3,0,0,0,5,7,0],
        '35'=>[5,2,1,0,0,6,8,0],
        '36'=>[5,1,0,0,0,9,2,0],
        '37'=>[5,4,1,0,0,1,4,0],
        '38'=>[5,3,0,0,0,2,5,0],
        '39'=>[5,2,0,0,0,3,6,0],
        '40'=>[5,1,1,0,0,7,9,0] };
    end
end
      

# Code to read a file, I guess ...
#
# example text file contents:
#
# J.S. Bach, Baroque, 0
# Brahms, Romantic, 4
# Haydn, Classical, 104
# Prokofiev, 20th Century, 7
# Schubert, Romantic, 9
# Sibelius, 20th Century, 7
# Vaughan Williams, 20th Century, 9
# 1        # declare empty array reference to store our records
# 2        my $composers = [];
# 3
# 4        # parse the file and create array of hashes
# 5        while (<IN>)
# 6        {
# 7            my ($name, $period, $num) = split(/,\s*/, $_);
# 8
# 9            # push anonymous hash reference onto the array reference
# 10            push(@{$composers}, { name => $name, period => $period, num => $num });
# 11        }
#
 
 


    
     



#
#        [1,1,0,0,0,rand(10),rand(10),rand(10)]
#        [1,2,1,0,0,rand(10),rand(10),rand(10)]
#        [1,3,1,0,0,rand(10),rand(10),rand(10)]
#        [1,4,1,0,0,rand(10),rand(10),rand(10)]
#        [1,2,0,0,0,rand(10),rand(10),rand(10)]
#        [1,1,1,0,0,rand(10),rand(10),rand(10)]
#        [1,3,0,0,0,rand(10),rand(10),rand(10)]
#        [2,4,1,0,0,rand(10),rand(10),rand(10)]
#        [2,3,0,0,0,rand(10),rand(10),rand(10)]
#        [2,2,1,0,0,rand(10),rand(10),rand(10)]
#        [3,1,1,0,0,rand(10),rand(10),rand(10)]
#        [3,2,0,0,0,rand(10),rand(10),rand(10)]
#        [3,4,0,0,0,rand(10),rand(10),rand(10)]
#        [3,3,0,0,0,rand(10),rand(10),rand(10)]
#        [3,4,1,0,0,rand(10),rand(10),rand(10)]
#        [3,1,0,0,0,rand(10),rand(10),rand(10)]
#        [3,2,0,0,0,rand(10),rand(10),rand(10)]
#        [3,3,1,0,0,rand(10),rand(10),rand(10)]
#        [3,1,1,0,0,rand(10),rand(10),rand(10)]
#        [3,2,0,0,0,rand(10),rand(10),rand(10)]
#        [3,1,1,0,0,rand(10),rand(10),rand(10)]
#        [3,4,1,0,0,rand(10),rand(10),rand(10)]
#        [4,4,1,0,0,rand(10),rand(10),rand(10)]
#        [4,1,0,0,0,rand(10),rand(10),rand(10)]
#        [4,2,0,0,0,rand(10),rand(10),rand(10)]
#        [4,3,1,0,0,rand(10),rand(10),rand(10)]
#        [4,4,1,0,0,rand(10),rand(10),rand(10)]
#        [4,1,1,0,0,rand(10),rand(10),rand(10)]
#        [5,1,1,0,0,rand(10),rand(10),rand(10)]
#        [5,4,1,0,0,rand(10),rand(10),rand(10)]
#        [5,3,0,0,0,rand(10),rand(10),rand(10)]
#        [5,2,0,0,0,rand(10),rand(10),rand(10)]
#        [5,1,1,0,0,rand(10),rand(10),rand(10)]
#        [5,3,0,0,0,rand(10),rand(10),rand(10)]
#        [5,2,1,0,0,rand(10),rand(10),rand(10)]
#        [5,1,0,0,0,rand(10),rand(10),rand(10)]
#        [5,4,1,0,0,rand(10),rand(10),rand(10)]
#        [5,3,0,0,0,rand(10),rand(10),rand(10)]
#        [5,2,0,0,0,rand(10),rand(10),rand(10)]
#        [5,1,1,0,0,rand(10),rand(10),rand(10)]
