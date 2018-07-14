

function [C, P] = bs(S,X,r,sigma,T)

T = T/365;
sigma=sigma/100;
r = r/100;

d1 = (log(S/X)+(r-.5*sigma.^2)*T)/(sigma*sqrt(T));
d2 = d1 - sigma*sqrt(T);

fun = @(x) exp(-0.5*x.^2);
N = @(x) (1/(sqrt(2*pi)))*integral(fun,-Inf,x);

C = S*N(d1)-X*exp(-r*T)*N(d2);
P = X*exp(-r*T)*N(-d2)-S*N(-d1);
end