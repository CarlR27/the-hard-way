def increasing_numbers(increment, finish)

  i = 0
  numbers = []

  while i < finish
    puts "At the top i is #{i}"
    numbers.push(i)

    i += increment
    puts "Numbers now: ", numbers
    puts "At the bottom i is #{i}"
  end

  puts "the numbers: "

  # remember you can write this 2 other ways?
  numbers.each {|num| puts num }

end

increasing_numbers(10, 100)
