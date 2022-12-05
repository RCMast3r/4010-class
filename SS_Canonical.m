clc;clear all;
a=[0.0784]; b=[1 0.5696 0];
G=tf(a,b)
[A B C D]=tf2ss(a,b)
csys = canon(G,'companion');
