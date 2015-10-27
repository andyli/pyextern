/* This file is generated, do not edit! */
package scipy;
@:native("scipy.integrate") extern class Integrate {
	static public function cumtrapz(y:Dynamic, ?x:Dynamic = null, ?dx:Dynamic, ?axis:Dynamic, ?initial:Dynamic = null):Dynamic;
	static public function dblquad(func:Dynamic, a:Dynamic, b:Dynamic, gfun:Dynamic, hfun:Dynamic):Dynamic;
	static public function fixed_quad(func:Dynamic, a:Dynamic, b:Dynamic):Dynamic;
	static public function nquad(func:Dynamic, ranges:Dynamic, ?args:Dynamic = null, ?opts:Dynamic = null):Dynamic;
	static public function odeint(func:Dynamic, y0:Dynamic, t:Dynamic):Dynamic;
	static public function quad(func:Dynamic, a:Dynamic, b:Dynamic):Dynamic;
	static public function quadrature(func:Dynamic, a:Dynamic, b:Dynamic):Dynamic;
	static public function romb(y:Dynamic, ?dx:Dynamic, ?axis:Dynamic, ?show:Dynamic = false):Dynamic;
	static public function romberg(_function:Dynamic, a:Dynamic, b:Dynamic):Dynamic;
	static public function simps(y:Dynamic, ?x:Dynamic = null, ?dx:Dynamic, ?axis:Dynamic, ?even:Dynamic):Void;
	static public function tplquad(func:Dynamic, a:Dynamic, b:Dynamic, gfun:Dynamic, hfun:Dynamic, qfun:Dynamic, rfun:Dynamic):Dynamic;
}