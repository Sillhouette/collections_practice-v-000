def sort_array_asc(array)
  return array.sort;
end

def sort_array_desc(array)
  return array.sort {|a, b| b <=> a};
end

def sort_array_char_count(array)
  return array.sort {|a, b| a.length <=> b.length};
end

def swap_elements(array)
  third_element = array[2];
  array[2] = array[1];
  array[1] = third_element;
  return array;
end

def swap_elements_from_to(array, index, destination_index)
  x_element = array[destination_index];
  array[destination_index] = array[index];
  array[index] = x_element;
  return array;
end

puts swap_elements_from_to(["a", "b", "c"],0,2); #=> ["c", "b", "a"]
puts "\n";
puts swap_elements_from_to(["a", "b", "c"],2,1); #=> ["a", "c", "b"]

def reverse_array(array)
  return array.reverse;
end

def kesha_maker(array)
  return array.each { |element| element[2] = "$" };
end

def find_a(array)
  return array.select {|element| element[0] == "a"};
end

def sum_array(array)
  total = 0;
  array.each {|element| total += element};
  return total;
end

def add_s(array)
  return array.each_with_index.collect { | element, index | index != 1 ? "#{element}s" : element};
end
