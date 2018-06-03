def sort_array_asc(array)
  return array.sort;
end

def sort_array_desc(array)
  return array.sort {|a, b| b <=> a}
end

def sort_array_char_count(array)
  return array.sort {|a.length, b.length| a > b}
end
