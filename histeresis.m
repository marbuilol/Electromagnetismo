clear all; close all; clc;
format long
syms x
sec=3.61.*(10.^-4); %Sección del núcleo del hierro
l=0.29; % longitu del núcleo de hierro
f=50;   %frecuencia
%Curva 1 100%
j=importdata('datosc11.txt'); %datos desde el punto -Hc hasta la saturación
u=importdata('datosc12.txt');%nube de puntos desde Hc hasta el punto de satu
                              %ración
L=j(:,1);  M=j(:,2); 
LL=u(:,1); MM=u(:,2);
plot(L,M,'o','markersize',3)   %Nube de puntos desde -Hc hasta el punto de 
%saturación
hold on
plot(LL,MM,'o','markersize',3) %Gráfica de medio ciclo desde -Hc hasta Hc
k=polyfit(L,M,3);   %Obtención de un polinomio que se aproxima por la nube
                    %de puntos de -Hc a (Hs,Bs)
p=polyfit(LL,MM,3); %Obtención de un polinomio que se aproxima por la nube
                    %de puntos de Hc a (Hs,Bs)
K=poly2sym(k);      %tranformación de notación, de vector a simbólico
P=poly2sym(p);
fplot(K,'r','linewidth',1) %Gráfica del polinomio hallado
fplot(P,'b','linewidth',1)
xlim([-400 1700])           
ylim([0 1.15])
grid on
%Límites de integración. Se obtienen observanod la gráfica
a1=-372.62;    %-Hc
b1=1377.24;    %Hs
a2=374.809;    %Hc
b2=b1;    
%Cálculo de la energía disipada por volumen
q1=polyint(k);
I1 = diff(polyval(q1,[a1 b1]));
q2=polyint(p);
I2 = diff(polyval(q2,[a2 b2]));
Area_total1=2*(I1-I2) %Como la curva es simétrica, al calcular el área
                      %por encima del eje X, para hallar la total solo es 
                      %multiplicara por 2
E1=Area_total1*sec*l  %Cálculo de la energía disipada 
P1=E1*f               %Cálculo de la potencia
%Curva 2 80%

j=importdata('datosc21.txt');
u=importdata('datosc22.txt');
L=j(:,1);  M=j(:,2); 
LL=u(:,1); MM=u(:,2);
plot(L,M,'x','markersize',3)
hold on
plot(LL,MM,'x','markersize',3)

k=polyfit(L,M,3);
p=polyfit(LL,MM,3);
K=poly2sym(k);
P=poly2sym(p);

fplot(K,'y','linewidth',1)
fplot(P,'m','linewidth',1)
xlim([-400 1700])
ylim([0 1.15])
grid on

a1=-324;
b1=1088.56;
a2=317.844;
b2=b1;

q1=polyint(k);
I1 = diff(polyval(q1,[a1 b1]));
q2=polyint(p);
I2 = diff(polyval(q2,[a2 b2]));
Area_total2=2*(I1-I2)
E2=Area_total2*sec*l
P2=E2*f
%Curva 3 60%

j=importdata('datosc31.txt');
u=importdata('datosc32.txt');
L=j(:,1);  M=j(:,2); 
LL=u(:,1); MM=u(:,2);
plot(L,M,'o','markersize',3)
hold on
plot(LL,MM,'o','markersize',3)

k=polyfit(L,M,3);
p=polyfit(LL,MM,3);
K=poly2sym(k);
P=poly2sym(p);

fplot(K,'c','linewidth',1)
fplot(P,'g','linewidth',1)
xlim([-400 1700])
ylim([0 1.15])
grid on

a1=-265;
b1=699.735;
a2=253.577;
b2=b1;

q1=polyint(k);
I1 = diff(polyval(q1,[a1 b1]));
q2=polyint(p);
I2 = diff(polyval(q2,[a2 b2]));
Area_total3=2*(I1-I2)
E3=Area_total3*sec*l
P3=E3*f
%Curva 4 40%

j=importdata('datosc41.txt');
u=importdata('datosc42.txt');
L=j(:,1);  M=j(:,2); 
LL=u(:,1); MM=u(:,2);
plot(L,M,'o','markersize',3)
hold on
plot(LL,MM,'o','markersize',3)

k=polyfit(L,M,3);
p=polyfit(LL,MM,3);
K=poly2sym(k);
P=poly2sym(p);

fplot(K,'k','linewidth',1)
fplot(P,'r','linewidth',1)
xlim([-400 1700])
ylim([0 1.15])
grid on

a1=-203;
b1=475.923;
a2=205.965;
b2=b1;

q1=polyint(k);
I1 = diff(polyval(q1,[a1 b1]));
q2=polyint(p);
I2 = diff(polyval(q2,[a2 b2]));
Area_total4=2*(I1-I2)
E4=Area_total4*sec*l
P4=E4*f
%Curva 5 20%
j=importdata('datosc51.txt');
u=importdata('datosc52.txt');
L=j(:,1);  M=j(:,2); 
LL=u(:,1); MM=u(:,2);
plot(L,M,'x','markersize',3)
hold on
plot(LL,MM,'x','markersize',3)

k=polyfit(L,M,3);
p=polyfit(LL,MM,3);
K=poly2sym(k);
P=poly2sym(p);

fplot(K,'b','linewidth',1)
fplot(P,'y','linewidth',1)
xlim([-400 1700])
ylim([0 1.15])
grid on

a1=-126.5;
b1=290.123;
a2=133.883;
b2=b1;

q1=polyint(k);
I1 = diff(polyval(q1,[a1 b1]));
q2=polyint(p);
I2 = diff(polyval(q2,[a2 b2]));
Area_total5=2*(I1-I2)
E5=Area_total5*sec*l
P5=E5*f






