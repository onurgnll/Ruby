require 'selenium-webdriver'
browser = Selenium::WebDriver.for :firefox

url = "https://www.youtube.com"
browser.get(url)
sleep(6)
youtube_sb = browser.find_element(xpath: "//input[@placeholder='Ara']")
youtube_sb.send_keys("asd")