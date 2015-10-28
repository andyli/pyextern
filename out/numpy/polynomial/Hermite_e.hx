/* This file is generated, do not edit! */
package numpy.polynomial;
@:pythonImport("numpy.polynomial.hermite_e") extern class Hermite_e {
	static public function herme2poly(c:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function hermeadd(c1:Dynamic, c2:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function hermecompanion(c:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function hermeder(c:Dynamic, ?m:Dynamic, ?scl:Dynamic, ?axis:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function hermediv(c1:Dynamic, c2:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function hermedomain(?varargs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function hermefit(x:Dynamic, y:Dynamic, deg:Dynamic, ?rcond:Dynamic = null, ?full:Dynamic = false, ?w:Dynamic = null, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function hermefromroots(roots:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function hermegauss(deg:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function hermegrid2d(x:Dynamic, y:Dynamic, c:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function hermegrid3d(x:Dynamic, y:Dynamic, z:Dynamic, c:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function hermeint(c:Dynamic, ?m:Dynamic, ?k:Dynamic, ?lbnd:Dynamic, ?scl:Dynamic, ?axis:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function hermeline(off:Dynamic, scl:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function hermemul(c1:Dynamic, c2:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function hermemulx(c:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function hermeone(?varargs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function hermepow(c:Dynamic, pow:Dynamic, ?maxpower:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function hermeroots(c:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function hermesub(c1:Dynamic, c2:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function hermetrim(c:Dynamic, ?tol:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function hermeval(x:Dynamic, c:Dynamic, ?tensor:Dynamic = true, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function hermeval2d(x:Dynamic, y:Dynamic, c:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function hermeval3d(x:Dynamic, y:Dynamic, z:Dynamic, c:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function hermevander(x:Dynamic, deg:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function hermevander2d(x:Dynamic, y:Dynamic, deg:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function hermevander3d(x:Dynamic, y:Dynamic, z:Dynamic, deg:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function hermeweight(x:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function hermex(?varargs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function hermezero(?varargs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function poly2herme(pol:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}