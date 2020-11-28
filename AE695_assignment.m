k = 124.498;
a = 444; 
b = 2.981;

A = [0 1 0; 0 0 1; 0 a*b b-a];
Q = [1 1 1; 0 b -a; 0 b*b a*a];

B = [0; 0; k];

S = [B A*B A*A*B];

e = 2.8;
f = 3.2;

a1 = a-b;
a2 = -a*b;
a3 = 0.0;
alph1 = 2*e+5.0;
alph2 = e*e + f*f + 10.0*e;
alph3 = 5.0*(e*e + f*f);

W = [a2, a1, 1.0; a1 1.0 0.0; 1.0 0.0 0.0];
T = S*W;
D = [alph3-a3 alph2-a2 alph1-a1];
K = D*inv(T);
A_new = A-B*K;
eig(A_new);

mu1 = -0.15-2j;
mu2 = -0.15 + 2j;
mu3 = -1.9;
num = 1;
%den = [1 -(mu1+mu2+mu3) mu1*mu2+mu1*mu3+mu2*mu3 -mu1*mu2*mu3];
den = [1 2 1.83 1];
Gs = tf(num, den);
%step(Gs)
%stepinfo(Gs)

vec1 = -0.3332*[1;1;0];
