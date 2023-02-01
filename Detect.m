% Project Title: Automatic Diabetic Retinopathy Detection System

clc
close all 
clear all

    

%plotroc(ACTUAL,PREDICTED);
set(gca,'xticklabel',{'Number of Images','Brown Spot','Halo','Healthy Eye'});
c = categorical({'Number of Images','Severe DR','Mild DR','Healthy Eye'});
data = [10 10 10;8 0 2;0 10 0;1 0 9];
bar(c,data)

