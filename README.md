# Overview of Project

## Presentation: 
For our final project, we agreed to dive into the fascinating world of Boardgames! Many enjoy the pastime of playing board games, and the reason for selecting this topic is to discover different ways of classifying board games based on a variety of characteristics in hopes of being able to recommend games people would enjoy. Along with recommendations, we plan to create a visual story of the games with descriptions, rules, mechanics, requirements for play, time to play, number of players, etc. This visual landscape can be explored by those eager to find new games and others who want to see how their favorites may be categorized and compared to other games.

Some questions we are asking include, yet are not limited to the following:
-	What genre do people tend to enjoy the most?
-	Which year released the most top-rated board games?
-	Can we recommend board games to the users based on boardgame characteristics?
-	After applying machine learning to categorize these games, does that match up with the genre field already established?
-	How does unsupervised machine learning categorize games vs the pre-existing genre/label assigned?

For the data we chose to use for our project, we collected source data that came from [boardgamegeek]( https://boardgamegeek.com/wiki/page/BGG_XML_API) and [Kaggle]( https://www.kaggle.com/datasets/extralime/20000-boardgames-dataset). The databases of board games are vast with their descriptions, rules, requirements for play, time to play, number of players, etc. A more in-depth description can be found in our [r&d]( https://github.com/miwermi/DA-team-proj/tree/main/r%26d) folder under DataDescription. You can find our original sourced and cleaned databases in our [resources folder](https://github.com/miwermi/DA-team-proj/tree/main/resources).

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
Our goal for this project is to use K-Means unsupervised machine learning. We plan to use PCA to reduce the number of features, while also using Linear Regression analysis in R to see if the simpler model works better than K-Means. You will find our provisional Machine Learning in the file, [Machine_Learning.ipynb]( https://github.com/miwermi/DA-team-proj/blob/main/Machine_Learning.ipynb).

•	Outputs label(s) for input data >> what are these? Do we need to pick categories for the output labels?


## Database
For our sample data, as well as for our final database, we created separate tables of pertinent information from cleaned data. Then we joied the tables together to get the information we needed for our machine learning model. The file [createtables.sql(https://github.com/miwermi/DA-team-proj/blob/main/sql/createtables.sql) in the SQL folder, has the code used to create the original four tables in the database. These tables were then joined together to create the [bg_fulldata]( https://github.com/miwermi/DA-team-proj/blob/main/sql/bg_fulldata.csv) table. 

Saved in the file [queries.sql]( https://github.com/miwermi/DA-team-proj/blob/main/sql/queries.sql) you will find the code for joining the tables and creating this final bg_fulldata table. Additionally, the connection string code to connect PostgreSQL to the jupyter notebook is located in the file [database_connection.ipynb]( https://github.com/miwermi/DA-team-proj/blob/main/sql/database_connection.ipynb).  

<img width="412" alt="ERD Image" src="https://user-images.githubusercontent.com/102122063/187095254-66ca705f-8b3c-4a0b-9cfe-cd1571d8bc03.png">
     
## Dashboard
As a team, we’ve begun to discuss ideas for our dashboard that will be key in presenting our findings and telling our story. Below is an idea we wish to explore. 
- Tableau dashboard, visualizations and storys. 
-  [Bartle's Personas](https://www.interaction-design.org/literature/article/bartle-s-player-types-for-gamification#:~:text=There%20are%20four%20player%20types,any%20combination%20of%20these%20types) for game players. We would add this in as a comparison with our analysis. Looking from a psychological perspective and comparing it to our data analysis section.

