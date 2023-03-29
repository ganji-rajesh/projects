**Object:**     Predict customer churn in a bank using Deep Learning(Artificial Neural Network)<br>
**Description of data:** <br>


![image.png](attachment:016d39c3-90e6-445c-9e3d-63ce5be6b8dc.png) <br>

**Learnings/Outcomes:** <br>

>•	    Handling Imbalance in data<br>
>•	Building Neural network with hidden layers Created user one defined Function to automate process of Building a neural network with handling <br>imbalance approaches, which resulted in reduction in execution time by 80% <br>
>•	Visualizing neural network, epoch accuracy,epoch loss using tensorboard, leading to 50% less time in understanding performance.(how to show tensor board in GitHub or online)<br>
>•	Evaluated model with different metrics<br>
<br>
<br>


**Project Workflow**
</br>


>Preprocessing Data:<br>
>>•	Deleted unnecessary columns<br>
>>•	Converted all text values into numeric data type<br>
>>•	Normalized data using Min Max scalar<br>

>Splitting data:<br>

>>•	Splitted data into train and test data with test size as 20% <br>


>Model Building:<br>
>>•	Built Deep Learning Neural Network model with 5 layers in total including input, output and Hidden layers<br>
 
>>•	Model accuracy on train data is 93%<br>

>Model Evaluation:<br>
>>•	The above model is evaluated with test data across metrics like Accuracy, precision, recall, f1- score and AUC.<br>

>>•	On comparing metrics, concluded that model is suffering from Imbalance.<br>

>Handling Imbalance:<br>
>>The following approaches have been adopted to handle the Imbalance in data.<br>
>>•	Undersampling<br>
>>•	Oversampling<br>
>>•	SMOTE approach<br>



**Conclusion:**<br>
***On comparing metrics,<br>
<code>The oversampling approach is considered as best one for the given problem,
as it has better accuracy, better AUC, and better f1-score than other approaches</code><br>
<br>
**Scop for improvement:**<br>
*using Dropout layer approach for overfitting***




```python

```
