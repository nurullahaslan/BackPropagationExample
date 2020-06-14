input1= 0.05;
input2= 0.10;
desire_out1=0.01;
desire_out2=0.99;
bias1 = 0.35;
bias2 = 0.60;
coeff = 0.5;
w1 = 0.15 ;
w2 = 0.20 ;
w3 = 0.25 ;
w4 = 0.30 ;
w5 = 0.40 ;
w6 = 0.45 ;
w7 = 0.50 ;
w8 = 0.55 ;
e=exp(1);

neth1 = bias1+input1*w1+input2*w2;
neth2 = bias1+input1*w3+input2*w4;

outh1 = 1/(1+(e^(-neth1)));
outh2 = 1/(1+(e^(-neth2)));

neto1 = bias2+outh1*w5+outh2*w6;
neto2 = bias2+outh1*w7+outh2*w8;

outo1 = 1/(1+(e^(-neto1)));
outo2 = 1/(1+(e^(-neto2)));

Eo1=1/2*((desire_out1-outo1)^2);
Eo2=1/2*((desire_out2-outo2)^2);

sigo1= -(desire_out1 - outo1)*outo1*(1 - outo1);
Etotal=sigo1*outh1;

w5 = w5 + coeff*(-Etotal);

disp('Yeni w5 ağırlığı =');
disp(w5);