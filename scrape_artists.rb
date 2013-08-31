require 'nokogiri'
require 'open-uri'

BASE_URL = 'http://ohhla.com/favorite.html'
ERRORS = [NoMethodError, OpenURI::HTTPError]
ROOT = 'http://ohhla.com/'


doc = Nokogiri::HTML(open(BASE_URL))

artists_html = doc.css("a").select{|link| link['href'] =~ /YFA(.*)/ }


artists = []
urls = []
i = 0

while i < artists_html.length
    artists[i] = artists_html.at(i).text
    urls[i] = ROOT + artists_html.at(i)['href'] #Note attributes referenced with [], text with .text
    i = i+1
    
    begin
        puts artists[i-1]+','+urls[i-1]
    rescue Errno::EPIPE
        break
    end
end
puts i

#lyrics_links.each{|link| $stdout.puts 'ohhla.com/' + link['href'] }
#doc.search('a').select { |n| n['href'][/\.txt$/] }.map{ |n| n['href'] }
