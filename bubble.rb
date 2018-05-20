sequence = [4, 3, 5, 0, 1]
swaps = 0

# Your Code Here
# start at beginning
#if first num and second num don't swap, incremement and try next
#if swap, return to beginning

i = 0

while i < 4
if sequence[i] < sequence[i+1]
  i +=1
  puts sequence
elsif sequence[i] > sequence[i+1]
  a=sequence[i]
  b=sequence[i+1]
  sequence[i] = b
  sequence[i+1] =a
  i = 0
  swaps += 1
  puts sequence
end
end

result = sequence

puts "Final result: #{result}"
puts "Swaps: #{swaps}"
