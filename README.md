# Visualisation_of_Learning_Trees
**Objectives:**
This repository provides modules to make a visualization based on your Decision Tree model for better understanding of the working of the models

**Methodology:**
The record sets are passed into the python library calls through the EMBED function.  
pandas, numpy and Scikit-learn librariesare used to construct Decision Trees models.  
Relevant information is extracted from the model and sent back to ECL.  
Visualiser in ECL is used to visualise the information for quicker and better understanding.  



This repository contains 3 files
1.feature_imp.ecl- Visualises the feature importance of each independent feature in the form of a bar graph

2.mutualinfo.ecl- Visualises the mutual information between each independent and the dependent feature in the form of a bar graph

3.splitpoint.eclnb- Visualises the split points of each independent feature as points on a bar graph showcasing each feature's min-max values.

**Results:**\n
Note that all models are trained on the IRIS dataset.

1. feature_imp.ecl
<img width="949" alt="feature_imp" src="https://github.com/shashankb2003/Visualisation_of_Learning_Trees/assets/115179646/9b8a0b72-ec19-4568-9852-a9b69b9614a3">

2. mutualinfo.ecl
<img width="950" alt="mutual_info" src="https://github.com/shashankb2003/Visualisation_of_Learning_Trees/assets/115179646/f7014b31-c44d-44f4-96a6-839d9ae68966">

3. splitpoint.eclnb
<img width="629" alt="split_points" src="https://github.com/shashankb2003/Visualisation_of_Learning_Trees/assets/115179646/975eb3fb-453f-4261-b1b6-a81cfed09b52">



