t = -10:0.1:10;
T1=1;
f1=1/T1;

T2=5;
f2=1/T2;

x = sin(2*pi*f1*t);
y = sin(2*pi*f2*t);

mod_sig = x.*y;
% for i = 1:201
%     if mod_sig(i) >= y(i)
%         mod_sig(i) = y(i)
%     end
% end
subplot(3,1,1);
plot(t,x);

subplot(3,1,2);
plot(t,y);

subplot(3,1,3);
plot(t,mod_sig);
