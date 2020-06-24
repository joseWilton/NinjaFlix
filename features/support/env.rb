require 'capybara'
require 'capybara/cucumber'
require 'selenium-webdriver'
require 'os'

Capybara.configure do |config|
    config.default_driver = :selenium_chrome
    config.app_host = "http://localhost:8080"
    config.default_max_wait_time = 5
    
end