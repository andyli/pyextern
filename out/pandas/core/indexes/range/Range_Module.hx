/* This file is generated, do not edit! */
package pandas.core.indexes.range;
@:pythonImport("pandas.core.indexes.range") extern class Range_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var _index_shared_docs : Dynamic;
	/**
		Gets the start, stop, and step parameters from a range object
	**/
	static public function get_range_parameters(data:Dynamic):Dynamic;
	/**
		getsizeof(object, default) -> int
		
		Return the size of object in bytes.
	**/
	static public function getsizeof(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Check whether the provided array or dtype is of the int64 dtype.
		
		Parameters
		----------
		arr_or_dtype : array-like
		    The array or dtype to check.
		
		Returns
		-------
		boolean : Whether or not the array or dtype is of the int64 dtype.
		
		Notes
		-----
		Depending on system architecture, the return value of `is_int64_dtype(
		int)` will be True if the OS uses 64-bit integers and False if the OS
		uses 32-bit integers.
		
		Examples
		--------
		>>> is_int64_dtype(str)
		False
		>>> is_int64_dtype(np.int32)
		False
		>>> is_int64_dtype(np.int64)
		True
		>>> is_int64_dtype('int8')
		False
		>>> is_int64_dtype('Int8')
		False
		>>> is_int64_dtype(pd.Int64Dtype)
		True
		>>> is_int64_dtype(float)
		False
		>>> is_int64_dtype(np.uint64)  # unsigned
		False
		>>> is_int64_dtype(np.array(['a', 'b']))
		False
		>>> is_int64_dtype(np.array([1, 2], dtype=np.int64))
		True
		>>> is_int64_dtype(pd.Index([1, 2.]))  # float
		False
		>>> is_int64_dtype(np.array([1, 2], dtype=np.uint32))  # unsigned
		False
	**/
	static public function is_int64_dtype(arr_or_dtype:Dynamic):Dynamic;
	static public function is_integer(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return True if given value is scalar.
		
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
		    - Number
		
		Returns
		-------
		bool
		    Return True if given object is scalar, False otherwise
		
		Examples
		--------
		>>> dt = pd.datetime.datetime(2018, 10, 3)
		>>> pd.is_scalar(dt)
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
		Check whether an array-like or dtype is of the timedelta64 dtype.
		
		Parameters
		----------
		arr_or_dtype : array-like
		    The array-like or dtype to check.
		
		Returns
		-------
		boolean : Whether or not the array-like or dtype is
		          of the timedelta64 dtype.
		
		Examples
		--------
		>>> is_timedelta64_dtype(object)
		False
		>>> is_timedelta64_dtype(np.timedelta64)
		True
		>>> is_timedelta64_dtype([1, 2, 3])
		False
		>>> is_timedelta64_dtype(pd.Series([], dtype="timedelta64[ns]"))
		True
		>>> is_timedelta64_dtype('0 days')
		False
	**/
	static public function is_timedelta64_dtype(arr_or_dtype:Dynamic):Dynamic;
	static public function lrange(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}