clc
clear



S = 1813.03; % Current Price ($)
X = 1820.00; % Strike Price ($)
r = 2.34; % Risk free interest rate (%)
sigma = 24.7; % Standard Deviation of a stocks returns (%) Volatility
T = 6; % Expiry Date (days)

[TheoreticalCallValue,TheoreticalPutValue] = bs(S,X,r,sigma,T) %#ok<NOPTS>

