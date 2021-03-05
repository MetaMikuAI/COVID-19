N = 100000; %����������10000(��)
I = 2; %��(t=0)����2(��)
r = 10;  %ÿ��ÿ��Ӵ����� 10
p = 0.05; %�Ӵ���Ⱦ���� 0.05
S = N; %�׸���(��)
R = 0; %������(��)
q = 0.1; %��������0.1
dt=0.01;%΢Сʱ����0.01
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
title(['ģ�Ͷ�(SIR)��N=',num2str(N),',I(0)=',num2str(ArrayI(1)),',r=',num2str(r),',p=',num2str(p),',q=',num2str(q)]);
legend('�׸���S','��Ⱦ��I','������');
xlabel('ʱ��t(��)'); %��Ӻ����ǩ
ylabel('����(��)'); %��������ǩ