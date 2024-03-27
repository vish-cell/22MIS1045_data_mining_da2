data = readtable('Salary Data.csv');
salary = data.Salary;
X = salary;
distances = pdist(X, 'euclidean');
Z = linkage(distances, 'complete');

figure;
dendrogram(Z);
title('Dendrogram for Hierarchical Clustering (ROCK)');
xlabel('Data Points');
ylabel('Distance');

threshold = 100000;  
idx = cluster(Z, 'cutoff', threshold, 'criterion', 'distance');

figure;
scatter(salary, 1:numel(salary), 50, idx, 'filled');
title('ROCK Clustering of Salary Data');
xlabel('Salary');
ylabel('Index');
