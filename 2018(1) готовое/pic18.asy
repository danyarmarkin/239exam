import settings; 
outformat = "pdf";
render = 4;

import unicode;
texpreamble("\usepackage{xcolor}\usepackage{amsmath}\usepackage[russian]{babel}");
defaultpen(font("T2A","cmr","m","n"));

import markers;
import lib_macros;

unitsize(0.5cm);

//Создание чертежа 

//=============================
//начинаем рисовать картинку для условия
pair A = (0, 0), C= (6, 0);
pair Q = rotate(70,  A)*C;
pair P = rotate(360-70,  C)*A;
pair B = extension(P, C,  A, Q);
dot("$A$", A, dir(-135));
dot("$B$", B, dir(90));
dot("$C$", C, dir(-90));
draw(A--B--C--cycle);

draw(A--B,StickIntervalMarker(1, 1));
draw(C--B,StickIntervalMarker(1, 1));

pair H = altitude(B, A, C);
draw(B--H);
dot("$H$", H, dir(-90));
markangle(L = "$\alpha$",n=1,radius=10,H,A,B);
//markangle(n=1,radius=12,O,B,C);
markrightangle(B, H, C, s = 10);


pair N = interp(B, H, 0.5);
label("$a$",N, dir(0));


