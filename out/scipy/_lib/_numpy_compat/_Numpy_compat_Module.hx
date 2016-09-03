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
		
		If called with all arguments other than the warning class omitted, may be
		used as a context manager:
		
		    with assert_warns(SomeWarning):
		        do_something()
		
		The ability to be used as a context manager is new in NumPy v1.11.0.
		
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
	static public function _assert_warns(warning_class:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Fail unless an exception of class exception_class and with message that
		matches expected_regexp is thrown by callable when invoked with arguments
		args and keyword arguments kwargs.
		Name of this function adheres to Python 3.2+ reference, but should work in
		all versions down to 2.6.
		Notes
		-----
		.. versionadded:: 1.8.0
	**/
	static public function assert_raises_regex(exception_class:Dynamic, expected_regexp:Dynamic, ?callable_obj:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Broadcast an array to a new shape.
		
		Parameters
		----------
		array : array_like
		    The array to broadcast.
		shape : tuple
		    The shape of the desired array.
		subok : bool, optional
		    If True, then sub-classes will be passed-through, otherwise
		    the returned array will be forced to be a base-class array (default).
		
		Returns
		-------
		broadcast : array
		    A readonly view on the original array with the given shape. It is
		    typically not contiguous. Furthermore, more than one element of a
		    broadcasted array may refer to a single memory location.
		
		Raises
		------
		ValueError
		    If the array is not compatible with the new shape according to NumPy's
		    broadcasting rules.
		
		Notes
		-----
		.. versionadded:: 1.10.0
		
		Examples
		--------
		>>> x = np.array([1, 2, 3])
		>>> np.broadcast_to(x, (3, 3))
		array([[1, 2, 3],
		       [1, 2, 3],
		       [1, 2, 3]])
	**/
	static public function broadcast_to(array:Dynamic, shape:Dynamic, ?subok:Dynamic):Array<Dynamic>;
	static public var division : Dynamic;
	/**
		Import nose only when needed.
		    
	**/
	static public function import_nose():Dynamic;
	static public var print_function : Dynamic;
}