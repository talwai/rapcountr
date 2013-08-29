require 'nokogiri'
require 'open-uri'


URL = ARGV[0]

doc  = Nokogiri::HTML(open(URL))
puts doc

true_url = doc.css('meta')[0][:content].split(';').last.strip.split('=').last
puts true_url

doc = Nokogiri::HTML(open(true_url))
lyrics_links = doc.css("a").select{|link| link['href'] =~ /\.txt$/  }
i = 0

while i < lyrics_links.length
    link = lyrics_links.at(i)
    i = i+1
    begin
        puts 'ohhla.com/' + link['href']
    rescue Errno::EPIPE
        break
    end
end

#lyrics_links.each{|link| $stdout.puts 'ohhla.com/' + link['href'] }
#doc.search('a').select { |n| n['href'][/\.txt$/] }.map{ |n| n['href'] }
