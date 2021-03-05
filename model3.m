N = 110000; %地区总人数10000(人)
I = 2; %初(t=0)病例2(人)
r = 5;  %每人每天接触人数 
p = 0.03; %接触后传染概率
S = N; %易感者(人)
R = 0; %康复者(人)
q = 0.1; %康复概率0.1
dt=0.01;%微小时间间隔0.01
ArrayS=[];
ArrayI=[];
ArrayR=[];
ArrayT=[];
for t=5:dt:256
    ArrayT=[ArrayT,t];
    ArrayS=[ArrayS,S];
    ArrayI=[ArrayI,I];
    ArrayR=[ArrayR,R];
    I =I+dt*( r*p*I*S/N-q*I );
    S =S+dt*( -r*p*I*S/N );
    R =R+dt*q*I;
end
plot(ArrayT,ArrayI,'r');
hold on
plot(1:166,currentConfirmedCount,'b');
title(['N=',num2str(N),',I(0)=',num2str(ArrayI(1)),',r=',num2str(r),',p=',num2str(p),',q=',num2str(q)]);
legend('感染者I','实际数据');
xlabel('时间t(天)'); %添加横轴标签
ylabel('人数(人)'); %添加纵轴标签