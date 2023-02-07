# Support_Vector_Regression
This is a short description of SVR with templates for implementing it in Python and R

Support vector regression is a supervised learning algorithm pioneered in the 1990s by Vladimir Vapnik. It is similar to linear regression models in that it searches for an error minimizing best fit for the data, but instead of a just a line, it fits a decision boundary "tube" with a width of $2\epsilon$ around the best fit line. The area between the decision boundaries and the line is termed the "epsilon-insensitive tube". The goal of SVR is to 1) choose the line that captures the most points inside the $\epsilon$-insenstive tube, and 2) to minimize the error of the points falling outside the tube. 

The points outside of tube contribute the error to the model, and are the nominal "support vectors" for the tube. 

Non-linear SVR projecst the data onto a kernel (e.g., a Gaussian radial basis function), creating a hyperplane fit to the data from the linear model. The 2-dimensional line where the hyperplane intersects the kernel function constitutes the fit. 

Data for this example are a play data set describing the sales returns from tv marketing. 
