# SVR

# Importing the dataset
dataset = read.csv('tvmarketing.csv')
dataset = dataset[2:3]

# Feature scaling
# because of the internal mechanics of the R SVR function, feature scaling is not necessary

# Fitting the SVR to the dataset
#install.packages('e1071')
library(e1071)
# default kernel is Gaussian RBF
regressor = svm(formula = Sales ~ ., 
                data = dataset,
                type = 'eps-regression')  # this is the type we need for regression, not classification

# Predicting a new result
y_pred = predict(regressor, data.frame(TV = 100))

# Visualizing the SVR results
install.packages('ggplot2')
library(ggplot2)
ggplot() + 
  geom_point(aes(x = dataset$TV, y = dataset$Sales),
             color = 'green') + 
  geom_line(aes(x = dataset$TV, y = predict(regressor, newdata = dataset)),
            color = 'blue') +
  ggtitle('Support Vector Regression') + 
  xlab('TV Marketing Budget') + 
  ylab('Sales')
