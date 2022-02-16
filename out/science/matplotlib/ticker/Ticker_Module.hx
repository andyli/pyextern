/* This file is generated, do not edit! */
package matplotlib.ticker;
@:pythonImport("matplotlib.ticker") extern class Ticker_Module {
	static public var __all__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Return the smallest integer power of *base* that's greater than *x*.
		
		If *x* is negative, the exponent will be *smaller*.
	**/
	static public function _decade_greater(x:Dynamic, base:Dynamic):Dynamic;
	/**
		Return the smallest integer power of *base* that's greater or equal to *x*.
		
		If *x* is negative, the exponent will be *smaller*.
	**/
	static public function _decade_greater_equal(x:Dynamic, base:Dynamic):Dynamic;
	/**
		Return the largest integer power of *base* that's less than *x*.
		
		If *x* is negative, the exponent will be *greater*.
	**/
	static public function _decade_less(x:Dynamic, base:Dynamic):Dynamic;
	/**
		Return the largest integer power of *base* that's less or equal to *x*.
		
		If *x* is negative, the exponent will be *greater*.
	**/
	static public function _decade_less_equal(x:Dynamic, base:Dynamic):Dynamic;
	static public var _log : Dynamic;
	static public function is_close_to_int(x:Dynamic, ?atol:Dynamic):Dynamic;
	static public function is_decade(x:Dynamic, ?base:Dynamic, ?rtol:Dynamic):Dynamic;
	static public function scale_range(vmin:Dynamic, vmax:Dynamic, ?n:Dynamic, ?threshold:Dynamic):Dynamic;
}