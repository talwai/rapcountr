Rapcountr
============
Analyze word-frequency counts for the discographies of various rap artists.
All lyrics sourced from www.ohhla.com

To see how many times an artist [name] has used a word [word] visit:
```
http://rapcountr.herokuapp.com/artist/[name]/[word]
```

The identifier [name] now only works for a limited dataset of hip-hop artist ids, including: 
{
    'tupac', '2Pac (Tupac Shakur)',
    '50cent' : '50 Cent (+ G-Unit)',
    'atribecalledquest' : 'A Tribe Called Quest',
    'az' : 'AZ',
    'alkaholiks' : 'Alkaholiks (+ more)',
    'atmosphere' : 'Atmosphere (+ Slug)',
    'b.o.b.' : 'B.o.B',
    'babybash' : 'Baby Bash',
    'beastieboys' : 'Beastie Boys',
    'biggie' : 'Notorious B.I.G.',
    'bonethugs' : 'Bone Thugs',
    'kanyewest' : 'Kanye West',
    'jay-z' : 'Jay-Z',
    'methodman' : 'Method Man',
    'wizkhalifa' : 'Wiz Khalifa',
    'snoopdogg' : 'Snoop Dogg',
    'wu-tangclan' : 'Wu-Tang Clan',
    'nas' : 'Nas',
    'devinthedude' : 'Devin the Dude',
    'eminem' : 'Eminem (+ D-12)'
}

Dataset will be expanded soon!

* Instructions for running and testing locally

First, to install dependencies (you might want to be in a virtual env.):
```
pip install -r requrements.txt
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
