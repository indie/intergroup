# This needs a bit more work


module InfoPagesHelper
	def daily_reflection
		page_url = "http://www.aa.org/lang/en/aareflections.cfm"

		page = Nokogiri::HTML(open(page_url))
	   
		puts page.css("title")[0].text   # => Alcoholics Anonymous
		puts page.css('div#content')[0].text
	end
end