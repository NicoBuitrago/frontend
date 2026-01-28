require 'capybara'
require 'capybara/cucumber'
require 'selenium-webdriver'
require 'dotenv/load'

Capybara.app_host = ENV.fetch('BASE_URL', 'https://demo.applitools.com')
Capybara.default_max_wait_time = ENV.fetch('DEFAULT_WAIT', '5').to_i

headless = ENV.fetch('HEADLESS', 'true') == 'true'

Capybara.register_driver :selenium_chrome_custom do |app|
  options = Selenium::WebDriver::Chrome::Options.new
  options.add_argument('--headless=new') if headless
  options.add_argument('--no-sandbox')
  options.add_argument('--disable-dev-shm-usage')

  Capybara::Selenium::Driver.new(app, browser: :chrome, options: options)
end

Capybara.default_driver = :selenium_chrome_custom
