#def partition(array)
  #this method takes an array and breaks it into groups of 2 or 1
#  len = array.size
#  while len > 1
#    part1 = array[1..(len/2).floor]

array = [8, 7, 0, 1, 6, 4, 9, 3, 2, 5]

i = 0
while i < array.size
  if array[i] < array [i+1]
    puts 'hi'
    puts array
    i += 2
  elsif array[i] > array[i+1]
    puts 'whelp'
    a=array[i]
    b=array[i+1]
    array[i]=b
    array[i+1]=a
    i+=2
    puts array
  end
end
