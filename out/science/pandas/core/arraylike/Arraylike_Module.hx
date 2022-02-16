/* This file is generated, do not edit! */
package pandas.core.arraylike;
@:pythonImport("pandas.core.arraylike") extern class Arraylike_Module {
	static public function Any(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public var REDUCTION_ALIASES : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Set a ufunc result into 'out', masking with a 'where' argument if necessary.
	**/
	static public function _assign_where(out:Dynamic, result:Dynamic, where:Dynamic):Dynamic;
	/**
		Helper to check if a DataFrame is aligned with another DataFrame or Series.
	**/
	static public function _is_aligned(frame:Dynamic, other:Dynamic):Dynamic;
	/**
		In the future DataFrame, inputs to ufuncs will be aligned before applying
		the ufunc, but for now we ignore the index but raise a warning if behaviour
		would change in the future.
		This helper detects the case where a warning is needed and then fallbacks
		to applying the ufunc on arrays to avoid alignment.
		
		See https://github.com/pandas-dev/pandas/pull/39239
	**/
	static public function _maybe_fallback(ufunc:Dynamic, method:Dynamic, ?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		If kwargs contain "out1" and "out2", replace that with a tuple "out"
		
		np.divmod, np.modf, np.frexp can have either `out=(out1, out2)` or
		`out1=out1, out2=out2)`
	**/
	static public function _standardize_out_kwarg(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Compatibility with numpy ufuncs.
		
		See also
		--------
		numpy.org/doc/stable/reference/arrays.classes.html#numpy.class.__array_ufunc__
	**/
	static public function array_ufunc(self:Dynamic, ufunc:Dynamic, method:Dynamic, ?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Fallback to the behavior we would get if we did not define __array_ufunc__.
		
		Notes
		-----
		We are assuming that `self` is among `inputs`.
	**/
	static public function default_array_ufunc(self:Dynamic, ufunc:Dynamic, method:Dynamic, ?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Dispatch ufunc reductions to self's reduction methods.
	**/
	static public function dispatch_reduction_ufunc(self:Dynamic, ufunc:Dynamic, method:Dynamic, ?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		If we have an `out` keyword, then call the ufunc without `out` and then
		set the result into the given `out`.
	**/
	static public function dispatch_ufunc_with_out(self:Dynamic, ufunc:Dynamic, method:Dynamic, ?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Extract the ndarray or ExtensionArray from a Series or Index.
		
		For all other types, `obj` is just returned as is.
		
		Parameters
		----------
		obj : object
		    For Series / Index, the underlying ExtensionArray is unboxed.
		
		extract_numpy : bool, default False
		    Whether to extract the ndarray from a PandasArray.
		
		extract_range : bool, default False
		    If we have a RangeIndex, return range._values if True
		    (which is a materialized integer ndarray), otherwise return unchanged.
		
		Returns
		-------
		arr : object
		
		Examples
		--------
		>>> extract_array(pd.Series(['a', 'b', 'c'], dtype='category'))
		['a', 'b', 'c']
		Categories (3, object): ['a', 'b', 'c']
		
		Other objects like lists, arrays, and DataFrames are just passed through.
		
		>>> extract_array([1, 2, 3])
		[1, 2, 3]
		
		For an ndarray-backed Series / Index the ndarray is returned.
		
		>>> extract_array(pd.Series([1, 2, 3]))
		array([1, 2, 3])
		
		To extract all the way down to the ndarray, pass ``extract_numpy=True``.
		
		>>> extract_array(pd.Series([1, 2, 3]), extract_numpy=True)
		array([1, 2, 3])
	**/
	static public function extract_array(obj:Dynamic, ?extract_numpy:Dynamic, ?extract_range:Dynamic):Dynamic;
	/**
		Find the first place in the stack that is not inside pandas
		(tests notwithstanding).
	**/
	static public function find_stack_level():Dynamic;
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
	/**
		Boilerplate for pandas conventions in arithmetic and comparison methods.
		
		Parameters
		----------
		name : str
		
		Returns
		-------
		decorator
	**/
	static public function unpack_zerodim_and_defer(name:Dynamic):Dynamic;
}