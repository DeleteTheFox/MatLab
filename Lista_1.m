%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Aluno: João Fernando Rangel
%Rascunho para resolução da primeira lista de exercícios
%Aplica degrau unitário a uma funcao
%Data de criação: 04/03/2023  Ultima modificação: 04/03/2023
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
close all
clear all
t = -10:1:10;
tamanho = length(t);
saida = 0:0:100;
x = 0:0:100;


%degrau 1
for i=1:1:tamanho
    %x(i) = t(i)*(heaviside(t(i)-heaviside(t(i)-1)));%funcao(i)=x(t)
    funcao_mais_um(i) = (t(i)+1)*(heaviside(t(i)+1) - heaviside(t(i)));
    funcao_menos_um(i) = (1-t(i))*(heaviside(1-t(i))-heaviside(-t(i)));
    saida(i) = funcao_mais_um(i) + funcao_menos_um(i);
end

%axis([(t(1)-1) (t(tamanho)+1) (saida(1)-1) (saida(tamanho)+1)]) 
figure(1)
plot(t,saida)
xlim([t(1)-1 t(tamanho)+1])
ylim([(saida(1)-1) (saida(tamanho)+1)])
