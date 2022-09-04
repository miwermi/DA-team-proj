The preliminary data preprocessing for the machine learning analysis was done by splitting the board game mechanics column into 6 columns within Excel. Then, a list of all of the mechanics was generated in Jupyter Notebook using the following code:

mechanics = []
columns = ['boardgamemechanic1', 'boardgamemechanic2', 'boardgamemechanic3', 'boardgamemechanic4', 'boardgamemechanic5', 'boardgamemechanic6']
for column in columns:
    for mechanic in df[column]:
        if mechanic not in mechanics:
            mechanics.append(mechanic)
            
 The dataframe was populated with a column for each mechanic and the values in the column was populated with 0s using the following code:
 
 zeroes = []
for i in range(20000):
    zeroes.append(0)

for mechanic in mechanics:
    df[mechanic] = zeroes

newdf = df.copy()

Then, the values in the dataframe cells were populated with 1s instead of 0s for the mechanics associated with each board game using the following code:

for column in columns:
    rowcount = 0
    for item in newdf[column]:
        for mechanic in mechanics:
            if item == mechanic:
                newdf.at[rowcount,mechanic] = 1
        rowcount+=1
        

A K-Means model was used to categorize the games based on Principal Component Analysis. This allows the machine learning algorithm to categorize games in ways that a human may not think to do. The downside of this model is that the meaning of each principal component score is opaque, making the performance of the model difficult to evaluate quantitatively.
