require 'selenium/webdriver'

Capybara.register_driver :selenium_chrome do |app|
  options = Selenium::WebDriver::Chrome::Options.new()
  options.add_argument('no-sandbox')
  options.add_argument('disable-setuid-sandbox')
  options.add_argument('disable-dev-shm-usage')
  options.add_argument('disable-popup-blocking')
  options.add_argument('window-size=1366,768')
  # Set up profile for testing downloads with temporary directory
  profile = Selenium::WebDriver::Chrome::Profile.new
  profile['download.default_directory'] = DownloadHelpers::PATH.to_s
  profile['download.prompt_for_download'] = false

  Capybara::Selenium::Driver.new(
      app,
      browser: :chrome,
      options: options,
      profile: profile
  )
end

Capybara.default_driver = :selenium_chrome
Capybara.javascript_driver = :selenium_chrome