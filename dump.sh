URLS=$(ruby find_txt.rb) 
curl $URLS -s| w3m -dump -T text/html >> eminem.txt
python src/counting.py eminem.txt
