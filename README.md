Rapcountr
============
Analyze word-frequency counts for the discographies of various rap artists.
All lyrics sourced from www.ohhla.com

First, to install dependencies (you might want to be in a virtual env.):
```
pip install -r requrements.txt
```
Also, for nokogiri
```
bundle-install
```

Run [example]:
```
ruby find_txt.rb eminem; python src/counting.py eminem.txt 
```

Now check the file 'out_file' to see the word-frequency pairs in alphabetic order
(Note: The script parses all alphanumeric elements, so the first few listings will be numbers if numbers are contained in the file.)
The output of counting.py script is always written to file 'out_file'

To test the query server functionality for run:
```
python src/query_server.py out_file
```
Wait for the prompt, then type in any query and you will see the frequency of the matching words in the selected artist's discography
