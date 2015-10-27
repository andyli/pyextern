/* This file is generated, do not edit! */
package numpy.polynomial;
@:native("numpy.polynomial.hermite_e") extern class Hermite_e {
	static public function herme2poly(c:Dynamic):Dynamic;
	static public function hermeadd(c1:Dynamic, c2:Dynamic):Dynamic;
	static public function hermecompanion(c:Dynamic):Dynamic;
	static public function hermeder(c:Dynamic, ?m:Dynamic, ?scl:Dynamic, ?axis:Dynamic):Dynamic;
	static public function hermediv(c1:Dynamic, c2:Dynamic):Dynamic;
	static public function hermedomain(args:haxe.extern.Rest<Dynamic>):Void;
	static public function hermefit(x:Dynamic, y:Dynamic, deg:Dynamic, ?rcond:Dynamic = null, ?full:Dynamic = false, ?w:Dynamic = null):Dynamic;
	static public function hermefromroots(roots:Dynamic):Dynamic;
	static public function hermegauss(deg:Dynamic):Dynamic;
	static public function hermegrid2d(x:Dynamic, y:Dynamic, c:Dynamic):Dynamic;
	static public function hermegrid3d(x:Dynamic, y:Dynamic, z:Dynamic, c:Dynamic):Dynamic;
	static public function hermeint(c:Dynamic, ?m:Dynamic, ?k:Dynamic, ?lbnd:Dynamic, ?scl:Dynamic, ?axis:Dynamic):Dynamic;
	static public function hermeline(off:Dynamic, scl:Dynamic):Dynamic;
	static public function hermemul(c1:Dynamic, c2:Dynamic):Dynamic;
	static public function hermemulx(c:Dynamic):Dynamic;
	static public function hermeone(args:haxe.extern.Rest<Dynamic>):Void;
	static public function hermepow(c:Dynamic, pow:Dynamic, ?maxpower:Dynamic):Dynamic;
	static public function hermeroots(c:Dynamic):Dynamic;
	static public function hermesub(c1:Dynamic, c2:Dynamic):Dynamic;
	static public function hermetrim(c:Dynamic, ?tol:Dynamic):Dynamic;
	static public function hermeval(x:Dynamic, c:Dynamic, ?tensor:Dynamic = true):Dynamic;
	static public function hermeval2d(x:Dynamic, y:Dynamic, c:Dynamic):Dynamic;
	static public function hermeval3d(x:Dynamic, y:Dynamic, z:Dynamic, c:Dynamic):Dynamic;
	static public function hermevander(x:Dynamic, deg:Dynamic):Dynamic;
	static public function hermevander2d(x:Dynamic, y:Dynamic, deg:Dynamic):Dynamic;
	static public function hermevander3d(x:Dynamic, y:Dynamic, z:Dynamic, deg:Dynamic):Dynamic;
	static public function hermeweight(x:Dynamic):Dynamic;
	static public function hermex(args:haxe.extern.Rest<Dynamic>):Void;
	static public function hermezero(args:haxe.extern.Rest<Dynamic>):Void;
	static public function poly2herme(pol:Dynamic):Dynamic;
}