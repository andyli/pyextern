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
	static public function _divmod(x:Dynamic, y:Dynamic):Dynamic;
	static public var _log : Dynamic;
	static public function _mathdefault(s:Dynamic):Dynamic;
	/**
		.. deprecated:: 3.0
		    The closeto function was deprecated in Matplotlib 3.0 and will be removed in 3.2.
		
		\ 
	**/
	static public function closeto(x:Dynamic, y:Dynamic):Dynamic;
	/**
		floor x to the nearest lower decade
	**/
	static public function decade_down(x:Dynamic, ?base:Dynamic):Dynamic;
	/**
		ceil x to the nearest higher decade
	**/
	static public function decade_up(x:Dynamic, ?base:Dynamic):Dynamic;
	static public function is_close_to_int(x:Dynamic):Dynamic;
	static public function is_decade(x:Dynamic, ?base:Dynamic):Dynamic;
	static public function nearest_long(x:Dynamic):Dynamic;
	static public var rcParams : Dynamic;
	static public function scale_range(vmin:Dynamic, vmax:Dynamic, ?n:Dynamic, ?threshold:Dynamic):Dynamic;
}