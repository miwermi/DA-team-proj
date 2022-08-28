The preliminary data preprocessing for the machine learning analysis was done by splitting the board game mechanics column into 6 columns within Excel. Then, a list of all of the mechanics was generated in Jupyter Notebook using the following code:

mechanics = []
columns = ['boardgamemechanic1', 'boardgamemechanic2', 'boardgamemechanic3', 'boardgamemechanic4', 'boardgamemechanic5', 'boardgamemechanic6']
for column in columns:
    for mechanic in df[column]:
        if mechanic not in mechanics:
            mechanics.append(mechanic)
            
 Afterwards, the dataframe was populated with a column for each mechanic 
