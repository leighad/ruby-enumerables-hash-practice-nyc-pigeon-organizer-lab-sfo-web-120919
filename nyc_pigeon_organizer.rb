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
  
  # pigeon_names.each do | name |
  #   # for each of the names in pigeon_names array, 
  #   # sets pigeon_list hash key to name with value to zero
  #   pigeon_list[name] = {:color => "", :gender => "", :lives => ""}
  # end
  # p pigeon_list
  # {"Theo"=>{:color=>"", :gender=>"", :lives=>""},
  
  pigeon_list
  
  pigeon_names.each do |pigeon|
    pigeon_list[pigeon] = Hash.new {|k, v| k[v] = []}
    data.each do |attribute, items|
      pigeon_list[pigeon][attribute]
      items.each do |feature, arr|
        arr.each do |name|
          pigeon_list[name][attribute] << feature.to_s if name == pigeon
        end
      end
    end
  end
  
  pigeon_list

end

  # data.each do | trait, property |
  #   property.each do | attribute, array |
  #     array.each do | name |
  #       pigeon_names << name if !pigeon_names.include?(name)
  #     end
  #   end
  # end





