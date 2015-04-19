Given /the following proctors exist/ do |proctors_table|
  proctors_table.hashes.each do |proctor|
    Proctor.create (proctor) #crate table movie 
    # each returned element will be a hash whose key is the table header.
    # you should arrange to add that movie to the database here.
  end
    # flunk "Unimplemented"
end

Then /I should see "(.*)" before "(.*)"/ do |e1, e2|
  #  ensure that that e1 occurs before e2.
  #  page.body is the entire content of the page as a string.
  body = page.html
  assert body.index(e1) < body.index(e2)
end
When /^I confirm popup$/ do
  page.evaluate_script('window.confirm = function() { return true; }')
end