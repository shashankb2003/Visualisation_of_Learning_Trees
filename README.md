# Visualisation_of_Learning_Trees
## **Introduction**  
This repository provides modules to visualize the various features of the Decision Tree Learning methods such as feature importance,split points and mutual information.Through visualization of these features users will be able to understand the in depth working of the Decision Tree modules in a comprehensive manner.Visualization of decision tree features can be done using various tools and libraries in Python by embedding it in the ECL code.One of the most commonly used libraries for visualizing decision trees is numpy along with the scikit-learn library.<br><br>
## **Objectives:**      
- Provide a clear visual representation of the decision tree structure in ECL.  
- Highlight the importance of different features in making decisions.  
- Present decision rules in a human-readable format to enhance interpretability.  
- Provide an interactive visualization tool that allows users to explore different parts of the decision tree.  
- Serve as an educational tool for users unfamiliar with the specifics of decision trees in ECL.  
- Provide insights into the inner workings of the model for training and knowledge transfer.  
- Optimize the visualization for performance to handle larger datasets and trees efficiently.<br><br>
## **Methodology:**
This repository contains 3 files  
1. **feature_imp.ecl<br>**
Feature importance in decision trees refers to the quantification of the contribution of each feature to the model's predictive performance. It helps to identify which features have a more significant impact on the decision-making process of the tree.The module visualizes the feature importance of each independent feature in the form of a bar graph with the specified names for the features and depicts the relative importance of each feature on a scale of 1.00.<br>
2. **mutualinfo.ecl<br>**
Mutual information is a measure of the amount of information that knowing the value of one variable (feature) provides about another variable (target class). In the context of decision trees, mutual information is commonly used as a criterion to determine the best feature to split on at each node. It helps quantify the reduction in uncertainty about the target variable that is achieved by considering a particular feature for the split.This module visualizes the mutual information between each independent and the dependent feature in the form of a bar graph showing the relative information gain on a scale of 1.00  
1. **splitpoint.eclnb<br>**
In decision trees, split points refer to the values or conditions used to partition the data at each internal node. These split points determine how the data is divided into subsets as the tree branches from the root to the leaves. The choice of split points is a crucial aspect of building an effective decision tree.This module visualizes the split points of each independent feature as points on a bar graph showcasing each feature's min-max values.  
The input dataset records are loaded into ECL and Python along with necessary libraries such as pandas, numpy and Scikit-learn libraries that are used to construct Decision Trees models are embedded into ECL code using the EMBED function.The required feature from the decision tree is extracted using the dedicated library function and the results are sent to ECL in the form of a one dimensional list.The visualizer in ECL is used to visualize the information for quicker and better understanding of the Decision tree working.

### Python libraries required
- scikit-learn
- pandas
- numpy

## **Workflow**
The input dataset records are loaded into ECL and Python along with necessary libraries such as pandas, numpy and Scikit-learn libraries that are used to construct Decision Trees models are embedded into ECL code using the EMBED function.The required feature from the decision tree is extracted using the dedicated library function and the results are sent to ECL in the form of a one dimensional list.The visualizer in ECL is used to visualize the information for quicker and better understanding of the Decision tree working.

## **Results:**  
Note that all models are trained on the IRIS dataset.

1. **feature_imp.ecl** 
<img width="949" alt="feature_imp" src="https://github.com/shashankb2003/Visualisation_of_Learning_Trees/assets/115179646/9b8a0b72-ec19-4568-9852-a9b69b9614a3"><br>
Graph showcasing the feature importance of the independent features of the IRIS dataset.<br><br>
2. **mutualinfo.ecl**   
<img width="950" alt="mutual_info" src="https://github.com/shashankb2003/Visualisation_of_Learning_Trees/assets/115179646/f7014b31-c44d-44f4-96a6-839d9ae68966"><br>
Graph showcasing the mutual importance of each independent feature with the dependent.<br><br>
3. **splitpoint.eclnb**
<img width="629" alt="split_points" src="https://github.com/shashankb2003/Visualisation_of_Learning_Trees/assets/115179646/975eb3fb-453f-4261-b1b6-a81cfed09b52"><br>
Graph showcasing the max-min values of each independent feature and the different splits points of each feature.    


## Deployment
Assuming that HPCC cluster is up and running in your computer: -

1. Install ML Core as an ECL bundle by running the below in your terminal or command prompt.<br>
 ```
ecl bundle install https://github.com/hpcc-systems/ML_Core.git
```
2. Install Visualizer as an ECL bundle by running the below in your termianl or command prompt.<br>
 ```
 ecl bundle install https://github.com/hpcc-systems/Visualizer.git
```
3. Now that the dependencies have been taken care of, we can run ```feature_imp.ecl``` on thor
 ```
ecl run thor feature_imp.ecl
```
4. Note that splitpoint.eclnb will only run in Visual Studio Code with the required ECL extension.
