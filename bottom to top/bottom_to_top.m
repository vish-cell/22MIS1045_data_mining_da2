data = readtable('Salary Data.csv');  
salary = data.Salary;
Z = linkage(salary, 'average');  
figure;
dendrogram(Z);
title('Dendrogram for (Bottom to Top)');
xlabel('Data Points');
ylabel('Distance');

ylim([0, max(Z(:, 3)) + 10]);  
c = cluster(Z, 'Maxclust', 3);  

disp('Cluster indices:');
disp(c);
