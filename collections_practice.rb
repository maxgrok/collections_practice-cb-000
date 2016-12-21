require 'pry'

def sort_array_asc(array)
  array.sort do |a, b|
    a <=> b
  end
end

def sort_array_desc(array)
  array.sort do |a, b|
    b <=> a
  end
end

def sort_array_char_count(array) #stuck
  array.sort do |wordone, wordtwo|
    wordone.length <=> wordtwo.length
  end
end

def swap_elements(array)
    array[0], array[1], array[2] = array[0], array[2], array[1]
end

def reverse_array(array)
  array.reverse
end

def kesha_maker(array)
  array.each do |word|
    word[2] = "$"
  end
end

def find_a(array) #stuck
  array.select do |word|
    word[0] == "a"
  end

  # using select method
    # array.select do |word|
    #   word[0] == "a"
    # end
end

def sum_array(array)
  array.inject(0) { |sum, x| sum += x }

  # using reduce method
    # array.reduce(:+)

  # using inject method (short)
     # array.inject(:+)

  # using inject method (long)
     # array.inject do |sum,x|
     #  sum + x
     # end
end

def add_s(array)
  i = 0
  word = []
  while i < array.length
    if i == 1
      word.push(array[i])
      i += 1
    elsif i == 0 || i > 1
      array[i] << "s"
      word.push(array[i])
      i += 1
    end
  end
  word
end