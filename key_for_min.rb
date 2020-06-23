# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value

def key_for_min_value(name_hash)

   store = []
   name_hash.each do |key, value|
     store << value
   end


   temp = 0

   if store.empty?
    nil
   end

   store.each do

     swap_count =0

   store.each_with_index  do |value, index|

    break if index == (store.length-1)

     if  store[index]>store[index+1]
       temp  = store[index]
       store[index] = store[index+1]
       store[index+1] = temp
       swap_count += 1
     end

   end
   break if swap_count == 0
 end

   return name_hash.key(store[0])




end
