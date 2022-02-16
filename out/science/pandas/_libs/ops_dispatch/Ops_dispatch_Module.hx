/* This file is generated, do not edit! */
package pandas._libs.ops_dispatch;
@:pythonImport("pandas._libs.ops_dispatch") extern class Ops_dispatch_Module {
	static public var DISPATCHED_UFUNCS : Dynamic;
	static public var REVERSED_NAMES : Dynamic;
	static public var UFUNC_ALIASES : Dynamic;
	static public var UNARY_UFUNCS : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var __test__ : Dynamic;
	/**
		Dispatch a ufunc to the equivalent dunder method.
		
		Parameters
		----------
		self : ArrayLike
		    The array whose dunder method we dispatch to
		ufunc : Callable
		    A NumPy ufunc
		method : {'reduce', 'accumulate', 'reduceat', 'outer', 'at', '__call__'}
		inputs : ArrayLike
		    The input arrays.
		kwargs : Any
		    The additional keyword arguments, e.g. ``out``.
		
		Returns
		-------
		result : Any
		    The result of applying the ufunc
	**/
	static public function maybe_dispatch_ufunc_to_dunder_op(args:haxe.extern.Rest<Dynamic>):Dynamic;
}