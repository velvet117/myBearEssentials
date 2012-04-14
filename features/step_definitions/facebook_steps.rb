When /^I am logged in with Facebook$/ do
  visit '/auth/facebook'
end

When /^I logout of BearEssentials$/ do
  visit signout_path
end
