clear;
clc;
tic;
%% ODE 45
    [x,y]=ode45('Malaria',[0 400],[51088 19158 31930 25544 51088 19158 31930 25544 51088 19158 31930 25544 51088 19158 31930 25544]);
%% Grafik Simulasi 1
    figure(1)
    plot(x,y(:,1),x,y(:,2),x,y(:,3),x,y(:,4))
    xlabel('T (month)');
    ylabel('Population');
    legend('Susceptible','Exposed','Infected','Recovered');
    grid on
%% Grafik Simulasi 2
    figure(2)
    plot(x,y(:,5),x,y(:,6),x,y(:,7),x,y(:,8))
    xlabel('T (month)');
    ylabel('Population');
    legend('Susceptible','Exposed','Infected','Recovered');
    grid on
%% Grafik Simulasi 3
    figure(3)
    plot(x,y(:,9),x,y(:,10),x,y(:,11),x,y(:,12))
    xlabel('T (month)');
    ylabel('Population');
    legend('Susceptible','Exposed','Infected','Recovered');
    grid on
%% Grafik Simulasi 4
    figure(4)
    plot(x,y(:,13),x,y(:,14),x,y(:,15),x,y(:,16))
    xlabel('T (month)');
    ylabel('Population');
    legend('Susceptible','Exposed','Infected','Recovered');
    grid on
%% Running
    Waktu = toc;