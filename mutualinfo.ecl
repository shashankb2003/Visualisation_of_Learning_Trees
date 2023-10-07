IMPORT Python3 as PYTHON;
IMPORT Visualizer;
layout:=RECORD
   String feature;
   REAL val;
END;

STREAMED DATASET(layout) Image():=EMBED(PYTHON:activity)
   from sklearn.datasets import load_iris
   from sklearn.tree import DecisionTreeClassifier
   from sklearn.model_selection import train_test_split
   import pandas as pd
   import numpy as np
   from sklearn.feature_selection import mutual_info_classif

   data = load_iris()
   df = pd.DataFrame(data.data, columns=data.feature_names)
   df['target'] = data.target
   X_train, X_test, Y_train, Y_test = train_test_split(df[data.feature_names], df['target'], random_state=0)
   clf = DecisionTreeClassifier(max_depth=5, random_state=0)
   clf.fit(X_train, Y_train)
   mut=mutual_info_classif(X_train,Y_train)
   res=[]
   for i in range(4):
        res.append((data.feature_names[i],mut[i]))
   result=sorted(res,key=lambda x:x[1],reverse=True)
   return result
ENDEMBED;
feat:=Image();
DATASET(layout) Concat(DATASET(layout) lis):=EMBED(PYTHON)
   from statistics import mean
   grouped_data={}
   for item in lis:
    key = item[0]  # Get the first element (letter)
    value = item[1]  # Get the second element (number)

    # Check if the key is already in the dictionary
    if key in grouped_data:
        grouped_data[key].append(value)  # Append the value to the existing list
    else:
        grouped_data[key] = [value]
   li=[]
   for j in grouped_data:
      li.append((j,mean(grouped_data[j])))
   return tuple(li)
ENDEMBED;
mutual_info:=OUTPUT(Concat(feat),NAMED('column'));
mutual_info;
Visualizer.MultiD.Column('Mychart',,'column');