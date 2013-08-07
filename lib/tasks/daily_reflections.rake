desc "Fetch Daily Reflections"

task :fetch_daily => :environment do 
	require 'rubygems'
	require 'nokogiri'
	require 'open-uri'

		PAGE_URL = 'http://www.aa.org/lang/en/aareflections.cfm'

		page = Nokogiri::HTML(open(PAGE_URL))
		   
		puts page.css("title")[0].text   # => Alcoholics Anonymous
		puts page.css('div#content')[0].text
end


