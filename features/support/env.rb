require "byebug"
require "capybara"
require "capybara/cucumber"
require "cucumber"
require "selenium-webdriver"
require "site_prism"
require "yaml"
require "webdrivers"
require "report_builder"

require_relative "pages_helpers"
World(Pages)

CONFIG = YAML.load_file("./config/qa.yml")

Capybara.default_driver = :selenium
Capybara.default_max_wait_time = 60
Capybara.register_driver :selenium do |app|
  Capybara::Selenium::Driver.new(app, browser: :chrome)
end

browser = Capybara.current_session.driver.browser
browser.manage.window.maximize
