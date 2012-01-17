
Given /^there is a user named "([^"]*)"$/ do |username|
  Factory(:user, :name => username)
end
