N = 100000; %地区总人数10000(人)
I = 2; %初(t=0)病例2(人)
r = 10;  %每人每天接触人数 10
p = 0.05; %接触后传染概率 0.05
S = N; %易感者(人)
R = 0; %康复者(人)
q = 0.1; %康复概率0.1
dt=0.01;%微小时间间隔0.01
ArrayS=[];
ArrayI=[];
ArrayR=[];
ArrayT=[];
for t=0:dt:128
    ArrayT=[ArrayT,t];
    ArrayS=[ArrayS,S];
    ArrayI=[ArrayI,I];
    ArrayR=[ArrayR,R];
    I =I+dt*( r*p*I*S/N-q*I );
    S =S+dt*( -r*p*I*S/N );
    R =R+dt*q*I;
end
plot(ArrayT,ArrayS,'b');
hold on
plot(ArrayT,ArrayI,'r');
hold on
plot(ArrayT,ArrayR,'g');
title(['模型二(SIR)：N=',num2str(N),',I(0)=',num2str(ArrayI(1)),',r=',num2str(r),',p=',num2str(p),',q=',num2str(q)]);
legend('易感者S','感染者I','康复者');
xlabel('时间t(天)'); %添加横轴标签
ylabel('人数(人)'); %添加纵轴标签