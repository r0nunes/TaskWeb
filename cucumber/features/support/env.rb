require "capybara/cucumber"
require "selenium-webdriver"
require "minitest"
World(Minitest::Assertions)

Capybara.register_driver :selenium do |app|
  Capybara::Selenium::Driver.new(app, :browser => :chrome)
end

Capybara.default_driver = :selenium
Capybara.default_max_wait_time = 30