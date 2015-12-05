# Add a declarative step here for populating the DB with movies.

When /I enter the following login credentials: (.*)/ do |list|
  list.split(', ')
  fill_in('email_textbox', :with => list[0])
  fill_in('password_textbox', :with => list[1])
end

When /I enter the following signup details: (.*)/ do |list|
  list.split(', ')
  fill_in('firstname_textbox', :with => list[0])
  fill_in('lastname_textbox', :with => list[1])
  fill_in('contact_textbox', :with => list[2])
  fill_in('email_textbox', :with => list[3])
  fill_in('password_textbox', :with => list[4])
  fill_in('password_confirm_textbox', :with => list[5])
end