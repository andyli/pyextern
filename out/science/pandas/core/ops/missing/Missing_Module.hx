/* This file is generated, do not edit! */
package pandas.core.ops.missing;
@:pythonImport("pandas.core.ops.missing") extern class Missing_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		If this is a reversed op, then flip x,y
		
		If we have an integer value (or array in y)
		and we have 0's, fill them with np.nan,
		return the result.
		
		Mask the nan's from x.
	**/
	static public function _fill_zeros(result:Dynamic, x:Dynamic, y:Dynamic):Dynamic;
	/**
		Call _fill_zeros with the appropriate fill value depending on the operation,
		with special logic for divmod and rdivmod.
		
		Parameters
		----------
		op : function (operator.add, operator.div, ...)
		left : object (np.ndarray for non-reversed ops)
		right : object (np.ndarray for reversed ops)
		result : ndarray
		
		Returns
		-------
		result : np.ndarray
		
		Notes
		-----
		For divmod and rdivmod, the `result` parameter and returned `result`
		is a 2-tuple of ndarray objects.
	**/
	static public function dispatch_fill_zeros(op:Dynamic, left:Dynamic, right:Dynamic, result:Dynamic):Dynamic;
	/**
		Check whether the provided array or dtype is of a float dtype.
		
		This function is internal and should not be exposed in the public API.
		
		Parameters
		----------
		arr_or_dtype : array-like or dtype
		    The array or dtype to check.
		
		Returns
		-------
		boolean
		    Whether or not the array or dtype is of a float dtype.
		
		Examples
		--------
		>>> is_float_dtype(str)
		False
		>>> is_float_dtype(int)
		False
		>>> is_float_dtype(float)
		True
		>>> is_float_dtype(np.array(['a', 'b']))
		False
		>>> is_float_dtype(pd.Series([1, 2]))
		False
		>>> is_float_dtype(pd.Index([1, 2.]))
		True
	**/
	static public function is_float_dtype(arr_or_dtype:Dynamic):Dynamic;
	/**
		Check whether the provided array or dtype is of an integer dtype.
		
		Unlike in `is_any_int_dtype`, timedelta64 instances will return False.
		
		The nullable Integer dtypes (e.g. pandas.Int64Dtype) are also considered
		as integer by this function.
		
		Parameters
		----------
		arr_or_dtype : array-like or dtype
		    The array or dtype to check.
		
		Returns
		-------
		boolean
		    Whether or not the array or dtype is of an integer dtype and
		    not an instance of timedelta64.
		
		Examples
		--------
		>>> is_integer_dtype(str)
		False
		>>> is_integer_dtype(int)
		True
		>>> is_integer_dtype(float)
		False
		>>> is_integer_dtype(np.uint64)
		True
		>>> is_integer_dtype('int8')
		True
		>>> is_integer_dtype('Int8')
		True
		>>> is_integer_dtype(pd.Int8Dtype)
		True
		>>> is_integer_dtype(np.datetime64)
		False
		>>> is_integer_dtype(np.timedelta64)
		False
		>>> is_integer_dtype(np.array(['a', 'b']))
		False
		>>> is_integer_dtype(pd.Series([1, 2]))
		True
		>>> is_integer_dtype(np.array([], dtype=np.timedelta64))
		False
		>>> is_integer_dtype(pd.Index([1, 2.]))  # float
		False
	**/
	static public function is_integer_dtype(arr_or_dtype:Dynamic):Dynamic;
	/**
		Return True if given object is scalar.
		
		Parameters
		----------
		val : object
		    This includes:
		
		    - numpy array scalar (e.g. np.int64)
		    - Python builtin numerics
		    - Python builtin byte arrays and strings
		    - None
		    - datetime.datetime
		    - datetime.timedelta
		    - Period
		    - decimal.Decimal
		    - Interval
		    - DateOffset
		    - Fraction
		    - Number.
		
		Returns
		-------
		bool
		    Return True if given object is scalar.
		
		Examples
		--------
		>>> import datetime
		>>> dt = datetime.datetime(2018, 10, 3)
		>>> pd.api.types.is_scalar(dt)
		True
		
		>>> pd.api.types.is_scalar([2, 3])
		False
		
		>>> pd.api.types.is_scalar({0: 1, 2: 3})
		False
		
		>>> pd.api.types.is_scalar((0, 2))
		False
		
		pandas supports PEP 3141 numbers:
		
		>>> from fractions import Fraction
		>>> pd.api.types.is_scalar(Fraction(3, 5))
		True
	**/
	static public function is_scalar(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Set results of  0 // 0 to np.nan, regardless of the dtypes
		of the numerator or the denominator.
		
		Parameters
		----------
		x : ndarray
		y : ndarray
		result : ndarray
		
		Returns
		-------
		ndarray
		    The filled result.
		
		Examples
		--------
		>>> x = np.array([1, 0, -1], dtype=np.int64)
		>>> x
		array([ 1,  0, -1])
		>>> y = 0       # int 0; numpy behavior is different with float
		>>> result = x // y
		>>> result      # raw numpy result does not fill division by zero
		array([0, 0, 0])
		>>> mask_zero_div_zero(x, y, result)
		array([ inf,  nan, -inf])
	**/
	static public function mask_zero_div_zero(x:Dynamic, y:Dynamic, result:Dynamic):Dynamic;
}