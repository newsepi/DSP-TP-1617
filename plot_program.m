%test function
clc
clear all
close all

y=Dirac(10);
subplot(5,1,1),stem(y,'.','LineWidth',2,'MarkerEdgeColor','r','MarkerFaceColor','r','MarkerSize',20)
axis([0 20 0 2])
ylabel('Dirac');

y=Step(10);
subplot(5,1,2),stem(y,'.','LineWidth',2,'MarkerEdgeColor','r','MarkerFaceColor','r','MarkerSize',20)
axis([0 20 0 2])
ylabel('Step');

y=Ramp(2,10);
subplot(5,1,3),stem(y,'.','LineWidth',2,'MarkerEdgeColor','r','MarkerFaceColor','r','MarkerSize',20)
ylabel('Ramp');

y=Geo(2,10);
subplot(5,1,4),stem(y,'.','LineWidth',2,'MarkerEdgeColor','r','MarkerFaceColor','r','MarkerSize',20)
ylabel('Geo');

y=Box(3,10);
subplot(5,1,5),stem(y,'.','LineWidth',2,'MarkerEdgeColor','r','MarkerFaceColor','r','MarkerSize',20)
axis([0 20 0 2])
ylabel('Box');
xlabel('samples');

figure 
y=Sinfn(10,100,1);
subplot(3,1,1),stem(y,'.','LineWidth',2,'MarkerEdgeColor','r','MarkerFaceColor','r','MarkerSize',20)
ylabel('sin(nfTs)');
xlabel('samples, f=10hz,Ts=100,n=1');

y=Sinfn(10,1000,2);
subplot(3,1,2),stem(y,'.','LineWidth',2,'MarkerEdgeColor','r','MarkerFaceColor','r','MarkerSize',20)
ylabel('sin(nfTs)');
xlabel('samples, f=10hz,Ts=1000,n=2');

y=Sinfn(10,30,2);
subplot(3,1,3),stem(y,'.','LineWidth',2,'MarkerEdgeColor','r','MarkerFaceColor','r','MarkerSize',20)
ylabel('sin(nfTs)');
xlabel('samples, f=10hz,Ts=30,n=2');
