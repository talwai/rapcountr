require 'nokogiri'
require 'open-uri'

doc  = Nokogiri::HTML(open('http://ohhla.com/YFA_snoopdogg.html'))

lyrics_links = doc.css("a").select{|link| link['href'] =~ /\.txt$/  }
i = 0

while i < lyrics_links.length
    link = lyrics_links.at(i)
    i = i+1
    begin
        $stdout.puts 'ohhla.com/' + link['href']
    rescue Errno::EPIPE
        break
    end
end

#lyrics_links.each{|link| $stdout.puts 'ohhla.com/' + link['href'] }
#doc.search('a').select { |n| n['href'][/\.txt$/] }.map{ |n| n['href'] }
