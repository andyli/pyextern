/* This file is generated, do not edit! */
package pandas._libs.missing;
@:pythonImport("pandas._libs.missing") extern class Missing_Module {
	static public var NA : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __pyx_capi__ : Dynamic;
	static public function __pyx_unpickle_C_NAType(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var __spec__ : Dynamic;
	static public var __test__ : Dynamic;
	static public function _create_binary_propagating_op(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function _create_unary_propagating_op(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return boolean describing of the input is NA-like, defined here as any
		of:
		 - None
		 - nan
		 - NaT
		 - np.datetime64 representation of NaT
		 - np.timedelta64 representation of NaT
		 - NA
		 - Decimal("NaN")
		
		Parameters
		----------
		val : object
		inf_as_na : bool, default False
		    Whether to treat INF and -INF as NA values.
		
		Returns
		-------
		bool
	**/
	static public function checknull(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		True for elements which correspond to a float nan
		
		Returns
		-------
		ndarray[bool]
	**/
	static public function is_float_nan(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Check if two scalars are both NA of matching types.
		
		Parameters
		----------
		left : Any
		right : Any
		nan_matches_none : bool, default False
		    For backwards compatibility, consider NaN as matching None.
		
		Returns
		-------
		bool
	**/
	static public function is_matching_na(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Check for NA values consistent with IntegerArray/FloatingArray.
		
		Similar to a vectorized is_valid_na_for_dtype restricted to numeric dtypes.
		
		Returns
		-------
		ndarray[bool]
	**/
	static public function is_numeric_na(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return boolean mask denoting which elements of a 1-D array are na-like,
		according to the criteria defined in `checknull`:
		 - None
		 - nan
		 - NaT
		 - np.datetime64 representation of NaT
		 - np.timedelta64 representation of NaT
		 - NA
		 - Decimal("NaN")
		
		Parameters
		----------
		arr : ndarray
		
		Returns
		-------
		result : ndarray (dtype=np.bool_)
	**/
	static public function isnaobj(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return boolean mask denoting which elements of a 2-D array are na-like,
		according to the criteria defined in `checknull`:
		 - None
		 - nan
		 - NaT
		 - np.datetime64 representation of NaT
		 - np.timedelta64 representation of NaT
		 - NA
		 - Decimal("NaN")
		
		Parameters
		----------
		arr : ndarray
		
		Returns
		-------
		result : ndarray (dtype=np.bool_)
	**/
	static public function isnaobj2d(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function isneginf_scalar(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function isposinf_scalar(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var maxsize : Dynamic;
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