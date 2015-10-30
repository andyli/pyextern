/* This file is generated, do not edit! */
package scipy._lib._numpy_compat;
@:pythonImport("scipy._lib._numpy_compat") extern class _Numpy_compat_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Fail unless the given callable throws the specified warning.
		
		A warning of class warning_class should be thrown by the callable when
		invoked with arguments args and keyword arguments kwargs.
		If a different type of warning is thrown, it will not be caught, and the
		test case will be deemed to have suffered an error.
		
		.. versionadded:: 1.4.0
		
		Parameters
		----------
		warning_class : class
		    The class defining the warning that `func` is expected to throw.
		func : callable
		    The callable to test.
		\*args : Arguments
		    Arguments passed to `func`.
		\*\*kwargs : Kwargs
		    Keyword arguments passed to `func`.
		
		Returns
		-------
		The value returned by `func`.
	**/
	static public function _assert_warns(warning_class:Dynamic, func:Dynamic, args:Dynamic, kw:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
}