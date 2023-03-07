clc
clear all
close all
%criar matriz 1d
a = [1;2;3];
c=a';
d=1:0.01:17;
e=linspace(1,3,124);

%preencher agora
f = [a; 7];
g = [f;8;9;10];
h=[g' 8 9 10];
i=[];

for k=1:15
    y=2^k;
    i=[i y];
end

v=[70 80 246789 2 70 897]
v(v<150)=0