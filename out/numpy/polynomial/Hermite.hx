/* This file is generated, do not edit! */
package numpy.polynomial;
@:native("numpy.polynomial.hermite") extern class Hermite {
	static public function herm2poly(c:Dynamic):Dynamic;
	static public function hermadd(c1:Dynamic, c2:Dynamic):Dynamic;
	static public function hermcompanion(c:Dynamic):Dynamic;
	static public function hermder(c:Dynamic, ?m:Dynamic, ?scl:Dynamic, ?axis:Dynamic):Dynamic;
	static public function hermdiv(c1:Dynamic, c2:Dynamic):Dynamic;
	static public function hermdomain(args:haxe.extern.Rest<Dynamic>):Void;
	static public function hermfit(x:Dynamic, y:Dynamic, deg:Dynamic, ?rcond:Dynamic = null, ?full:Dynamic = false, ?w:Dynamic = null):Dynamic;
	static public function hermfromroots(roots:Dynamic):Dynamic;
	static public function hermgauss(deg:Dynamic):Dynamic;
	static public function hermgrid2d(x:Dynamic, y:Dynamic, c:Dynamic):Dynamic;
	static public function hermgrid3d(x:Dynamic, y:Dynamic, z:Dynamic, c:Dynamic):Dynamic;
	static public function hermint(c:Dynamic, ?m:Dynamic, ?k:Dynamic, ?lbnd:Dynamic, ?scl:Dynamic, ?axis:Dynamic):Dynamic;
	static public function hermline(off:Dynamic, scl:Dynamic):Dynamic;
	static public function hermmul(c1:Dynamic, c2:Dynamic):Dynamic;
	static public function hermmulx(c:Dynamic):Dynamic;
	static public function hermone(args:haxe.extern.Rest<Dynamic>):Void;
	static public function hermpow(c:Dynamic, pow:Dynamic, ?maxpower:Dynamic):Dynamic;
	static public function hermroots(c:Dynamic):Dynamic;
	static public function hermsub(c1:Dynamic, c2:Dynamic):Dynamic;
	static public function hermtrim(c:Dynamic, ?tol:Dynamic):Dynamic;
	static public function hermval(x:Dynamic, c:Dynamic, ?tensor:Dynamic = true):Dynamic;
	static public function hermval2d(x:Dynamic, y:Dynamic, c:Dynamic):Dynamic;
	static public function hermval3d(x:Dynamic, y:Dynamic, z:Dynamic, c:Dynamic):Dynamic;
	static public function hermvander(x:Dynamic, deg:Dynamic):Dynamic;
	static public function hermvander2d(x:Dynamic, y:Dynamic, deg:Dynamic):Dynamic;
	static public function hermvander3d(x:Dynamic, y:Dynamic, z:Dynamic, deg:Dynamic):Dynamic;
	static public function hermweight(x:Dynamic):Dynamic;
	static public function hermx(args:haxe.extern.Rest<Dynamic>):Void;
	static public function hermzero(args:haxe.extern.Rest<Dynamic>):Void;
	static public function poly2herm(pol:Dynamic):Dynamic;
}