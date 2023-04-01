clear
clc

%% Load Data

T = readtable('data_case.csv','NumHeaderLines',1); 
T = sortrows(T,'AvgDailyUnits','descend');
T([1:7],:) = [];
orders = T.AvgDailyOrders;
units = T.AvgDailyUnits;
units_order = units./orders;

%% Option A

machines_A = 1; %Number of machines A
rate_1 = 1600*machines_A;
time_cust = 10; % Several minutes per custumer

%% Option B

machines_B = 3; %Number of machines B
rate_B = 700*machines_B;
time_100unit = (15/60); % Several seconds per 100 units
time_order = 0.5; % 30 seconds per every new order

%% Cost Analysis

% Salary = 50000; % $/year 25$/hr per operator
% shifts = 3; % 3 shifts of 8 hours a day
% cost_A = 1200000; %Upfront cost machine A
% cost_B = 10000; %Upfront cost machine B
% 
% n = [0:1:25]; % years
% r = 0.06; % Interest rate
% 
% PV_salary = Salary .*((1-(1./((1+r).^n)))./r); %Present value of n years of salary
% total_cost_A = cost_A + (2*shifts.*PV_salary);
% total_cost_B_1 = (cost_B + (1*shifts.*PV_salary)).*1;
% total_cost_B_2 = (cost_B + (1*shifts.*PV_salary)).*2;
% total_cost_B_3 = (cost_B + (1*shifts.*PV_salary)).*3;
% total_cost_B_4 = (cost_B + (1*shifts.*PV_salary)).*4;
% % ratio_cost = total_cost_A./total_cost_B; %How many machines B would have the same cost of 1 machine A
% 
% figure
% plot(n,total_cost_A,'k','LineWidth',2)
% hold on
% plot(n,total_cost_B_1)
% hold on
% plot(n,total_cost_B_2)
% hold on
% plot(n,total_cost_B_3)
% hold on
% plot(n,total_cost_B_4)
% 
% axis square;
% set(gca,'FontSize',25)
% leg.FontSize = 18;

%% Calculations

total_time_1 = 0;
total_time_2 = 0;

for i=1:length(orders) %Loop over customers
    
    order = orders(i);
    unit = units(i);
    units_order(i);
    
    minutes_1 = unit/rate_1;
    time_all_cust_1(i) = minutes_1 + time_cust;
    if total_time_1 + minutes_1 + time_cust >= 24*60
        minutes_left = 1440 - total_time_1 - time_cust;
        unit_left = minutes_left*rate_1;
        stop=1;
    end
    total_time_1 = total_time_1 + minutes_1 + time_cust;

    
    minutes_2 = unit/rate_B;
    time_100unit_2 = time_100unit.*(unit/(100*machines_B));
    time_new_order = (time_order*order)/machines_B;
    time_all_cust_2(i) = minutes_2 + time_100unit_2 + time_new_order; 

    total_time_2 = total_time_2 + minutes_2 + time_100unit_2 + time_new_order;

end

%% Rates

rates_all_1 = units./time_all_cust_1';
rate__all_2 = units./time_all_cust_2';

figure
plot(rates_all_1,'-o')
hold on
plot(rate__all_2,'-+')
hold on 

axis square;
set(gca,'FontSize',25)
leg.FontSize = 18;

 %% Units/order
figure
plot(units_order,'-s')

axis square;
set(gca,'FontSize',25)
leg=legend('Target Spectrum','Final Spectrum','Initial Spectrum');
leg.FontSize = 18;
