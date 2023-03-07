A=10
f0=60
T0=1/f0
omega0=2*pi*f0
N=1
Res=50

t=0:T0/Res:N*T0-T0/Res
soma=0

for k=1:3
    y=A*sin(k*omega0*t)
    subplot(2,2,k)
    plot(t,y,'r')
    soma=soma+y
    xlabel('Tempo [s]')
    ylabel('Tens�o [V]')
    title('Tens�o x tempo')
    
end

subplot(2,2,4)
plot(t,soma,'k')
xlabel('Tempo [s]')
ylabel('Tens�o [V]')
title('Tens�o x tempo')