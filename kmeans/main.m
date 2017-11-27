%% main.m
clear;clc;
close all;
dataSet = file2matrix('testSet.txt');
[centroids, clusterAssment] = kMeans(dataSet,4);
plot_kmeans(dataSet,centroids,clusterAssment);