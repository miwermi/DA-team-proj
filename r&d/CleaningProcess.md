## Resources
Jupyter Notebook, Pandas, Numpy, Python, Excel

https://boardgamegeek.com/
https://www.kaggle.com/datasets/extralime/20000-boardgames-dataset

## Data Cleaning:
- File initially sorted in excel.  
- text to columns to break up arrays. 
- Used "find/replace" to drop quotes, arrays, and fill in blank cells with NaN.

- Columns Initially Dropped:
      'minage', 'sortindex', 'min_community','max_community', 'totalvotes', 'playerage', 'languagedependence',
       'stddev', 'numweights', 'numgeeklists', 'numtrading', 'numwanting', 'numcomments',
       'numplays', 'numplays_month', 'news', 'blogs', 'weblink',
       'podcast', 'label', 'boardgamedesigner_cnt', 'boardgameartist_cnt',
       'boardgamepublisher_cnt', 'boardgamecategory_cnt',
       'boardgamemechanic_cnt', 'boardgameexpansion_cnt',
        'boardgamefamily_cnt', 'boardgamedesigner',
       'boardgameartist', 'boardgamehonor','boardgameversion', 
       'boardgameexpansion', 'boardgamefamily', 'description', 'gamelink'
       
## Columns Binned
Player numbers each number should be in its own bin up to 8 or so
Player playtime should be in 30 minute increments. 0-30, 31-60, 61-90, etc. up to 240+
