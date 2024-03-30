% Load sample dataset
data = readtable('Salary Data.csv');  % Load the dataset

% Extract Salary data
salary = data.Salary;

% Convert salary data to a numeric matrix
X = salary;

% Perform AGNES clustering
ag = clusterdata(X, 'Linkage', 'average', 'MaxClust', 3);  % AGNES clustering with average linkage and 3 clusters

% Plot the Scatter Plot with cluster colors and individual salary points
figure;
scatter(salary, 1:numel(salary), 50, ag, 'filled');  % Plot each data point with its assigned cluster color
title('AGNES Clustering of Salary Data');
xlabel('Salary');
ylabel('Index');
