# Release 0

arr = [1, 2, 3, 4, 5]

def search_array(arr, search)
  x = 0
  index_output = nil
  arr.each{
    |number|
    if search == number
      index_output = x
    end
    x += 1
  }
  return index_output
end

p search_array(arr, 3)


# Release 1

def fibonacci_generator(number)
  fibonacci_numbers = [0, 1]
  until fibonacci_numbers.length == number
    fibonacci_numbers << fibonacci_numbers[-1] + fibonacci_numbers[-2]
  end
  return fibonacci_numbers[-1]
end

p fibonacci_generator(100)

p fibonacci_generator(100) == 218922995834555169026


# Release 2

def insertion_sort(fruit)
  for apple in 1... (fruit.length)
    new_fruit = apple
    while new_fruit > 0
      if fruit[new_fruit-1]>fruit[new_fruit]
        banana = fruit[new_fruit]
        fruit[new_fruit] = fruit[new_fruit-1]
        fruit[new_fruit-1] = banana
      else
        break
      end
      new_fruit = new_fruit-1
    end
  end
  return fruit
end

p insertion_sort("orange")



# Pseudocode

# Come up with an unsorted array
# Loop  until the array is sorted
# lowest to highest
# Run until the number of not_swapped = arr.length-1

number_array = [65, 34, 99, 23, 10]

def number_sort(number_array)
  not_swapped = 0
  until not_swapped == number_array.length-1
    x = 0
    not_swapped = 0
    until x == number_array.length-1
      if number_array[x] > number_array[x+1]
        highest = number_array[x]
        lowest = number_array[x+1]
        number_array[x] = lowest
        number_array[x+1] = highest
      else
        not_swapped += 1
      end
      x += 1
    end
  end
  return number_array
end

p number_sort(number_array)

#complete with Jone Saukitoga - definitely a tough assignment..understanding this alorithm made my head hurt :) and I thought we had done it completely
#wrong but when we tested it everything worked just fine!








