/* This file is generated, do not edit! */
package numpy.polynomial;
@:pythonImport("numpy.polynomial.laguerre") extern class Laguerre {
	static public function lag2poly(c:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function lagadd(c1:Dynamic, c2:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function lagcompanion(c:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function lagder(c:Dynamic, ?m:Dynamic, ?scl:Dynamic, ?axis:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function lagdiv(c1:Dynamic, c2:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function lagdomain(?varargs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function lagfit(x:Dynamic, y:Dynamic, deg:Dynamic, ?rcond:Dynamic = null, ?full:Dynamic = false, ?w:Dynamic = null, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function lagfromroots(roots:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function laggauss(deg:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function laggrid2d(x:Dynamic, y:Dynamic, c:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function laggrid3d(x:Dynamic, y:Dynamic, z:Dynamic, c:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function lagint(c:Dynamic, ?m:Dynamic, ?k:Dynamic, ?lbnd:Dynamic, ?scl:Dynamic, ?axis:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function lagline(off:Dynamic, scl:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function lagmul(c1:Dynamic, c2:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function lagmulx(c:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function lagone(?varargs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function lagpow(c:Dynamic, pow:Dynamic, ?maxpower:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function lagroots(c:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function lagsub(c1:Dynamic, c2:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function lagtrim(c:Dynamic, ?tol:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function lagval(x:Dynamic, c:Dynamic, ?tensor:Dynamic = true, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function lagval2d(x:Dynamic, y:Dynamic, c:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function lagval3d(x:Dynamic, y:Dynamic, z:Dynamic, c:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function lagvander(x:Dynamic, deg:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function lagvander2d(x:Dynamic, y:Dynamic, deg:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function lagvander3d(x:Dynamic, y:Dynamic, z:Dynamic, deg:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function lagweight(x:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function lagx(?varargs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function lagzero(?varargs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function poly2lag(pol:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}