sequence = [4, 3, 5, 0, 1]
swaps = 0

# Your Code Here
# start at beginning
#if first num and second num don't swap, incremement and try next
#if swap, return to beginning

i = 0

while i < 5
if sequence[i] < sequence[i+1]
  i +=1
  puts sequence
elsif sequence[i] > sequence[i+1]
  a=sequence[i]
  b=sequence[i+1]
  sequence[i] = b
  sequence[i+1] =a
  i = 0
  puts sequence
end
end

puts "Final result: #{result}"
puts "Swaps: #{swaps}"
