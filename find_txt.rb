require 'nokogiri'
require 'open-uri'

inArray = $stdin.readlines
ROOT_URL = 'http://ohhla.com/'

inArray.each { |artist| 
    doc = Nokogiri::HTML(open(artist.split(',').last))
    lyrics_links = doc.css("a").select{|link| link['href'] =~ /\.txt$/  }
    i = 0

    while i < lyrics_links.length
        link = lyrics_links.at(i)
        i = i+1
        begin
            File.open("urls.txt", "a") do |f|
            f.puts artist.split(',').first + ',' + ROOT_URL + link['href']
            end
        rescue Errno::EPIPE
        break
        end
    end
}

#lyrics_links.each{|link| $stdout.puts 'ohhla.com/' + link['href'] }
#doc.search('a').select { |n| n['href'][/\.txt$/] }.map{ |n| n['href'] }
