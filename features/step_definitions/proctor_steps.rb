Given /the following proctors exist/ do |proctors_table|
  proctors_table.hashes.each do |proctor|
    Proctor.create (proctor) #crate table movie 
    # each returned element will be a hash whose key is the table header.
    # you should arrange to add that movie to the database here.
  end
    # flunk "Unimplemented"
end



