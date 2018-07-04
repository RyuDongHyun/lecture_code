require 'nokogiri'

file = File.open('scrap.html')

html= Nokogiri::HTML(file)
puts html.css("#name")
