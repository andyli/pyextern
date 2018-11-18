/* This file is generated, do not edit! */
package pandas.core.panel;
@:pythonImport("pandas.core.panel") extern class Panel_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Ensure that we have an index from some index-like object
		
		Parameters
		----------
		index : sequence
		    An Index or other sequence
		copy : bool
		
		Returns
		-------
		index : Index or MultiIndex
		
		Examples
		--------
		>>> _ensure_index(['a', 'b'])
		Index(['a', 'b'], dtype='object')
		
		>>> _ensure_index([('a', 'a'),  ('b', 'c')])
		Index([('a', 'a'), ('b', 'c')], dtype='object')
		
		>>> _ensure_index([['a', 'a'], ['b', 'c']])
		MultiIndex(levels=[['a'], ['b', 'c']],
		           labels=[[0, 0], [0, 1]])
		
		See Also
		--------
		_ensure_index_from_sequences
	**/
	static public function _ensure_index(index_like:Dynamic, ?copy:Dynamic):Dynamic;
	/**
		Makes sure that time and panels are conformable
	**/
	static public function _ensure_like_indices(time:Dynamic, panels:Dynamic):Dynamic;
	static public function _get_objs_combined_axis(objs:Dynamic, ?intersect:Dynamic, ?axis:Dynamic, ?sort:Dynamic):Dynamic;
	static public var _shared_doc_kwargs : Dynamic;
	static public var _shared_docs : Dynamic;
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
		create np.ndarray of specified shape and dtype, filled with values
		
		Parameters
		----------
		shape : tuple
		value : scalar value
		dtype : np.dtype, optional
		    dtype to coerce
		
		Returns
		-------
		ndarray of shape, filled with value, of specified / inferred dtype
	**/
	static public function cast_scalar_to_array(shape:Dynamic, value:Dynamic, ?dtype:Dynamic):Dynamic;
	static public function create_block_manager_from_arrays(arrays:Dynamic, names:Dynamic, axes:Dynamic):Dynamic;
	static public function create_block_manager_from_blocks(blocks:Dynamic, axes:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		interpret the dtype from a scalar
		
		Parameters
		----------
		pandas_dtype : bool, default False
		    whether to infer dtype including pandas extension types.
		    If False, scalar belongs to pandas extension types is inferred as
		    object
	**/
	static public function infer_dtype_from_scalar(val:Dynamic, ?pandas_dtype:Dynamic):Dynamic;
	static public function is_integer(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Check if the object is list-like.
		
		Objects that are considered list-like are for example Python
		lists, tuples, sets, NumPy arrays, and Pandas Series.
		
		Strings and datetime objects, however, are not considered list-like.
		
		Parameters
		----------
		obj : The object to check.
		
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
	**/
	static public function is_list_like(obj:Dynamic):Bool;
	/**
		Return True if given value is scalar.
		
		This includes:
		- numpy array scalar (e.g. np.int64)
		- Python builtin numerics
		- Python builtin byte arrays and strings
		- None
		- instances of datetime.datetime
		- instances of datetime.timedelta
		- Period
		- instances of decimal.Decimal
		- Interval
		- DateOffset
	**/
	static public function is_scalar(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Check if the object is a string.
		
		Parameters
		----------
		obj : The object to check.
		
		Examples
		--------
		>>> is_string_like("foo")
		True
		>>> is_string_like(1)
		False
		
		Returns
		-------
		is_str_like : bool
		    Whether `obj` is a string or not.
	**/
	static public function is_string_like(obj:Dynamic):Bool;
	static public function maybe_cast_item(obj:Dynamic, item:Dynamic, dtype:Dynamic):Dynamic;
	static public function maybe_droplevels(index:Dynamic, key:Dynamic):Dynamic;
	/**
		Detect non-missing values for an array-like object.
		
		This function takes a scalar or array-like object and indictates
		whether values are valid (not missing, which is ``NaN`` in numeric
		arrays, ``None`` or ``NaN`` in object arrays, ``NaT`` in datetimelike).
		
		Parameters
		----------
		obj : array-like or object value
		    Object to check for *not* null or *non*-missing values.
		
		Returns
		-------
		bool or array-like of bool
		    For scalar input, returns a scalar boolean.
		    For array input, returns an array of boolean indicating whether each
		    corresponding element is valid.
		
		See Also
		--------
		isna : boolean inverse of pandas.notna.
		Series.notna : Detetct valid values in a Series.
		DataFrame.notna : Detect valid values in a DataFrame.
		Index.notna : Detect valid values in an Index.
		
		Examples
		--------
		Scalar arguments (including strings) result in a scalar boolean.
		
		>>> pd.notna('dog')
		True
		
		>>> pd.notna(np.nan)
		False
		
		ndarrays result in an ndarray of booleans.
		
		>>> array = np.array([[1, np.nan, 3], [4, 5, np.nan]])
		>>> array
		array([[ 1., nan,  3.],
		       [ 4.,  5., nan]])
		>>> pd.notna(array)
		array([[ True, False,  True],
		       [ True,  True, False]])
		
		For indexes, an ndarray of booleans is returned.
		
		>>> index = pd.DatetimeIndex(["2017-07-05", "2017-07-06", None,
		...                          "2017-07-08"])
		>>> index
		DatetimeIndex(['2017-07-05', '2017-07-06', 'NaT', '2017-07-08'],
		              dtype='datetime64[ns]', freq=None)
		>>> pd.notna(index)
		array([ True,  True, False,  True])
		
		For Series and DataFrame, the same type is returned, containing booleans.
		
		>>> df = pd.DataFrame([['ant', 'bee', 'cat'], ['dog', None, 'fly']])
		>>> df
		     0     1    2
		0  ant   bee  cat
		1  dog  None  fly
		>>> pd.notna(df)
		      0      1     2
		0  True   True  True
		1  True  False  True
		
		>>> pd.notna(df[1])
		0     True
		1    False
		Name: 1, dtype: bool
	**/
	static public function notna(obj:Dynamic):Dynamic;
	/**
		Returns a multi-index suitable for a panel-like DataFrame
		
		Parameters
		----------
		time : array-like
		    Time index, does not have to repeat
		panels : array-like
		    Panel index, does not have to repeat
		names : list, optional
		    List containing the names of the indices
		
		Returns
		-------
		multi_index : MultiIndex
		    Time index is the first level, the panels are the second level.
		
		Examples
		--------
		>>> years = range(1960,1963)
		>>> panels = ['A', 'B', 'C']
		>>> panel_idx = panel_index(years, panels)
		>>> panel_idx
		MultiIndex([(1960, 'A'), (1961, 'A'), (1962, 'A'), (1960, 'B'),
		            (1961, 'B'), (1962, 'B'), (1960, 'C'), (1961, 'C'),
		            (1962, 'C')], dtype=object)
		
		or
		
		>>> import numpy as np
		>>> years = np.repeat(range(1960,1963), 3)
		>>> panels = np.tile(['A', 'B', 'C'], 3)
		>>> panel_idx = panel_index(years, panels)
		>>> panel_idx
		MultiIndex([(1960, 'A'), (1960, 'B'), (1960, 'C'), (1961, 'A'),
		            (1961, 'B'), (1961, 'C'), (1962, 'A'), (1962, 'B'),
		            (1962, 'C')], dtype=object)
	**/
	static public function panel_index(time:Dynamic, panels:Dynamic, ?names:Dynamic):pandas.MultiIndex;
	/**
		This function is the sanctioned way of converting objects
		to a unicode representation.
		
		properly handles nested sequences containing unicode strings
		(unicode(object) does not)
		
		Parameters
		----------
		thing : anything to be formatted
		_nest_lvl : internal use only. pprint_thing() is mutually-recursive
		    with pprint_sequence, this argument is used to keep track of the
		    current nesting level, and limit it.
		escape_chars : list or dict, optional
		    Characters to escape. If a dict is passed the values are the
		    replacements
		default_escapes : bool, default False
		    Whether the input escape characters replaces or adds to the defaults
		max_seq_items : False, int, default None
		    Pass thru to other pretty printers to limit sequence printing
		
		Returns
		-------
		result - unicode object on py2, str on py3. Always Unicode.
	**/
	static public function pprint_thing(thing:Dynamic, ?_nest_lvl:Dynamic, ?escape_chars:Dynamic, ?default_escapes:Dynamic, ?quote_strings:Dynamic, ?max_seq_items:Dynamic):Dynamic;
	static public function u(s:Dynamic):Dynamic;
	/**
		Argument handler for mixed index, columns / axis functions
		
		In an attempt to handle both `.method(index, columns)`, and
		`.method(arg, axis=.)`, we have to do some bad things to argument
		parsing. This translates all arguments to `{index=., columns=.}` style.
		
		Parameters
		----------
		data : DataFrame or Panel
		arg : tuple
		    All positional arguments from the user
		kwargs : dict
		    All keyword arguments from the user
		arg_name, method_name : str
		    Used for better error messages
		
		Returns
		-------
		kwargs : dict
		    A dictionary of keyword arguments. Doesn't modify ``kwargs``
		    inplace, so update them with the return value here.
		
		Examples
		--------
		>>> df._validate_axis_style_args((str.upper,), {'columns': id},
		...                              'mapper', 'rename')
		{'columns': <function id>, 'index': <method 'upper' of 'str' objects>}
		
		This emits a warning
		>>> df._validate_axis_style_args((str.upper, id), {},
		...                              'mapper', 'rename')
		{'columns': <function id>, 'index': <method 'upper' of 'str' objects>}
	**/
	static public function validate_axis_style_args(data:Dynamic, args:Dynamic, kwargs:Dynamic, arg_name:Dynamic, method_name:Dynamic):python.Dict<Dynamic, Dynamic>;
}