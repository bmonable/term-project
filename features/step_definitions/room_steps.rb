Given /the following rooms exist/ do |rooms_table|
  rooms_table.hashes.each do |room|
    Room.create (room) #crate table movie 
    # each returned element will be a hash whose key is the table header.
    # you should arrange to add that movie to the database here.
  end
    # flunk "Unimplemented"
end

