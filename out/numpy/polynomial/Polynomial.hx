/* This file is generated, do not edit! */
package numpy.polynomial;
@:pythonImport("numpy.polynomial.polynomial") extern class Polynomial {
	static public function polyadd(c1:Dynamic, c2:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function polycompanion(c:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function polyder(c:Dynamic, ?m:Dynamic, ?scl:Dynamic, ?axis:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function polydiv(c1:Dynamic, c2:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function polydomain(?varargs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function polyfit(x:Dynamic, y:Dynamic, deg:Dynamic, ?rcond:Dynamic = null, ?full:Dynamic = false, ?w:Dynamic = null, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function polyfromroots(roots:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function polygrid2d(x:Dynamic, y:Dynamic, c:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function polygrid3d(x:Dynamic, y:Dynamic, z:Dynamic, c:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function polyint(c:Dynamic, ?m:Dynamic, ?k:Dynamic, ?lbnd:Dynamic, ?scl:Dynamic, ?axis:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function polyline(off:Dynamic, scl:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function polymul(c1:Dynamic, c2:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function polymulx(c:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function polyone(?varargs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function polypow(c:Dynamic, pow:Dynamic, ?maxpower:Dynamic = null, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function polyroots(c:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function polysub(c1:Dynamic, c2:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function polytrim(c:Dynamic, ?tol:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function polyval(x:Dynamic, c:Dynamic, ?tensor:Dynamic = true, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function polyval2d(x:Dynamic, y:Dynamic, c:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function polyval3d(x:Dynamic, y:Dynamic, z:Dynamic, c:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function polyvander(x:Dynamic, deg:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function polyvander2d(x:Dynamic, y:Dynamic, deg:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function polyvander3d(x:Dynamic, y:Dynamic, z:Dynamic, deg:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function polyx(?varargs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function polyzero(?varargs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}