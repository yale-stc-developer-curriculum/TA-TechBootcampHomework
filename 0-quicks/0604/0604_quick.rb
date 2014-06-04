# Quick Challenges
# Array Functions

# We'll cover a few array functions and ask you to use them to solve some
# problems below. All problems are solvable using these and the basic Ruby
# functions (e.g., type conversion functions, control flow, etc.).

# ------------------------------------------------------------------------------
# ------------------------------------------------------------------------------

# The new array functions:

# 1. select
# 2. delete
# 3. zip

# ------------------------------------------------------------------------------

# select

# select { |item| block } => new_array
# select => Enumerator

# If a block is given, return all array items that make the block return true.
# If no block is given, return an enumerator.

# Examples:
# [1,1,1,2,3].select { |item| item == 1 } => [1,1,1]
# (1..10).to_a.select { |num| num.even? } => [2,4,6,8,10]
# ['h','e','l','l','o'].select { |char| "aeiou".include?(char) } => ['e','o']

# ------------------------------------------------------------------------------

# delete

# delete(obj) => item or nil
# delete(obj) { block } => item or result of block

# If just an object is given, delete all items equal to obj in the array and
# return obj if at least one item was deleted. If the array wasn't changed,
# return nil.
# If an object and a block are given, same as before, except return the return
# value of the block if the array wasn't changed.


# Examples:
# [1,1,1,2,3].delete(1) => [2,3]
# [1,1,1,2,3].delete(1) { "nothing happened lol" } => [2,3]
# [1,1,1,2,3].delete(400) { "nothing happened lol" } => "nothing happened lol"

# ------------------------------------------------------------------------------

# zip

# zip(arg1,...) => new_array
# zip(arg1,...) { |arr| block } => nil

# If just arguments are given, convert them to arrays and return an array
# containing arrays of corresponding items from each array.
# If a block is also given, iterate over each returned subarray and return nil.

# Examples:
# [1,2,3].zip(['a','b','c']) => [[1,'a'],[2,'b'],[3,'c']]
# [1,2,3].zip(['a','b','c'],[:x,:y,:z]) => [[1,'a',:x],[2,'b',:y],[3,'c',:z]]

# ------------------------------------------------------------------------------
# ------------------------------------------------------------------------------


# Challenge 1

# Write a function cutoff(arr,num) that takes an array of numbers arr and a
# number num and returns the array of numbers in arr that are less than or equal
# to num.

# Examples:
# cutoff([1,2,3,4,5],3) => [1,2,3]
# cutoff([1,2,3],10) => [1,2,3]
# cutoff([4,7,3,8,1],-1) => []
# cutoff([],1) => []


def cutoff(arr,num)
end


# ------------------------------------------------------------------------------


# Challenge 2

# Write a function pair_sum(arr1,arr2) for two arrays of numbers arr1 and arr2
# that finds the sum of arr1[n] and arr2[n] for all n and returns an array of
# these sums in order. Assume that arr1 and arr2 have the same length.

# Examples:
# pair_sum([1,2,3],[9,8,7]) => [10,10,10]
# pair_sum([5,3,7],[1,7,2]) => [6,10,9]
# pair_sum([2],[98]) => [100]
# pair_sum([],[]) => []


def pair_sum(arr1,arr2)
end


# ------------------------------------------------------------------------------


# Extra Challenge

# Write a function rm_freq(str) that deletes the most frequent character from
# the given string str and returns the new string. If there's a tie for most
# frequent character, return the one that first occurs in the string.

# Examples:
# rm_freq("hello") => "heo"
# rm_freq("elements") => "lmnts"
# rm_freq("pencil") => "encil"
# rm_freq("") => ""


def rm_freq(str)
end