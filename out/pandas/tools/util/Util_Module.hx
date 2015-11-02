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
	/**
		Numpy version of itertools.product or pandas.compat.product.
		Sometimes faster (for large inputs)...
		
		Examples
		--------
		>>> cartesian_product([list('ABC'), [1, 2]])
		[array(['A', 'A', 'B', 'B', 'C', 'C'], dtype='|S1'),
		array([1, 2, 1, 2, 1, 2])]
	**/
	static public function cartesian_product(X:Dynamic):Dynamic;
	/**
		Compose 2 or more callables
	**/
	static public function compose(?funcs:python.VarArgs<Dynamic>):Dynamic;
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
		arg : list, tuple or array of objects, or Series
		errors : {'ignore', 'raise', 'coerce'}, default 'raise'
		    - If 'raise', then invalid parsing will raise an exception
		    - If 'coerce', then invalid parsing will be set as NaN
		    - If 'ignore', then invalid parsing will return the input
		
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
		>>> s = pd.Series(['apple', '1.0', '2', -3])
		>>> pd.to_numeric(s, errors='ignore')
		>>> pd.to_numeric(s, errors='coerce')
	**/
	static public function to_numeric(arg:Dynamic, ?errors:Dynamic):Dynamic;
}