
class WebScraperController < ApplicationController



  def index
    url = "https://miami.craigslist.org/search/web"
    response = HTTParty.get url


    @page = Nokogiri::HTML(response.body)
    @job = @page.css('.pl')
    puts "*"*100
    puts @job
    puts "*"*100

    # @page = Nokogiri::HTML(response.body)
    #
    # @parse_page = Nokogiri::HTML(@page)

    # @jobs_array = []
  end
end
