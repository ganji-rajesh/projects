**Object:**     Predict customer churn in a bank using Deep Learning(Artificial Neural Network)<br><br>
**Description of data:** <br>
| Column Name	 | Non Null count 	| Data type	| Description|
|----------------|------------------|-----------|------------|
|CustomerId	|10000	|int64	|custmer id of each cusomer|
|Surname	|10000	|object	|same of customer|
|CreditScore|	10000|	int64	|Credit score of each customer|
|Geography	|10000	|object	|Country of each customer(France, Germany, Spain)|
|Gender	|10000	|object	|Gender of customer eithter Male or Female|
|Age	|10000	|int64	|Age of customer|
|Tenure	|10000	|int64	|No of year spent by customer with bank|
|Balance|	10000|	float64|	bank balance of each customer|
|NumOfProducts|	10000	|int64	|No. of products availed by customer|
|HasCrCard|	10000	|int64	|does customer has credit card ( 1 indicates "YES", 0 indicates "NO")|
|IsActiveMember	|10000	|int64	|Present status of customer| 
|EstimatedSalary	|10000	|float64	|Salary of customer|
|Exited	|10000	|int64	|Wheather customer stayed with the bank or left the bank ( 0-> "NO", 1-> "YES")|





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
