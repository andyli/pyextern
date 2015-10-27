/* This file is generated, do not edit! */
package scipy;
@:native("scipy.interpolate") extern class Interpolate {
	static public function approximate_taylor_polynomial(f:Dynamic, x:Dynamic, degree:Dynamic, scale:Dynamic, ?order:Dynamic = null):Dynamic;
	static public function barycentric_interpolate(xi:Dynamic, yi:Dynamic, x:Dynamic, ?axis:Dynamic):Dynamic;
	static public function bisplev(x:Dynamic, y:Dynamic, tck:Dynamic, ?dx:Dynamic, ?dy:Dynamic):Dynamic;
	static public function bisplrep(x:Dynamic, y:Dynamic, z:Dynamic, ?w:Dynamic = null, ?xb:Dynamic = null, ?xe:Dynamic = null, ?yb:Dynamic = null, ?ye:Dynamic = null, ?kx:Dynamic, ?ky:Dynamic, ?task:Dynamic, ?s:Dynamic = null, ?eps:Dynamic, ?tx:Dynamic = null, ?ty:Dynamic = null, ?full_output:Dynamic, ?nxest:Dynamic = null, ?nyest:Dynamic = null, ?quiet:Dynamic):Dynamic;
	static public function griddata(points:Dynamic, values:Dynamic, xi:Dynamic, ?method:Dynamic, ?fill_value:Dynamic, ?rescale:Dynamic = false):Void;
	static public function interpn(points:Dynamic, values:Dynamic, xi:Dynamic, ?method:Dynamic, ?bounds_error:Dynamic = true, ?fill_value:Dynamic):Dynamic;
	static public function krogh_interpolate(xi:Dynamic, yi:Dynamic, x:Dynamic, ?der:Dynamic, ?axis:Dynamic):Dynamic;
	static public function lagrange(x:Dynamic, w:Dynamic):Dynamic;
	static public function pchip_interpolate(xi:Dynamic, yi:Dynamic, x:Dynamic, ?der:Dynamic, ?axis:Dynamic):Dynamic;
	static public function piecewise_polynomial_interpolate(xi:Dynamic, yi:Dynamic, x:Dynamic, ?orders:Dynamic = null, ?der:Dynamic, ?axis:Dynamic):Dynamic;
	static public function spalde(x:Dynamic, tck:Dynamic):Dynamic;
	static public function splantider(tck:Dynamic, ?n:Dynamic):Dynamic;
	static public function splder(tck:Dynamic, ?n:Dynamic):Dynamic;
	static public function splev(x:Dynamic, tck:Dynamic, ?der:Dynamic, ?ext:Dynamic):Dynamic;
	static public function splint(a:Dynamic, b:Dynamic, tck:Dynamic, ?full_output:Dynamic):Dynamic;
	static public function splprep(x:Dynamic, ?w:Dynamic = null, ?u:Dynamic = null, ?ub:Dynamic = null, ?ue:Dynamic = null, ?k:Dynamic, ?task:Dynamic, ?s:Dynamic = null, ?t:Dynamic = null, ?full_output:Dynamic, ?nest:Dynamic = null, ?per:Dynamic, ?quiet:Dynamic):Dynamic;
	static public function splrep(x:Dynamic, y:Dynamic, ?w:Dynamic = null, ?xb:Dynamic = null, ?xe:Dynamic = null, ?k:Dynamic, ?task:Dynamic, ?s:Dynamic = null, ?t:Dynamic = null, ?full_output:Dynamic, ?per:Dynamic, ?quiet:Dynamic):Dynamic;
	static public function sproot(tck:Dynamic, ?mest:Dynamic):Dynamic;
}