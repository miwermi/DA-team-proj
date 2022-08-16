# Overview of Project

## Presentation: 
**Selected Topic** Boardgames

**Reason for Selection**
   - Can we recommend board games to the people based on  likes, demographics or history?

**Description of the source data**

~ source data came from boardgamegeek and kaggle. It's a huge list of boardgames with their descriptions, rules, requirements for play, time to play, number of players, etc.

**Questions we hope to answer with the data**
   - What genre do people tend to enjoy the most? 
   - Which year released the most top-rated board games?
   - Based on your Boardgame preference, what boardgame will you play next? 
   - Can we recommend board games to the user’s from our data set? 
   - After applying machine learning to categorize these games, does that match up with the genre field? 
   - **FINAL QUESTION DRAFT:** How does unsupervised machine learning categorize games vs the pre-existing genre/label assigned? 
   - Based on ONE choice/input from the user, what recommendations from pre-existing and machine learning labels can be made? 


## Communication Protocols (GitHub and Zoom)
   - At least one branch for each team member & each team member has at least 4 commits for segement 1. 
   - The descriptions and explanations required in all other project deliverables should also be in your README.md as part of your outline.
   ~During Zoom meetings >> I would like for each of us to be heard and be able to contribute without getting talked over. I would like for us to go around the room, one at a time and share our thoughts and ideas. While one person is talking, everyone else is muted. Then only when the person talking says "pass" and mutes themselves, the next person can talk. We would establish an order of who talks next so it is not dominated by one person and so everyone can talk equally. If a person has nothing to say when it is their turn, they can say "pass" and it goes to the next person. Limit talk time to 2 minutes. Order is Abe, Courtney, Masie, Michelle, then Rachel.

## Machine Learning Model
Present a provisional machine learning model 
   - Takes in data from the provisional database >> what data and how is the databse connected to the model? Is the data in the database supposed to be live, like constantly updating? Or is it static and it's the same data that is used to train/test the model?
   - Outputs label(s) for input data >> what are these? Do we need to pick categories for the output labels?
   -   - Decision Tree: determine the importance of each column
   ~ PCA to reduce features

## Database
   - Sample data that mimics the expected final database structure or schema.
      ~how are we structuring our database? Is the database just holding the cleaned .csv file? Doesn't that already have everything? So do we need to pull out some columns randomly to have separate tables that will later need to be re-joined?
   - Draft machine learning module is connected to the provisional database
      ~What does this even mean? I thought we just "connect" the model to the .csv file? Then it trains and splits the data from the .csv and that's it? 

## Ideas
   - Using some of the different mechanics (artists, player votes, user rating, designer, publisher, honors)
   - Tables in pgAdmin, ERD linkage and schematic, to help with Database Mockup and to see coorelations and possible differences in clusters for Machine Learning
