OPENQASM 2.0;
include "qelib1.inc";
qreg qr[4];
creg c[4];
h qr[0];
h qr[1];
h qr[2];
h qr[3];
h qr[2];
cz qr[3],qr[0];
x qr[2];
rx(pi/2) qr[3];
rx(pi/2) qr[2];
cz qr[1],qr[0];
x qr[1];
cx qr[2],qr[1];
rx(pi/2) qr[0];
t qr[0];
y qr[1];
cz qr[0],qr[2];
cz qr[2],qr[3];
cz qr[3],qr[0];
t qr[1];
h qr[2];
rx(pi/2) qr[3];
ry(pi/2) qr[2];
y qr[0];
ccx qr[1],qr[0],qr[2];
z qr[3];
ry(pi/2) qr[3];
t qr[2];
t qr[3];
rx(pi/2) qr[1];
x qr[1];
cz qr[3],qr[1];
s qr[2];
cswap qr[3],qr[2],qr[1];
ccx qr[0],qr[1],qr[2];
cx qr[2],qr[1];
z qr[0];
z qr[1];
ccx qr[1],qr[2],qr[0];
ry(pi/2) qr[3];

//ry(pi/2) qr[1]; //2* 0000 chance than expected = chci k+1

cx qr[0],qr[1];
ccx qr[0],qr[2],qr[3]; 
x qr[2];
y qr[0];
s qr[1];
z qr[1];
cz qr[2],qr[1];
cswap qr[1],qr[3],qr[2];
z qr[3];
ccx qr[0],qr[2],qr[3];
ry(pi/2) qr[2];
cx qr[1],qr[2];
cswap qr[1],qr[0],qr[2];
t qr[2];
h qr[3];
//plus jeste nekde tady chyba