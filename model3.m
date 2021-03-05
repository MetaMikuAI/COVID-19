N = 110000; %����������10000(��)
I = 2; %��(t=0)����2(��)
r = 5;  %ÿ��ÿ��Ӵ����� 
p = 0.03; %�Ӵ���Ⱦ����
S = N; %�׸���(��)
R = 0; %������(��)
q = 0.1; %��������0.1
dt=0.01;%΢Сʱ����0.01
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
legend('��Ⱦ��I','ʵ������');
xlabel('ʱ��t(��)'); %��Ӻ����ǩ
ylabel('����(��)'); %��������ǩ