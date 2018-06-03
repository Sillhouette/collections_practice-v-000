##
# => #sort_array_asc sorts the array in ascending order
##
def sort_array_asc(array)
  return array.sort;
end

##
# => #sort_array_desc sorts the array in decending order
##
def sort_array_desc(array)
  return array.sort {|a, b| b <=> a};
end

##
# => #sort_array_char_count sorts the array according to the number of characters from largest to smallest
##
def sort_array_char_count(array)
  return array.sort {|a, b| a.length <=> b.length};
end

##
# => #swap_elements swaps the second and third elements in the array
##
def swap_elements(array)
  third_element = array[2];
  array[2] = array[1];
  array[1] = third_element;
  return array;
end

##
# => #swap_elements_from_to swaps the element at index with the element at destination_index
##
def swap_elements_from_to(array, index, destination_index)
  x_element = array[destination_index];
  array[destination_index] = array[index];
  array[index] = x_element;
  return array;
end

# personal tests for swap_elements_from_to due to the lack of tests provided
puts swap_elements_from_to(["a", "b", "c"],0,2); #=> ["c", "b", "a"]
puts "\n";
puts swap_elements_from_to(["a", "b", "c"],2,1); #=> ["a", "c", "b"]

##
# => #reverse_array reverses the order of the elements in the array
##
def reverse_array(array)
  return array.reverse;
end

##
# => #kesha_maker swaps the third element in the array with "$"
##
def kesha_maker(array)
  return array.each { |element| element[2] = "$" };
end

##
# => #find_a returns the first word that starts with "a"
##
def find_a(array)
  return array.select {|element| element[0] == "a"};
end

##
# => #sum_array adds all of the elements in the array and returns the total
##
def sum_array(array)
  total = 0;
  array.each {|element| total += element};
  return total;
end

##
# => #add_s adds "s" to the end of each element except for the second element due to the fact that "feet" is already plural
##
def add_s(array)
  return array.each_with_index.collect { | element, index | index != 1 ? "#{element}s" : element};
end
