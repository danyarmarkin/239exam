import settings; 
outformat = "pdf";
render = 4;

import unicode;
texpreamble("\usepackage{xcolor}\usepackage{amsmath}\usepackage[russian]{babel}");
defaultpen(font("T2A","cmr","m","n"));
import markers;
import lib_macros;
unitsize(1cm);

pair A = (0,2);
pair H = (7,2);
pair K = rotate(66,  A)*H;
pair B = A+unit(H-A)*5;
pair D = A+unit(K-A)*6;
pair E = rotate(114,  B)*A;
pair C = A+unit(E-B)*6;

draw(A--C--B--D--A);



dot("$A$", A, dir(220));
dot("$B$", C, dir(0));
dot("$C$", B, dir(0));
dot("$D$", D, dir(0));
