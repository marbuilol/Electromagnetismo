clear all; close all; clc;
%Datos
N1=400; R1=1; l=0.29; N2=200; R2=2200; 
C2=10.^-5; A=3.61.*(10.^-4);
uV1=0.01; uR1=0.1; ul=0.01; uV2=0.01;
uR2=0.1; uC2=5.*(10.^-7); uA=5.*(10.^-7);
mu0=4.*pi().*(10.^-7);                      %permeabilidad del vacío

%Puntos escogidos de la curva de histéresis a V 100%
Ms=870050.88; Mr=424988.047; Br=0.534057; Hc=374.80938;

%Tensiones V1 y V2 de cada punto correspondiente
V1Ms=1.24723; V2Ms=3.595386; V1Mr=0.000723; V2Mr=1.752678;
V1Br=0.000732; V2Br=1.752678; V1Hc=0.271737; V2Hc=0;
V1Hs=V1Ms; V2Bs=V2Ms; V1Hr=V1Mr;

%Cálculo de u_Hc
uHc=sqrt((((N1/(l*R1))^2)*(uV1^2))+((((N1*V1Hc)/((l^2)*R1))^2)*(ul^2))...
+((((N1*V1Hc)/(l*(R1^2)))^2)*(uR1^2)))
UHc=2*uHc %Incertidumbre expandida con K=2 confianza 95%
porcuHc=(uHc/Hc)*100 %Porcentaje de u_Hc con respecto a Hc

%Cálculo de u_Hs
uHs=sqrt((((N1/(l*R1))^2)*(uV1^2))+((((N1*V1Hs)/((l^2)*R1))^2)*(ul^2))...
+((((N1*V1Hs)/(l*(R1^2)))^2)*(uR1^2)));

%Cálculo de u_Hr
uHr=sqrt((((N1/(l*R1))^2)*(uV1^2))+((((N1*V1Hr)/((l^2)*R1))^2)*(ul^2))...
+((((N1*V1Hr)/(l*(R1^2)))^2)*(uR1^2)));

%Cálculo de u_Br
uBr=sqrt((((R2*C2)/(A*N2))^2)*(uV2^2)+(((C2*V2Br)/(A*N2))^2)*(uR2^2)...
    +(((R2*V2Br)/(A*N2))^2)*(uC2^2)+(((R2*V2Br*C2)/((A^2)*N2))^2)*(uA^2))
UBr=2*uBr %Incertidumbre expandida con K=2 confianza 95%
porcuBr=(uBr/Br)*100 %Porcentaje de u_Br con respecto a Br

%Cálculo de u_Bs
uBs=sqrt((((R2*C2)/(A*N2))^2)*(uV2^2)+(((C2*V2Bs)/(A*N2))^2)*(uR2^2)...
    +(((R2*V2Bs)/(A*N2))^2)*(uC2^2)+(((R2*V2Bs*C2)/((A^2)*N2))^2)*(uA^2));

%Cálculo de u_Ms
uMs=sqrt(((1/mu0)^2)*(uBs^2)+(uHs^2))
UMs=2*uMs %Incertidumbre expandida con K=2 confianza 95%
porcuMs=(uMs/Ms)*100  %Porcentaje de u_Ms con respecto a Ms

%Cálculo de u_Mr
uMr=sqrt(((1/mu0)^2)*(uBr^2)+(uHr^2))
UMr=2*uMr %Incertidumbre expandida con K=2 confianza 95%
porcuMr=(uMr/Mr)*100 %Porcentaje de u_Mr con respecto a Mr




