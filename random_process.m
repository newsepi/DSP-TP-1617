n1 = normrnd(0,1,[1 1000]);
x=-4:0.008:4;
y=(500/sqrt(2*pi))*exp(-(x.^2)/2);
subplot(2,2,1)
hist(n1)
hold on
plot(x,y,'r')
hold off
title('random process with 1000 samples')


n2 = normrnd(0,1,[1 10000]);
x=-4:0.0008:4;
y=(5000/sqrt(2*pi))*exp(-(x.^2)/2);
subplot(2,2,2)
hist(n2)
hold on
plot(x,y,'r')
hold off
title('random process with 10000 samples')
%% uniform las of the random process U
m1=rand(1000,1);
subplot(2,2,3),hist(m1)
title('uniformly distributed with 1000 samples')
m2=rand(10000,1);
subplot(2,2,4),hist(m2)
title('uniformly distributed with 10000 samples')
%% autocorrelation 
P1=autocorr(n1');
P2=autocorr(n2');

P3=autocorr(m1)
P4=autocorr(m2)