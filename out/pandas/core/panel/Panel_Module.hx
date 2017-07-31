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
	static public function _default_index(n:Dynamic):Dynamic;
	static public function _ensure_index(index_like:Dynamic, ?copy:Dynamic):Dynamic;
	/**
		Makes sure that time and panels are conformable
	**/
	static public function _ensure_like_indices(time:Dynamic, panels:Dynamic):Dynamic;
	static public function _get_combined_index(indexes:Dynamic, ?intersect:Dynamic):Dynamic;
	static public var _op_descriptions : Dynamic;
	static public var _shared_doc_kwargs : Dynamic;
	static public var _shared_docs : Dynamic;
	static public function _try_sort(iterable:Dynamic):Dynamic;
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
	static public function create_block_manager_from_arrays(arrays:Dynamic, names:Dynamic, axes:Dynamic):Dynamic;
	static public function create_block_manager_from_blocks(blocks:Dynamic, axes:Dynamic):Dynamic;
	static public function deprecate(name:Dynamic, alternative:Dynamic, ?alt_name:Dynamic):Dynamic;
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
		Replacement for numpy.isfinite / -numpy.isnan which is suitable for use
		on object arrays.
		
		Parameters
		----------
		arr : ndarray or object value
		    Object to check for *not*-null-ness
		
		Returns
		-------
		isnulled : array-like of bool or bool
		    Array or bool indicating whether an object is *not* null or if an array
		    is given which of the element is *not* null.
		
		See also
		--------
		pandas.isnull : boolean inverse of pandas.notnull
	**/
	static public function notnull(obj:Dynamic):Dynamic;
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
}