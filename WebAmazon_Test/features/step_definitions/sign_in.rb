require 'selenium-webdriver'
require 'rubygems'
require 'rspec'

driver = Selenium::WebDriver.for:chrome

  Given("open the website") do
    driver.navigate.to "https://www.amazon.com/"
    sleep(2)
  end

  And("user open form sign in") do
    driver.find_element(:xpath,'//*[@id="nav-link-accountList"]/span[1]').click
  end

  When("user enter invalid email or phone or mobile accounts") do
    driver.find_element(:xpath,'//*[@id="ap_email"]').send_keys 'titinarios'
  end
  
  Then("user should continue login") do
    driver.find_element(:id,'continue').click
  end
  
  Given("open the website1") do
    driver.navigate.to "https://www.amazon.com/"
    sleep(2)
  end

  And("user open form sign in1") do
    driver.find_element(:xpath,'//*[@id="nav-link-accountList"]/span[1]').click
  end

  When("user enter valid email or phone or mobile accounts") do
    driver.find_element(:xpath,'//*[@id="ap_email"]').send_keys 'titinarios@yopmail.com'
  end
  
  Then("user should continue login1") do
    driver.find_element(:id,'continue').click
  end
  