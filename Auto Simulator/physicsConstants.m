% drive motor constants
b = 4.093255526065792E-5;
R = 0.04666464678901319;
Kt = 0.01823032208047652;
Kw = 0.017857232059815025;

rb = 0.3145536;
m = 39.3051396;
J = 2.1621037;
r = 0.0762;

G = 10.88888888888888888;
e = 1;%0.9;

C1 = -(Kt*Kw*G*G)/(R*r*r);
C2 = G*Kt/(R*r);

Am = (1/m + rb * rb / J);
Bm = (1/m - rb * rb / J);



% robot state
X = 1;
Y = 2;
THETA = 3;
vL = 4;
vR = 5;

% robot input
VL = 1;
VR = 2;

% system outputs
D = 1;
TX = 2;
VL_O = 3;
VR_O = 4;
LL_THETA = 5;
OMEGA = 6;


STATE_SIZE = 5;
INPUT_SIZE = 2;
OUTPUT_SIZE = 6;


xT = 0.3048*5.58;
yT = 15.9830/2;

thetaLL = 0;%pi/6;
rLL = 0;%0.2286;

A = [
  -7.087195478354283   0.413285738104402
   0.339280393075371  -6.832080740045777
];

B = [
   2.702895517197959  -0.241632861263366
  -0.126961060623545   2.551095849721741
];

F = [
   0.021862907114544
   0.020072584148166
];

IN_TO_M = 254 / 10000;

yc = 0.6956 * IN_TO_M;
xc = 6.7643 * IN_TO_M;
rLL = 7.6252 * IN_TO_M;