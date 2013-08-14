URLS=$(ruby find_txt.rb) 
curl $URLS -s| w3m -dump -T text/html >> snoopdogg.txt
python src/counting.py snoopdogg.txt
