/* This file is generated, do not edit! */
package pandas.tools.util;
@:pythonImport("pandas.tools.util") extern class Util_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Compose 2 callables
	**/
	static public function _compose2(f:Dynamic, g:Dynamic):Dynamic;
	static public function _ensure_object(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		try to cast to the specified dtype (e.g. convert back to bool/int
		or could be an astype of float64->float32
	**/
	static public function _possibly_downcast_to_dtype(result:Dynamic, dtype:Dynamic):Dynamic;
	/**
		Numpy version of itertools.product or pandas.compat.product.
		Sometimes faster (for large inputs)...
		
		Parameters
		----------
		X : list-like of list-likes
		
		Returns
		-------
		product : list of ndarrays
		
		Examples
		--------
		>>> cartesian_product([list('ABC'), [1, 2]])
		[array(['A', 'A', 'B', 'B', 'C', 'C'], dtype='|S1'),
		array([1, 2, 1, 2, 1, 2])]
		
		See also
		--------
		itertools.product : Cartesian product of input iterables.  Equivalent to
		    nested for-loops.
		pandas.compat.product : An alias for itertools.product.
	**/
	static public function cartesian_product(X:Dynamic):Dynamic;
	/**
		Compose 2 or more callables
	**/
	static public function compose(?funcs:python.VarArgs<Dynamic>):Dynamic;
	static public function is_datetime_or_timedelta_dtype(arr_or_dtype:Dynamic):Dynamic;
	static public function is_list_like(arg:Dynamic):Dynamic;
	static public function is_number(obj:Dynamic):Dynamic;
	static public function is_numeric_dtype(arr_or_dtype:Dynamic):Dynamic;
	static public function match(needles:Dynamic, haystack:Dynamic):Dynamic;
	/**
		reduce(function, sequence[, initial]) -> value
		
		Apply a function of two arguments cumulatively to the items of a sequence,
		from left to right, so as to reduce the sequence to a single value.
		For example, reduce(lambda x, y: x+y, [1, 2, 3, 4, 5]) calculates
		((((1+2)+3)+4)+5).  If initial is present, it is placed before the items
		of the sequence in the calculation, and serves as a default when the
		sequence is empty.
	**/
	static public function reduce(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Convert argument to a numeric type.
		
		Parameters
		----------
		arg : list, tuple, 1-d array, or Series
		errors : {'ignore', 'raise', 'coerce'}, default 'raise'
		    - If 'raise', then invalid parsing will raise an exception
		    - If 'coerce', then invalid parsing will be set as NaN
		    - If 'ignore', then invalid parsing will return the input
		downcast : {'integer', 'signed', 'unsigned', 'float'} , default None
		    If not None, and if the data has been successfully cast to a
		    numerical dtype (or if the data was numeric to begin with),
		    downcast that resulting data to the smallest numerical dtype
		    possible according to the following rules:
		
		    - 'integer' or 'signed': smallest signed int dtype (min.: np.int8)
		    - 'unsigned': smallest unsigned int dtype (min.: np.uint8)
		    - 'float': smallest float dtype (min.: np.float32)
		
		    As this behaviour is separate from the core conversion to
		    numeric values, any errors raised during the downcasting
		    will be surfaced regardless of the value of the 'errors' input.
		
		    In addition, downcasting will only occur if the size
		    of the resulting data's dtype is strictly larger than
		    the dtype it is to be cast to, so if none of the dtypes
		    checked satisfy that specification, no downcasting will be
		    performed on the data.
		
		    .. versionadded:: 0.19.0
		
		Returns
		-------
		ret : numeric if parsing succeeded.
		    Return type depends on input.  Series if Series, otherwise ndarray
		
		Examples
		--------
		Take separate series and convert to numeric, coercing when told to
		
		>>> import pandas as pd
		>>> s = pd.Series(['1.0', '2', -3])
		>>> pd.to_numeric(s)
		0    1.0
		1    2.0
		2   -3.0
		dtype: float64
		>>> pd.to_numeric(s, downcast='float')
		0    1.0
		1    2.0
		2   -3.0
		dtype: float32
		>>> pd.to_numeric(s, downcast='signed')
		0    1
		1    2
		2   -3
		dtype: int8
		>>> s = pd.Series(['apple', '1.0', '2', -3])
		>>> pd.to_numeric(s, errors='ignore')
		0    apple
		1      1.0
		2        2
		3       -3
		dtype: object
		>>> pd.to_numeric(s, errors='coerce')
		0    NaN
		1    1.0
		2    2.0
		3   -3.0
		dtype: float64
	**/
	static public function to_numeric(arg:Dynamic, ?errors:Dynamic, ?downcast:Dynamic):Dynamic;
}