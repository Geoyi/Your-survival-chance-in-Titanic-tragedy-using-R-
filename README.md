# Your-survival-chance-in-Titanic-tragedy-using-R-
Titanic dataset is a super star dataset in data science. Today we are going to use R to answer if you are going to survive with other survivals according to your age, sex and social status (1st to 3rd class).
## what is in the dataset. 
we have 1309 passengers in the data. The data includes:
survival        Survival
                (0 = No; 1 = Yes);
pclass          Passenger Class
                (1 = 1st; 2 = 2nd; 3 = 3rd);
name            Name;
sex             Sex;
age             Age;
sibsp           Number of Siblings/Spouses Aboard;
parch           Number of Parents/Children Aboard;
ticket          Ticket Number;
fare            Passenger Fare;
cabin           Cabin;
embarked        Port of Embarkation;
                (C = Cherbourg; Q = Queenstown; S = Southampton)
![titanic dataset](https://cloud.githubusercontent.com/assets/14057932/15988172/d629be50-300b-11e6-8628-15f5036f8371.png)
Data in excel. 
## runing the code using my R code 'Titanic_ggplot.r' here.
## Some results using ggplot2 package from R
![rplot01](https://cloud.githubusercontent.com/assets/14057932/15988180/0273a278-300c-11e6-87b7-2c5ae899c7cc.png)
Overall look of the data that there were more male passengers than female especially for the third class.
![rplot02](https://cloud.githubusercontent.com/assets/14057932/15988181/050793be-300c-11e6-9532-772aad355623.png)
This is the death and survival comparison. Left graph showes people who did not survive and right gragh show the survival counts (how many people) of the passengers. 
The death rate for third class passenger were super high :-(. Female passengers had high survival rate especially for the first class female. 

![rplot03](https://cloud.githubusercontent.com/assets/14057932/15988182/0710921e-300c-11e6-8b77-386b6bf49ab4.png)
Above graph using dot graph. 
