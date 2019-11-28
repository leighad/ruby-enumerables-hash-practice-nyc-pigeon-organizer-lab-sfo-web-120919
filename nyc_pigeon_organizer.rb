def nyc_pigeon_organizer(data)
  # write your code here!
  pigeon_list = {}
  pigeon_names = []
  
  data.each do | trait, property |
    # iterate over data set which contains traits with properties
    property.each do | attribute, array |
      # iterate over property which contains attribute and array
      array.each do | name |
        # iterate over the array, taking each name and checking to see if already 
        # included in pigeon_names, if not then shovels into the pigeon_names array
        pigeon_names << name if !pigeon_names.include?(name)
      end
    end
  end
  
  pigeon_names.each do | name |
    # for each of the names in pigeon_names array, 
    # sets pigeon_list hash key to name with value to zero
    pigeon_list[name] = 0
  end
    
  # data.each do | trait, property |
  #   property.each do | attribute, array |
  #     array.each do | name |
  #       pigeon_names << name if !pigeon_names.include?(name)
  #     end
  #   end
  # end
  
  pigeon_list
end



# def directors_totals(nds)
#   result = {
#     # :director => total
#   }

#   # loop through each directors_database[:name] 
#   i = 0 
#   while i < directors_database.length do 
    
#     source_array = directors_database[i][:movies]
#     director = directors_database[i][:name]
    
#     result[director] = 0 
#     puts result

# # iterate through movies array to grab value of :worldwide_gross key, sum up values
   
#     total = 0 
#     j = 0 
#     while j < source_array.length do
#       total += source_array[j][:worldwide_gross]
#       j += 1 
#     end
    
#     puts total
#     result[director] = total
    
#     i += 1
#     end
  
# # return hash of { :name => total }

# return result
# end  