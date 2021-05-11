require 'nokogiri'
require 'open-uri'
require 'pry'

class Scraper 

    def scrapebrands    
        html = File.read('https://bikeindex.org/manufacturers') 
        bikeindex = Nokogiri::HTML(html)
        brands = []
        bikeindex.css("manufacturers-list").each do |brand|
            #need to scrape data from table
        end 
    end

    scrapebrands
end 
