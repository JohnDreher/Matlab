clc
clear
cla reset

a=rand(1,5000);
n(1,:)=normpdf(a,0,.05)-0.5;

s(1,1)=100;
for i = 1:5000
    s(1,i+1)=s(i)+n(1,i);
end

hold on
plot(s)

a=rand(1,5000);
n(1,:)=normpdf(a,0,.05)-0.5;

q(1,1)=100;
for i = 1:5000
    q(1,i+1)=q(i)+n(1,i);
end

plot(q)
hold on

a=rand(1,5000);
n(1,:)=normpdf(a,0,.05)-0.5;

r(1,1)=100;
for i = 1:5000
    r(1,i+1)=r(i)+n(1,i);
end

plot(r)
hold off