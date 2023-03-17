require 'selenium-webdriver'
browser = Selenium::WebDriver.for :firefox

url = "https://www.google.com"
browser.get(url)

sleep(6)
#music = browser.find_element(xpath: "/html/body/ytd-app/div[1]/ytd-page-manager/ytd-browse/ytd-two-column-browse-results-renderer/div[1]/ytd-rich-grid-renderer/div[1]/ytd-feed-filter-chip-bar-renderer/div/div[3]/iron-selector/yt-chip-cloud-chip-renderer[2]")

#music.click

search_box = browser.find_element(xpath: "/html/body/div[1]/div[3]/form/div[1]/div[1]/div[1]/div/div[2]/input")
search_box.send_keys("youtube")
search_box.submit
sleep(6)
select_youtube = browser.find_element(xpath: "/html/body/div[7]/div/div[11]/div[1]/div[2]/div[2]/div/div/div[1]/div/div/div/div/div/div/div[1]/a/h3")
select_youtube.click
sleep(6)
youtube_sb = browser.find_element(xpath: "//input[@placeholder='Ara']")
youtube_sb.send_keys("Sen Benim Başıma Gelen En Güzel Şey")
youtube_sb.submit
ara_box = browser.find_element(xpath: '//*[@id="search-icon-legacy"]')

sleep(4)
video = browser.find_element(xpath: "/html/body/ytd-app/div[1]/ytd-page-manager/ytd-search/div[1]/ytd-two-column-search-results-renderer/div/ytd-section-list-renderer/div[2]/ytd-item-section-renderer/div[3]/ytd-video-renderer[1]/div[1]/div/div[1]/div/h3/a/yt-formatted-string")
video.click


sleep(10)
