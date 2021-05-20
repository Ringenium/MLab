clear, clc, close all
%Расчет сопротивления емкости
%задать a,b,f
a=0.1;      %значение емкости C
b=-6;       %значение степени множителя емкости -3 мили -6 микро -9 нано
a2=1;        %значение емкости C2
b2=-6;
syms f;
syms Z;
syms Z2;

%Расчет сопротивления первого конденсатора

C=(a*(10^(b)));             %значение емкости
Z=1/(2*pi*C*f);             %формула расчета сопротивления конденсатора от частоты

C2=(a2*(10^(b2)));          %значение емкости
Z2=1/(2*pi*C2*f);           %формула расчета сопротивления конденсатора от частоты

f=linspace(1,600,600);  %частота в герцах 
y = subs(Z);
y2 = subs(Z2);

% График
figure('Name','Сопротивление конденсаторов','NumberTitle','off');
plot(f,y,f,y2)
title('X_c')
ylabel('Ω')
xlabel('Hz')
grid on 
grid minor

legend('C','C2')


% figure('Name','Коэффициент усиления расчетный','NumberTitle','off');
% Rg=[0.510 1 2.4 5.1 10 20];
% KUrc=[615 314 130 61 31 15];  %расчетный коэф усиления в разах
% KUr=[1215 620 258 121 62 31]; %расчетный коэф усиления в разах
% p=plot(Rg,KUrc,Rg,KUr,'--')
% p(1).LineWidth = 1.5;
% p(2).LineWidth = 1.5;
% title('Коэффициент усиления расчетный')
% ylabel('Ku(раз)')
% xlabel('R kΩ')
% grid on 
% grid minor
% legend('R2=314kΩ(C)','R2=620kΩ')
% 
% 
% 
% figure('Name','Коэффициент усиления измеренный','NumberTitle','off');
% Rg=[0.510 1 2.4 5.1 10 20];
% KUrc=[0.6 0.6 0.5 0.45 0.3 0.2];  %расчетный коэф усиления в милливольтах
% KUr=[1.2 1.1 0.9 0.7 0.5 0.3]; %расчетный коэф усиления в милливольтах
% p=plot(Rg,KUrc,Rg,KUr,'--')
% p(1).LineWidth = 1.5;
% p(2).LineWidth = 1.5;
% title('Коэффициент усиления измеренный')
% ylabel('Ku(mV)')
% xlabel('R kΩ')
% grid on 
% grid minor
% legend('R2=314kΩ(C)','R2=620kΩ')




% figure('Name','АЧХ','NumberTitle','off');
% f=[0.2 0.3 0.4 0.5 0.6 0.7 0.8 0.9 1 2 3 10 20 30 40 50 80 100 200];
% A=[0.4 0.56 0.72 0.84 0.96 1 1.12 1.16 1.24 1.47 1.52 1.52 1.40 1.22 1.12 0.96 0.72 0.64 0.4];  %расчетный коэф усиления в милливольтах
% A1=A/0.01;
% f2=[0.2 0.3 0.4 0.5 0.6 0.7 0.8 0.9 1 2 3 4 5 6 10 12 15 20 25 30 35 40 45 50 70 100 110 150 200 300];
% A=[0.048 0.048 0.048 0.048 0.048 0.048 0.048 0.048 0.048 0.056 0.064 0.080 0.104 0.120 0.280 0.368 0.544 0.880 1.28 1.72 2.20 2.64 2.68 2.7 2.8 2.6 2.3 1.64 0.96 0.48];
% A2=A/0.01;
% %KUr=[1.2 1.1 0.9 0.7 0.5 0.3]; %расчетный коэф усиления в милливольтах
% p=plot(f,A1,f2,A2,'--')
% p(1).LineWidth = 1.5;
% p(2).LineWidth = 1.5;
% title('АЧХ старого усилителя')
% ylabel('A(Sout/Sin)')
% xlabel('f (kHz)')
% grid on 
% grid minor
% legend('OPA363AIDBV','OPA363AIDBV+OPA2363')
% 
% figure('Name','АЧХ2','NumberTitle','off');
% f=[0.2 0.3 0.4 0.5 0.6 0.7 0.8 0.9 1 2 3 10 20 40 50 60 80 100 150 200];
% A=[0.120 0.2 0.32 0.4 0.48 0.56 0.640 0.720 0.760 0.96 1 1.04 1.04 1.04 1.04 0.94 0.82 0.72 0.5 0.4];  %расчетный коэф усиления в милливольтах
% A1=A/0.01
% f2=[0.2 0.3 0.4 0.5 0.6 0.7 0.8 0.9 1 2 3 4 5 6 10 12 15 20 25 30 35 40 45 50 70 100 110 150 200 300];
% A=[0.048 0.048 0.048 0.048 0.048 0.048 0.048 0.048 0.048 0.060 0.060 0.080 0.1 0.1 0.18 0.28 0.38 0.66 1.02 1.44 1.90 2.42 2.7 2.72 2.8 2.65 2.5 1.76 1.04 0.48];
% A2=A/0.01
% %KUr=[1.2 1.1 0.9 0.7 0.5 0.3]; %расчетный коэф усиления в милливольтах
% p=plot(f,A1,f2,A2,'--')
% p(1).LineWidth = 1.5;
% p(2).LineWidth = 1.5;
% title('АЧХ нового усилителя')
% ylabel('A(Sout/Sin)')
% xlabel('f (kHz)')
% grid on 
% grid minor
% legend('OPA607DCK','OPA607DCK+OPA2363')











