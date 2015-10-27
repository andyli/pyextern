/* This file is generated, do not edit! */
package numpy.polynomial;
@:native("numpy.polynomial.legendre") extern class Legendre {
	static public function leg2poly(c:Dynamic):Dynamic;
	static public function legadd(c1:Dynamic, c2:Dynamic):Dynamic;
	static public function legcompanion(c:Dynamic):Dynamic;
	static public function legder(c:Dynamic, ?m:Dynamic, ?scl:Dynamic, ?axis:Dynamic):Dynamic;
	static public function legdiv(c1:Dynamic, c2:Dynamic):Dynamic;
	static public function legdomain(args:haxe.extern.Rest<Dynamic>):Void;
	static public function legfit(x:Dynamic, y:Dynamic, deg:Dynamic, ?rcond:Dynamic = null, ?full:Dynamic = false, ?w:Dynamic = null):Dynamic;
	static public function legfromroots(roots:Dynamic):Dynamic;
	static public function leggauss(deg:Dynamic):Dynamic;
	static public function leggrid2d(x:Dynamic, y:Dynamic, c:Dynamic):Dynamic;
	static public function leggrid3d(x:Dynamic, y:Dynamic, z:Dynamic, c:Dynamic):Dynamic;
	static public function legint(c:Dynamic, ?m:Dynamic, ?k:Dynamic, ?lbnd:Dynamic, ?scl:Dynamic, ?axis:Dynamic):Dynamic;
	static public function legline(off:Dynamic, scl:Dynamic):Dynamic;
	static public function legmul(c1:Dynamic, c2:Dynamic):Dynamic;
	static public function legmulx(c:Dynamic):Dynamic;
	static public function legone(args:haxe.extern.Rest<Dynamic>):Void;
	static public function legpow(c:Dynamic, pow:Dynamic, ?maxpower:Dynamic):Dynamic;
	static public function legroots(c:Dynamic):Dynamic;
	static public function legsub(c1:Dynamic, c2:Dynamic):Dynamic;
	static public function legtrim(c:Dynamic, ?tol:Dynamic):Dynamic;
	static public function legval(x:Dynamic, c:Dynamic, ?tensor:Dynamic = true):Dynamic;
	static public function legval2d(x:Dynamic, y:Dynamic, c:Dynamic):Dynamic;
	static public function legval3d(x:Dynamic, y:Dynamic, z:Dynamic, c:Dynamic):Dynamic;
	static public function legvander(x:Dynamic, deg:Dynamic):Dynamic;
	static public function legvander2d(x:Dynamic, y:Dynamic, deg:Dynamic):Dynamic;
	static public function legvander3d(x:Dynamic, y:Dynamic, z:Dynamic, deg:Dynamic):Dynamic;
	static public function legweight(x:Dynamic):Dynamic;
	static public function legx(args:haxe.extern.Rest<Dynamic>):Void;
	static public function legzero(args:haxe.extern.Rest<Dynamic>):Void;
	static public function poly2leg(pol:Dynamic):Dynamic;
}