# 1: Balanced Sum Problem

# Given an array of integers, find the index where the sum of the elements on the left is equal to the sum of the elements on the right. Return this pivot index. How would you implement this efficiently in Python? 

# Make sure to only add your code to the "# Write your code here" section


#!/bin/python3

import math
import os
import random
import re
import sys

# Complete the 'balancedSum' function below.

# The function is expected to return an INTEGER.
# The function accepts INTEGER_ARRAY arr as parameter.

def balancedSum(arr):
    # Compute the total sum of the array
    total = sum(arr)
    # Keep track of the running sum of elements to the left
    left_sum = 0

    # Iterate through each element
    for i, val in enumerate(arr):
        # Subtract the current element from the total (this is now effectively the sum to the right)
        total -= val

        # Check if the left sum equals the right sum
        if left_sum == total:
            return i
        
        # Add the current element to the left sum before moving on
        left_sum += val


# Reads input, finds the pivot index using balancedSum, and writes output.
if __name__ == '__main__':
    fptr = open(os.environ['OUTPUT_PATH'], 'w')

    arr_count = int(input().strip())

    arr = []

    for _ in range(arr_count):
        arr_item = int(input().strip())
        arr.append(arr_item)

    result = balancedSum(arr)

    fptr.write(str(result) + '\n')

    fptr.close()


#------------------------------------------------------------------------------
# 2. Has Vowels Problem:

# Given an array of strings and a set of queries in the form of index ranges, write a function that determines how many strings in each range both start and end with a vowel. How would you implement this using efficient range-sum techniques? 

# Make sure to only add your code to the "# Write your code here" section


#!/bin/python3

import math
import os
import random
import re
import sys

# Complete the hasVowels function below.
def hasVowels(strArr, query):
    # Write your code here
    vowels = set("aeiou")
    n = len(strArr)
    
    # Step 1: Determine if each string starts and ends with a vowel
    is_vowel = [0]*n
    for i, s in enumerate(strArr):
        if s[0] in vowels and s[-1] in vowels:
            is_vowel[i] = 1
    
    # Step 2: Create a prefix sum array
    prefix_sum = [0]*(n+1)
    for i in range(1, n+1):
        prefix_sum[i] = prefix_sum[i-1] + is_vowel[i-1]
    
    # Step 3: For each query l-r, return prefix_sum[r] - prefix_sum[l-1]
    result = []
    for q in query:
        l, r = map(int, q.split('-'))
        result.append(prefix_sum[r] - prefix_sum[l-1])
    
    return result


# Reads input, calls hasVowels for processing, and writes the result to OUTPUT_PATH.
if __name__ == '__main__':
    fptr = open(os.environ['OUTPUT_PATH'], 'w')

    strArr_count = int(input().strip())
    strArr = []

    for _ in range(strArr_count):
        strArr_item = input()
        strArr.append(strArr_item)

    query_count = int(input().strip())
    query = []

    for _ in range(query_count):
        query_item = input()
        query.append(query_item)

    res = hasVowels(strArr, query)

    fptr.write('\n'.join(map(str, res)))
    fptr.write('\n')
    fptr.close()

