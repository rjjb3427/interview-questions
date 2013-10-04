# October 3, 2013 — AngelList
#
# The problem was to find the shortest sum going to the bottom of the tree. You can only move
# right or left when going down the tree.
#
# I chose to just collect all of the possible paths using recursion and then loop through
# until I got the answer. Not the most effective, but hey.
#
# I think this is O(2^n) since 2^n are the possible number of paths in the tree. Since the
# tree could contain negative numbers, the best you could do is O(n). My first thought for a
# performance improvement was to cache the sums of the tree in a half size sum tree, but that
# would still be the same number of recursions and iterations, just less summing.
#
# Overall, I think this problem is stupid. Doing tree traversal, is something I never do in
# practice. Ever. I'm sure watching me try to figure out the recursion (not something I do
# often either, although a practical skill to have) was pretty entertaining.
#
# I think I took about 20 minutes to solve it.

input = <<-INPUT
1
1 2
1 2 3
1 2 3 4
INPUT

# input = <<-INPUT
# 61
# 83 8
# 90 87 15
# 96 69 1  37
# 98 37 78 77 25
# INPUT

# Parse into array of arrays
lines = input.split("\n")
lines.map! do |line|
  line.split(/\s+/).collect(&:to_i)
end

def value_for_path(lines, path)
  value = 0
  path.each_with_index do |index, i|
    value += lines[i][index]
  end
  value
end

# Returns new paths
# Assume we never get the last line
def next_path(paths)
  new_paths = []
  paths.each do |path|
    last = path.last
    new_paths << [*path, last]
    new_paths << [*path, last + 1]
  end
  new_paths
end

paths = [[0]]
until paths.last.length == lines.length
  paths = next_path(paths)
end

puts paths.length

smallest_sum = nil
smallest_path = nil
paths.each do |path|
  sum = value_for_path(lines, path)
  smallest_sum = sum if !smallest_sum || sum < smallest_sum
  smallest_path = path
end

puts "Smallest sum: #{smallest_sum}"
puts "Path: #{smallest_path.inspect}"
