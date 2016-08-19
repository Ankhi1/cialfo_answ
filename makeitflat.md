

def make_flat(array)

     array.each_with_object([]) do |element, flattened|
    flattened.push *(element.is_a?(Array) ? flattify(element) : element)
    
  end
end

puts make_flat([1, 2, 3, [4, 6, [7, 8]], 5, 9, 10])
