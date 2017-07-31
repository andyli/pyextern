/* This file is generated, do not edit! */
package scipy.interpolate.rbf;
@:pythonImport("scipy.interpolate.rbf") extern class Rbf_Module {
	static public var __all__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var absolute_import : Dynamic;
	static public function callable(obj:Dynamic):Dynamic;
	static public var division : Dynamic;
	static public function get_function_code(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function get_method_function(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var print_function : Dynamic;
	/**
		xlogy(x1, x2, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		xlogy(x, y)
		
		Compute ``x*log(y)`` so that the result is 0 if ``x = 0``.
		
		Parameters
		----------
		x : array_like
		    Multiplier
		y : array_like
		    Argument
		
		Returns
		-------
		z : array_like
		    Computed x*log(y)
		
		Notes
		-----
		
		.. versionadded:: 0.13.0
	**/
	static public function xlogy(args:haxe.extern.Rest<Dynamic>):Dynamic;
}