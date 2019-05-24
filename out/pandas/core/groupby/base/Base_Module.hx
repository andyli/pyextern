/* This file is generated, do not edit! */
package pandas.core.groupby.base;
@:pythonImport("pandas.core.groupby.base") extern class Base_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var common_apply_whitelist : Dynamic;
	static public var cython_cast_blacklist : Dynamic;
	static public var cython_transforms : Dynamic;
	static public var dataframe_apply_whitelist : Dynamic;
	/**
		Check if the object is list-like.
		
		Objects that are considered list-like are for example Python
		lists, tuples, sets, NumPy arrays, and Pandas Series.
		
		Strings and datetime objects, however, are not considered list-like.
		
		Parameters
		----------
		obj : The object to check
		allow_sets : boolean, default True
		    If this parameter is False, sets will not be considered list-like
		
		    .. versionadded:: 0.24.0
		
		Returns
		-------
		is_list_like : bool
		    Whether `obj` has list-like properties.
		
		Examples
		--------
		>>> is_list_like([1, 2, 3])
		True
		>>> is_list_like({1, 2, 3})
		True
		>>> is_list_like(datetime(2017, 1, 1))
		False
		>>> is_list_like("foo")
		False
		>>> is_list_like(1)
		False
		>>> is_list_like(np.array([2]))
		True
		>>> is_list_like(np.array(2)))
		False
	**/
	static public function is_list_like(obj:Dynamic, ?allow_sets:Dynamic):Bool;
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
		Returns a tuple containing the paramenter list with defaults
		and parameter list.
		
		Examples
		--------
		>>> def f(a, b, c=2):
		>>>     return a * b * c
		>>> print(make_signature(f))
		(['a', 'b', 'c=2'], ['a', 'b', 'c'])
	**/
	static public function make_signature(func:Dynamic):Dynamic;
	static public var plotting_methods : Dynamic;
	static public var series_apply_whitelist : Dynamic;
	/**
		Yields all GroupBy member defs for DataFrame/Series names in whitelist.
		
		Parameters
		----------
		base : class
		    base class
		klass : class
		    class where members are defined.
		    Should be Series or DataFrame
		whitelist : list
		    list of names of klass methods to be constructed
		
		Returns
		-------
		The generator yields a sequence of strings, each suitable for exec'ing,
		that define implementations of the named methods for DataFrameGroupBy
		or SeriesGroupBy.
		
		Since we don't want to override methods explicitly defined in the
		base class, any such name is skipped.
	**/
	static public function whitelist_method_generator(base:Dynamic, klass:Dynamic, whitelist:Dynamic):Dynamic;
}