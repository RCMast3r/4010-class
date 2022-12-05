A = [0,1;0,-0.5696];
B = [0;1];
C= [0.0784, 0];
D= 0;
sys=ss(A,B,C,D)
pol = pole(sys)

% from the desired performance
damp_r = 0.404;
nf = 9.91;
poly = [1 damp_r*2*nf nf*nf];
r = roots(poly)

K = place(A,B,r)



syscl = ss(sys.A-sys.B*K,sys.B,sys.C,sys.D);
step(syscl)