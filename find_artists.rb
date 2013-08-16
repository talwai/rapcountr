require 'nokogiri'
require 'open-uri'


artist = ARGV[0]

doc = Nokogiri::HTML(open('http://ohhla.com/all.html'))

doc_2 = Nokogiri::HTML(open('http://ohhla.com/all_two.html'))
doc_3 = Nokogiri::HTML(open('http://ohhla.com/all_three.html'))

doc_4 = Nokogiri::HTML(open('http://ohhla.com/all_four.html'))
doc_5 = Nokogiri::HTML(open('http://ohhla.com/all_five.html'))


artists_html = doc.css("a").select{|link| link['href'] =~ /anonymous/ }
                .concat doc_2.css("a").select{|link| link['href'] =~ /anonymous/ }
                .concat doc_3.css("a").select{|link| link['href'] =~ /anonymous/ }
                .concat doc_4.css("a").select{|link| link['href'] =~ /anonymous/ }
                .concat doc_5.css("a").select{|link| link['href'] =~ /anonymous/ }
 

                
artists = []
i = 0

while i < artists_html.length
    artists[i] = artists_html.at(i).text
    i = i+1
    begin
        puts artists[i-1]
    rescue Errno::EPIPE
        break
    end
end

#lyrics_links.each{|link| $stdout.puts 'ohhla.com/' + link['href'] }
#doc.search('a').select { |n| n['href'][/\.txt$/] }.map{ |n| n['href'] }
