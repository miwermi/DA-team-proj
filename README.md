# Overview of Project

## Presentation: 
For our final project, we agreed to dive into the fascinating world of Boardgames! 
Even with digital technology, people still like to gather in a room and interact while sharing an imaginative experience together. As one team member pointed out, even in an apocalyptic universe, people would still gather to play these types of games. With one content expert on the team, and the rest of us being novices, we wondered if there were clusters of games – and about the possibility of making useful recommendations in an interactive dashboard.Along with recommendations, we plan to create a visual story of the games with descriptions, rules, mechanics, requirements for play, time to play, number of players, etc. This visual landscape can be explored by those eager to find new games and others who want to see how their favorites may be categorized and compared to other games.

Some questions we are asking include, yet are not limited to the following:

-	What genre do people tend to enjoy the most?
-	Which year released the most top-rated board games?
-	Can we recommend board games to the users based on boardgame characteristics?
-	After applying machine learning to categorize these games, does that match up with the genre field already established?
-	How does unsupervised machine learning categorize games vs the pre-existing genre/label assigned?

For the data we chose to use for our project, we collected source data that came from [boardgamegeek]( https://boardgamegeek.com/wiki/page/BGG_XML_API) and [Kaggle]( https://www.kaggle.com/datasets/extralime/20000-boardgames-dataset). The databases of board games are vast with their descriptions, rules, requirements for play, time to play, number of players, etc. A more in-depth description can be found in our [r&d]( https://github.com/miwermi/DA-team-proj/tree/main/r%26d) folder under DataDescription. You can find our original sourced and cleaned databases in our [resources folder](https://github.com/miwermi/DA-team-proj/tree/main/resources).

After cleaning data in Excel, data was analyzed in Python’s Jupyter Notebook, R & R Studio, and PostgreSQL in PG Admin 4. Our next step is to take the final dataset into Tableau to create visualizations of all we had discovered.


## Communication Protocols 
As a group we communicate through Zoom, Slack and even our shared GitHub repository. During our meetings on Zoom, we ensure all can share and be heard we each allow the others a chance to present ideas while others stay muted. We found that cycling alphabetically and using the “Raise Hand” feature to be helpful.  

Within Slack, we have a channel made specifically for our project, where we can chat, update progress, and share links, images, data, etc. We also created a channel for links to our data sources that allow them to be easily accessible. 

Lastly, within our project repository, we all have created our own branches to that we can upload data, code, and resources before committing to the main branch. We’ve also found that simply communicating through Slack and Zoom when pushing directly into the main branch is acceptable. 
   
## Team Roles
| Team Member Name | Role (S1) | Description      |
|------------------|---------|--------------------|
| Abe | &#9651; | Triangle: Data Cleaning & Mockup of the Machine Learning Model |
| Courtney | &#9651; | Triangle: Data Cleaning & Mockup of the Machine Learning Model |
| Masie | &#9675; | Circle: Rubric Compliance & README Composition |
| Michelle | &#9744; | Square: Responsible for the Repository 
| Rachel | X | X: Final Decision on Technologies Used |

## Machine Learning Model
Our goal for this project is to use K-Means unsupervised machine learning.  We plan on starting with Linear Regression, and exploring Multi-Linear Regression analysis in R.  We are also exploring other analyses, possibly a 2 Way ANOVA looking at game players, and game play time agains the category and meachanics data.  
Because there are so many features in both the category and mechanics data, we plan to use PCA to reduce these number of features. We are also interested in cluster using Kmeans and the elbow method to see if some of the data are grouped differently than they are currently labelled by BoardGameGeeks. You will find our provisional Machine Learning in the file, [Machine_Learning.ipynb]( https://github.com/miwermi/DA-team-proj/blob/main/Machine_Learning.ipynb).

•	Outputs label(s) for input data >> Currently we are looking to input game play time, player min/max, 'best' game by votes both raw and weighted, complexity, site views, category, and game mechanics. 

A couple possible hypotheses:  Games with more people, longer play times, higher compexity should be clustered together and include labels like "civilization", "building", "campaigns".

Are there games with fewer people, with shorter play times that also cluster together under categories or mechanics?  Any outliers?

## Database
For our sample data, as well as for our final database, we separated tables of pertinent information from cleaned data. Then we joined tables together to get the data desired for the machine learning model. The file [createtables.sql](https://github.com/miwermi/DA-team-proj/blob/main/sql/createtables.sql) in the SQL folder, has the code used to create the original four tables in the database. These tables were then joined together to create the [bg_fulldata]( https://github.com/miwermi/DA-team-proj/blob/main/sql/bg_fulldata.csv) table. 

Saved in the file [queries.sql]( https://github.com/miwermi/DA-team-proj/blob/main/sql/queries.sql) you will find the code for joining the tables and creating this final bg_fulldata table. Additionally, the connection string code to connect PostgreSQL to the jupyter notebook is located in the file [database_connection.ipynb]( https://github.com/miwermi/DA-team-proj/blob/main/sql/database_connection.ipynb).  

<img width="412" alt="ERD Image" src="https://user-images.githubusercontent.com/102122063/187095802-ba01f4b6-9950-4ce8-82fa-9803c108f59b.png">
    
## Dashboard
As a team, we’ve begun to discuss ideas for our dashboard that will be key in presenting our findings and telling our story. Below is an idea we wish to explore. 
- Tableau dashboard, visualizations and storys. 
-  [Bartle's Personas](https://www.interaction-design.org/literature/article/bartle-s-player-types-for-gamification#:~:text=There%20are%20four%20player%20types,any%20combination%20of%20these%20types) for game players. We would add this in as a comparison with our analysis. Looking from a psychological perspective and comparing it to our data analysis section.


