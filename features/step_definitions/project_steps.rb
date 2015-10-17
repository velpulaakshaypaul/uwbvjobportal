# Add a declarative step here for populating the DB with movies.

When /I enter the following login credentials: (.*)/ do |list|
  list.split(', ')
  fill_in('user_email', :with => list[0])
  fill_in('user_password', :with => list[1])
end

When /I enter the following signup details: (.*)/ do |list|
  list.split(', ')
  fill_in('user_firstname', :with => list[0])
  fill_in('user_lastname', :with => list[1])
  fill_in('user_contact', :with => list[2])
  fill_in('user_email', :with => list[3])
  fill_in('user_password', :with => list[4])
  fill_in('user_password_confirmation', :with => list[5])
end

