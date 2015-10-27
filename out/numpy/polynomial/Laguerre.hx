/* This file is generated, do not edit! */
package numpy.polynomial;
@:native("numpy.polynomial.laguerre") extern class Laguerre {
	static public function lag2poly(c:Dynamic):Dynamic;
	static public function lagadd(c1:Dynamic, c2:Dynamic):Dynamic;
	static public function lagcompanion(c:Dynamic):Dynamic;
	static public function lagder(c:Dynamic, ?m:Dynamic, ?scl:Dynamic, ?axis:Dynamic):Dynamic;
	static public function lagdiv(c1:Dynamic, c2:Dynamic):Dynamic;
	static public function lagdomain(args:haxe.extern.Rest<Dynamic>):Void;
	static public function lagfit(x:Dynamic, y:Dynamic, deg:Dynamic, ?rcond:Dynamic = null, ?full:Dynamic = false, ?w:Dynamic = null):Dynamic;
	static public function lagfromroots(roots:Dynamic):Dynamic;
	static public function laggauss(deg:Dynamic):Dynamic;
	static public function laggrid2d(x:Dynamic, y:Dynamic, c:Dynamic):Dynamic;
	static public function laggrid3d(x:Dynamic, y:Dynamic, z:Dynamic, c:Dynamic):Dynamic;
	static public function lagint(c:Dynamic, ?m:Dynamic, ?k:Dynamic, ?lbnd:Dynamic, ?scl:Dynamic, ?axis:Dynamic):Dynamic;
	static public function lagline(off:Dynamic, scl:Dynamic):Dynamic;
	static public function lagmul(c1:Dynamic, c2:Dynamic):Dynamic;
	static public function lagmulx(c:Dynamic):Dynamic;
	static public function lagone(args:haxe.extern.Rest<Dynamic>):Void;
	static public function lagpow(c:Dynamic, pow:Dynamic, ?maxpower:Dynamic):Dynamic;
	static public function lagroots(c:Dynamic):Dynamic;
	static public function lagsub(c1:Dynamic, c2:Dynamic):Dynamic;
	static public function lagtrim(c:Dynamic, ?tol:Dynamic):Dynamic;
	static public function lagval(x:Dynamic, c:Dynamic, ?tensor:Dynamic = true):Dynamic;
	static public function lagval2d(x:Dynamic, y:Dynamic, c:Dynamic):Dynamic;
	static public function lagval3d(x:Dynamic, y:Dynamic, z:Dynamic, c:Dynamic):Dynamic;
	static public function lagvander(x:Dynamic, deg:Dynamic):Dynamic;
	static public function lagvander2d(x:Dynamic, y:Dynamic, deg:Dynamic):Dynamic;
	static public function lagvander3d(x:Dynamic, y:Dynamic, z:Dynamic, deg:Dynamic):Dynamic;
	static public function lagweight(x:Dynamic):Dynamic;
	static public function lagx(args:haxe.extern.Rest<Dynamic>):Void;
	static public function lagzero(args:haxe.extern.Rest<Dynamic>):Void;
	static public function poly2lag(pol:Dynamic):Dynamic;
}