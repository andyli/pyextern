/* This file is generated, do not edit! */
package numpy.polynomial;
@:native("numpy.polynomial.chebyshev") extern class Chebyshev {
	static public function cheb2poly(c:Dynamic):Dynamic;
	static public function chebadd(c1:Dynamic, c2:Dynamic):Dynamic;
	static public function chebcompanion(c:Dynamic):Dynamic;
	static public function chebder(c:Dynamic, ?m:Dynamic, ?scl:Dynamic, ?axis:Dynamic):Dynamic;
	static public function chebdiv(c1:Dynamic, c2:Dynamic):Dynamic;
	static public function chebdomain(args:haxe.extern.Rest<Dynamic>):Void;
	static public function chebfit(x:Dynamic, y:Dynamic, deg:Dynamic, ?rcond:Dynamic = null, ?full:Dynamic = false, ?w:Dynamic = null):Dynamic;
	static public function chebfromroots(roots:Dynamic):Dynamic;
	static public function chebgauss(deg:Dynamic):Dynamic;
	static public function chebgrid2d(x:Dynamic, y:Dynamic, c:Dynamic):Dynamic;
	static public function chebgrid3d(x:Dynamic, y:Dynamic, z:Dynamic, c:Dynamic):Dynamic;
	static public function chebint(c:Dynamic, ?m:Dynamic, ?k:Dynamic, ?lbnd:Dynamic, ?scl:Dynamic, ?axis:Dynamic):Dynamic;
	static public function chebline(off:Dynamic, scl:Dynamic):Dynamic;
	static public function chebmul(c1:Dynamic, c2:Dynamic):Dynamic;
	static public function chebmulx(c:Dynamic):Dynamic;
	static public function chebone(args:haxe.extern.Rest<Dynamic>):Void;
	static public function chebpow(c:Dynamic, pow:Dynamic, ?maxpower:Dynamic):Dynamic;
	static public function chebroots(c:Dynamic):Dynamic;
	static public function chebsub(c1:Dynamic, c2:Dynamic):Dynamic;
	static public function chebtrim(c:Dynamic, ?tol:Dynamic):Dynamic;
	static public function chebval(x:Dynamic, c:Dynamic, ?tensor:Dynamic = true):Dynamic;
	static public function chebval2d(x:Dynamic, y:Dynamic, c:Dynamic):Dynamic;
	static public function chebval3d(x:Dynamic, y:Dynamic, z:Dynamic, c:Dynamic):Dynamic;
	static public function chebvander(x:Dynamic, deg:Dynamic):Dynamic;
	static public function chebvander2d(x:Dynamic, y:Dynamic, deg:Dynamic):Dynamic;
	static public function chebvander3d(x:Dynamic, y:Dynamic, z:Dynamic, deg:Dynamic):Dynamic;
	static public function chebweight(x:Dynamic):Dynamic;
	static public function chebx(args:haxe.extern.Rest<Dynamic>):Void;
	static public function chebzero(args:haxe.extern.Rest<Dynamic>):Void;
	static public function poly2cheb(pol:Dynamic):Dynamic;
}