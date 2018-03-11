require 'rspec'
require 'capybara/cucumber'
require 'capybara'
require 'selenium-webdriver'

Capybara.configure do |config|
  config.default_driver = :selenium
end
Capybara.default_max_wait_time = 20