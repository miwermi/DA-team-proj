# Overview of Project

For our final project, we dove into the fascinating world of Boardgames! Even with digital technology, people still like to gather in a room and interact while sharing an imaginative experience together. As one team member pointed out, even in an apocalyptic universe, people would still gather to play these types of games. With one content expert on the team, and the rest of us being novices, we wondered if there were clusters of games – and about the possibility of making useful recommendations in an interactive dashboard. After our analysis of our boardgame dataset we eventually created a visual landscape of boardgames that can be explored by those eager to find new games and others who want to see how their favorites may measure up to other games.

The following are some examples of the questions we asked prior to our analysis as well as a few we found ourselves asking after our analysis.

-	What genre do people tend to enjoy the most?
-	Which year released the most top-rated board games?
-   Which boardgame mechanic is the most popular? 
-	After applying machine learning to categorize games, how do these algin with current genre/categorical classifications already assigned?
-	How does unsupervised machine learning categorize games vs the pre-existing genre/label assigned?

Our big question though was,
- Can we recommend board games to the users based on boardgame characteristics and create an interactive recommender? 

### Outline of the project 
For the data we chose to use for our project, we collected source data that came from [boardgamegeek]( https://boardgamegeek.com/wiki/page/BGG_XML_API) and [Kaggle]( https://www.kaggle.com/datasets/extralime/20000-boardgames-dataset). The databases of board games are vast with their descriptions, rules, requirements for play, time to play, number of players, etc. A more in-depth description can be found in our [r&d]( https://github.com/miwermi/DA-team-proj/tree/main/r%26d) folder under DataDescription. You can find our original sourced and cleaned databases in our [resources-1 folder](https://github.com/miwermi/DA-team-proj/tree/main/resources/resources-1) titled bgg_dataset. 

After cleaning data in Excel, data was analyzed in Python’s Jupyter Notebook, R & R Studio, and PostgreSQL in PG Admin 4. Our next step is to take the final dataset into Tableau to create visualizations of all we had discovered.

### Results

### Presentation
A draft of our final presentation on Google Slides can be found [here](https://drive.google.com/drive/folders/1dIl_HQMr_-6D60YDfMqz8rI3Jj3ies11?usp=sharing).

## Machine Learning Model
Due to the large number of features in both the category and mechanics data, we used PCA to reduce these number of features. We then clustered our data using Kmeans and the elbow method to see if some of the data are grouped differently than they are currently labelled by BoardGameGeeks.

### Preliminary Preprocessing
The raw data was in .csv format, was opened in Excel for initial cleaning.  Deleted columns that we determined were irrelevant to our analysis (sort index: the games already have an object id, min age and player age, language dependence; podcast, blog, website: these had no bearing, board game honors (with out honors drops approx 1600 games), board game artists, publishers, game creators:  nearly all of these categories dropped too many values as well as create a skewed dataset.

The next transform was to clean the array of strings formatted in the raw data, Excel was functionally worthwile here with the find replace method, then further separating the metrics of mechanics and category with the 'text to columns' function.  Then used Excel to replace all blank cells with na.
![Mech_table](https://user-images.githubusercontent.com/102183530/187327394-62d6c3bc-3893-4d92-8d4b-bf0c3694636f.png)

For R analysis, bucketed games with max players to 20+, changed min and max playtime to minutes,initially brought entire raw data into jupyter notebook to drop colomns and do a generalizations with normalizing data.
![datacl2](https://user-images.githubusercontent.com/102183530/187327618-add74d87-d9c1-4b3d-a9d5-1d63f8a20a48.png)
![datacl3](https://user-images.githubusercontent.com/102183530/187327625-49950472-aebc-4e84-ad21-1d581bc68a03.png)

The preliminary data preprocessing for the machine learning analysis was done by splitting the board game mechanics column into 6 columns within Excel. Then, a list of all the mechanics was generated in Jupyter Notebook using the following code:
```
mechanics = [] columns = ['boardgamemechanic1', 'boardgamemechanic2', 'boardgamemechanic3', 'boardgamemechanic4', 'boardgamemechanic5', 'boardgamemechanic6'] for column in columns: for mechanic in df[column]: if mechanic not in mechanics: mechanics.append(mechanic)
The dataframe was populated with a column for each mechanic and the values in the column was populated with 0s using the following code:
zeroes = [] for i in range(20000): zeroes.append(0)
for mechanic in mechanics: df[mechanic] = zeroes
newdf = df.copy()
Then, the values in the dataframe cells were populated with 1s instead of 0s for the mechanics associated with each board game using the following code:
for column in columns: rowcount = 0 for item in newdf[column]: for mechanic in mechanics: if item == mechanic: newdf.at[rowcount,mechanic] = 1 rowcount+=1
```
A K-Means model was used to categorize the games based on Principal Component Analysis. This allows the machine learning algorithm to categorize games in ways that a human may not think to do. The downside of this model is that the meaning of each principal component score is opaque, making the performance of the model difficult to evaluate quantitatively. You can find our machine learning first pass [here](https://github.com/miwermi/DA-team-proj/blob/main/machine_learning_first_pass.ipynb).

*Example of the 3D-Scatter with the PCA data and the clusters*

<img width="554" alt="image (1)" src="https://user-images.githubusercontent.com/102122063/187102553-931d0f40-3943-445c-a863-35ce906b5580.png">

## Database
For our sample data, as well as for our final database, we separated tables of pertinent information from cleaned data. Then we joined tables together to get the data desired for the machine learning model. The file [createtables.sql](https://github.com/miwermi/DA-team-proj/blob/main/sql/createtables.sql) in the SQL folder, has the code used to create the original five tables in the database. These tables were then joined together to create the [bg_plusstats]( https://github.com/miwermi/DA-team-proj/blob/main/sql/bg_plusstats.csv) table. 

Saved in the file [queries.sql]( https://github.com/miwermi/DA-team-proj/blob/main/sql/queries.sql) you will find the code for joining the tables and creating this final bg_plusstats table. Additionally, the connection string code to connect PostgreSQL to the jupyter notebook is located in the file [database_connection.ipynb]( https://github.com/miwermi/DA-team-proj/blob/main/sql/database_connection.ipynb).  

![image](https://user-images.githubusercontent.com/102757676/188759022-b6d74018-d6c3-4bcb-9d64-3a1ff7760ae5.png)

    
## Dashboard
As a team, we’ve begun to discuss ideas for our dashboard that will be key in presenting our findings and telling our story. 

<img width="412" alt="ERD Image" src="https://github.com/miwermi/DA-team-proj/blob/main/graphics/dashboard-draft.png">
   
We have begun to develop our Tableau [dashboard](https://public.tableau.com/app/profile/butler.bootcamp.2022/viz/BoardgameDashboard) for our visualizations, storys and interactive elements. 
- Interactive elements of Tableau allow for user selection in several different visuals
- We would also like to have a sorting option for users with buttons or a dropdown selection tool
- Possibly a search function type interaction?

One example from our dashboard is a pair of pie charts of the many different categories & mechanics of the games:
<div class='tableauPlaceholder' id='viz1662322591227' style='position: relative'><noscript><a href='#'><img alt='Categories+Mechanics Pies ' src='https:&#47;&#47;public.tableau.com&#47;static&#47;images&#47;Ca&#47;CategoryandMechanicsPies&#47;CategoriesMechanicsPies&#47;1_rss.png' style='border: none' /></a></noscript><object class='tableauViz'  style='display:none;'><param name='host_url' value='https%3A%2F%2Fpublic.tableau.com%2F' /> <param name='embed_code_version' value='3' /> <param name='site_root' value='' /><param name='name' value='CategoryandMechanicsPies&#47;CategoriesMechanicsPies' /><param name='tabs' value='no' /><param name='toolbar' value='yes' /><param name='static_image' value='https:&#47;&#47;public.tableau.com&#47;static&#47;images&#47;Ca&#47;CategoryandMechanicsPies&#47;CategoriesMechanicsPies&#47;1.png' /> <param name='animate_transition' value='yes' /><param name='display_static_image' value='yes' /><param name='display_spinner' value='yes' /><param name='display_overlay' value='yes' /><param name='display_count' value='yes' /><param name='language' value='en-US' /></object></div>       

