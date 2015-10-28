/* This file is generated, do not edit! */
package numpy.polynomial;
@:pythonImport("numpy.polynomial.hermite") extern class Hermite {
	static public function herm2poly(c:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function hermadd(c1:Dynamic, c2:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function hermcompanion(c:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function hermder(c:Dynamic, ?m:Dynamic, ?scl:Dynamic, ?axis:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function hermdiv(c1:Dynamic, c2:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function hermdomain(?varargs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function hermfit(x:Dynamic, y:Dynamic, deg:Dynamic, ?rcond:Dynamic = null, ?full:Dynamic = false, ?w:Dynamic = null, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function hermfromroots(roots:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function hermgauss(deg:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function hermgrid2d(x:Dynamic, y:Dynamic, c:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function hermgrid3d(x:Dynamic, y:Dynamic, z:Dynamic, c:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function hermint(c:Dynamic, ?m:Dynamic, ?k:Dynamic, ?lbnd:Dynamic, ?scl:Dynamic, ?axis:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function hermline(off:Dynamic, scl:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function hermmul(c1:Dynamic, c2:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function hermmulx(c:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function hermone(?varargs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function hermpow(c:Dynamic, pow:Dynamic, ?maxpower:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function hermroots(c:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function hermsub(c1:Dynamic, c2:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function hermtrim(c:Dynamic, ?tol:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function hermval(x:Dynamic, c:Dynamic, ?tensor:Dynamic = true, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function hermval2d(x:Dynamic, y:Dynamic, c:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function hermval3d(x:Dynamic, y:Dynamic, z:Dynamic, c:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function hermvander(x:Dynamic, deg:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function hermvander2d(x:Dynamic, y:Dynamic, deg:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function hermvander3d(x:Dynamic, y:Dynamic, z:Dynamic, deg:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function hermweight(x:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function hermx(?varargs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function hermzero(?varargs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function poly2herm(pol:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}