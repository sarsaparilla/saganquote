class Scraper

	def self.scrape
		response = HTTParty.get(
				'http://www.brainyquote.com/quotes/authors/c/carl_sagan.html')

		doc = Nokogiri::HTML(response.body)

		quotes = []
		doc.css('.bqQuoteLink a').each do |quote|
			quotes << quote.content
		end
		size = quotes.count
		quotes[rand(size)]

	end

end