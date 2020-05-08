settings.outformat="pdf";
settings.render=4;

unitsize(1.5cm);

include project_settings;
include lib_interval;

//Точки: (координата, подпись, вколота/выколота (tick/circ), знак справа от точки)
Point[] points = {
	Point(7, "$7$", "tick"),
	Point(5, "$5$", "tick"),
};
put_sign("$++$", 7,8);
put_sign("$--$", 3,5);
put_sign("$-+$",5,7);

xaxis(Label("$x$",position=EndPoint, align=SE*2), xmin=points[1].x-3,xmax=points[points.length-1].x+3, Arrow);


//Все поставить на ось автоматически:
put_labels(points);
put_signs(points, 2, 1); // последние два аргумента - отступ самого левого и самого правого знака от точек
