%% question 1
clc
clear all
close all
y1=Sinfn(1,20,1);
subplot(2,1,1),stem(y1,'.','LineWidth',2,'MarkerEdgeColor','r','MarkerFaceColor','r','MarkerSize',20)
ylabel('sin(2pif/fsn)');
xlabel('samples, f=1hz,fs=20hz,period=1');
title('simpled singal')
grid on

t=0:0.01:1;
y2=sin(2*pi*t);
subplot(2,1,2),plot(y2,'r');
ylabel('sin(2pift)');
xlabel('samples, f=1hz,fs=20hz,period=1');
title('real singal')
grid on

%% question 2
% we define infinity to any value supperior than 10000 or infierior than
% -10000.
Fs=[];%sample effect
for i=20:10:200
    f=Step(4,i);
    Fs=[Fs Prim(f)];
end
figure
T=[20:10:200];
stem(T,Fs,'.','LineWidth',2,'MarkerEdgeColor','r','MarkerFaceColor','r','MarkerSize',20)
ylabel('accumulation');
xlabel('samples length');
title('stability observation test')
grid on
    
%% question 3

z=0:10;
y3=(3).^z;
figure
stem(y3,'.','LineWidth',2,'MarkerEdgeColor','r','MarkerFaceColor','r','MarkerSize',20)
ylabel('impulse response');
xlabel('samples');
title('stability study')
grid on