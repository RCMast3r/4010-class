clear;
syms s ke k1 k2;

A=[0,1;
    -7, -9];
B = [0;1];
C = [4, 1];

controlable = [B, A*B];
det(controlable);
rank(controlable);

I = eye(3);
k = [k1, k2];

A2 = [ (A-(B*k)), B*ke;
        -C, 0];
si = s*eye(size(A2));

B2=[0;0;1];
C2=[4,1,0];

res=det(si-A2)

A2 = subs(A2, [k1, k2, ke], [2.2, -2.7, 3.81]);

ERR = 1+C2*inv(A2)*B2
