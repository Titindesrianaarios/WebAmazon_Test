require 'selenium-webdriver'
require 'rubygems'
require 'rspec'

driver = Selenium::WebDriver.for:chrome

Given("user open the website") do
  driver.navigate.to "https://www.amazon.com/"
end

And("user open form sign up") do
  driver.find_element(:xpath,'//*[@id="nav-link-accountList"]/span[1]').click
  driver.find_element(:id,'createAccountSubmit').click
end

When("user fill in form sign up with invalid data") do
  driver.find_element(:id, 'ap_customer_name').send_keys 'a'
  driver.find_element(:id, 'ap_email').send_keys 'a'
  driver.find_element(:id, 'ap_password').send_keys 'a'
  driver.find_element(:id, 'ap_password_check').send_keys 'a'
end

Then("user should submit data") do
  driver.find_element(:id, 'continue').click
  sleep(2)
end

Given("user open the website1") do
  driver.navigate.to "https://www.amazon.com/"
end

And("user open form sign up1") do
  driver.find_element(:xpath,'//*[@id="nav-link-accountList"]/span[1]').click
  driver.find_element(:id,'createAccountSubmit').click
end

When("user fill in form sign up with valid data") do
  driver.find_element(:id, 'ap_customer_name').send_keys 'titin'
  driver.find_element(:id, 'ap_email').send_keys 'titin@yopmail.com'
  driver.find_element(:id, 'ap_password').send_keys 'titin123'
  driver.find_element(:id, 'ap_password_check').send_keys 'titin123'
end

Then("user should submit data1") do
  driver.find_element(:id, 'continue').click
  sleep(2)
end