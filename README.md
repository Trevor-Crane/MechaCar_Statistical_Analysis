# MechaCar_Statistical_Analysis

## Linear Regression to predict MPG
We were given test results from 50 prototype MechaCars that were produced with multiple design specifications to identify ideal vehicle performance. The metrics collected for each vehicle include vehicle length, vehicle weight, spoiler angle, drivetrain, and whether they were all wheel drive or not. Using R, we performed a multiple linear regression test to predict the miles per gallon of each prototype using the above variables. Our results were: <br>
![multiple_linear_regression_mpg](https://user-images.githubusercontent.com/107770394/192868929-4a9c66e3-a8f3-4452-b0f6-d530c340e1f9.png) <br>
Then, when asking R for the summary of the statistical metrics, we were given this: <br>
![summary_mlr_mpg](https://user-images.githubusercontent.com/107770394/192869243-c538239d-84bc-4666-8a15-35287e1f91da.png) <br>
### Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?
In our summary output, the Pr(>|T|) value represents the probability that each coeeficient contributes a random amount of variance. When using a significance level of 0.05, we can determine that anything lower than that provides a non random variance. As such, we can determine that both the vehicle length and ground clearance are both non-random amounts of variance. 
### Is the slope of the linear model considered to be zero?
In order to see if the slope of the linear model is zero, we would have to look at our output of the linear regression model. Although there are some cases where it is close, such as the vehicle weight and spoiler angle, the slope can be considered non-zero. 
### Does the linear model predict mpg of MechaCar protothypes effectively?
When once again looking at our summary output, we can see that our r-squared value is 0.7149. This means that roughly 71% of the variability is explained in this model. So, although this number is high, there could be other variable to help determine the mpg to get us closer to 100%.

## Summary Statistics on Suspension Coils
We were also given results produced from multiple production lots that tests weight capacity of multiple suspension coils to determine if the manufacturing process in consistent across the lots. To help us determine this, we looked at the mean, median, variance, and the standard deviation for all the lots, as well as each lot indiviually. Here is the results for all the lots: <br>
(insert total summary here) <br>
And here is the results for each lots here: <br>
(insert lot summary here) <br>
The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. As a whole, the manufacturing lots are upholding this design specifications with a variance of 62.29. However, upon closer inspection of each lot, lot three has a variance of 170.29, which doesn't meet the design specifications.

## T-Tests on Suspension Coils
Finally, we are tasked with finding if either all the lots are each lot individually are statistically different from the population mean of 1,500 pounds per square inch. In order to do this, we performed a t-test on R, and here is the results for all of the lots: <br>
![t-test_all_lots](https://user-images.githubusercontent.com/107770394/192883946-99221865-7dfd-458a-b4c2-b04c66d6d95c.png) <br>
Here is the t-test for lot 1: <br>
![t-test_lot1](https://user-images.githubusercontent.com/107770394/192884091-18d40929-0960-4892-ac71-8957c2aae12c.png) <br>
Here is the t-test for lot 2: <br>
![t-test_lot2](https://user-images.githubusercontent.com/107770394/192884210-5aaa6997-3078-4a2d-9b2a-65cdac5a2285.png) <br>
And finally, here is the t-test for lot 3: <br>
![t-test_lot3](https://user-images.githubusercontent.com/107770394/192884393-7367f6f4-dccc-4b85-b45c-92dc064b04a5.png) <br>
Once again, in order to test for significance, we will see if the p-value is above or below our significance level of .05 percent. As we can see, all the lots combined, as well as lots 1 and 2 have p-values above 0.05. However, lot 3 has a p-value of 0.04, which means that the two means are statistically different. 
## Study Design: MechaCar vs Competition
When trying to see how MechaCar performs against others, there are many factors that consumers are interested in. For instance, there is cost, safety rating, horse power etc. For the sake of another project, lets take the cost of the car into account. For instance, let's say we are trying to prove cost can affect people buying new cars. The null hypothesis is cost is not affect people buying new cars. We could do a survey where one of the questions asks did cost affect you buying this car. With the results, we can perform a t-test, and see if the significance level of 0.05 is above or below the p-value.
