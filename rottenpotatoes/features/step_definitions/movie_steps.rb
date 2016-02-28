require 'uri'
require 'cgi'
require File.expand_path(File.join(File.dirname(__FILE__), "..", "support", "paths"))
require File.expand_path(File.join(File.dirname(__FILE__), "..", "support", "selectors"))

Then /^the director of "(.*)" should be "(.*)"$/ do |title, director|
  expect(page).to have_content title
  expect(page).to have_content "Director: #{director}"
end

Given(/^the following movies exist:$/) do |table|
  movs = table.hashes
  movs.each do |mov|
    Movie.create(mov)
  end
end