clear, clc, close all
%Расчет сопротивления емкости
%задать a,b,f
a=0.1;      %значение емкости
b=-6;       %значение степени множителя емкости -3 мили -6 микро -9 нано
syms f;
syms Z;

C=(a*(10^(b)));             %значение емкости
Z=1/(2*pi*C*f);             %формула расчета сопротивления конденсатора от частоты
f=linspace(1,200000,100);   %частота в герцах

y = subs(Z);

% График
plot(f,y)
title('X_c')
ylabel('Ω')
xlabel('Hz')
grid on

% clear, clc, close all
% syms x
% f = x*2^(3*x)
% df = diff(f)
% F = int(f)
%  
%  
% x = linspace(0,4,200);
% 
% y1 = subs(f);
% y2 = subs(df);
% y3 = subs(F);
%  
% plot(x,y1,x,y2,x,y3)
% legend('f(x)','df/dx','F(x)')
% grid on
