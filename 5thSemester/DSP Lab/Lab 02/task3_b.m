fs =11025
dur =0.9
tt = 0:(1/fs):dur;
xx = cos(2*2000*pi*tt);
plot(tt,xx)
soundsc(xx,fs)