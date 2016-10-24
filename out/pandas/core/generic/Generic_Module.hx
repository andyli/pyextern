/* This file is generated, do not edit! */
package pandas.core.generic;
@:pythonImport("pandas.core.generic") extern class Generic_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var _bool_doc : Dynamic;
	static public var _cnum_doc : Dynamic;
	/**
		coerce a string / np.dtype to a dtype 
	**/
	static public function _coerce_to_dtype(dtype:Dynamic):Dynamic;
	/**
		Return a tuple of the doc parms.
	**/
	static public function _doc_parms(cls:Dynamic):Dynamic;
	static public function _ensure_index(index_like:Dynamic, ?copy:Dynamic):Dynamic;
	static public function _ensure_int64(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function _make_cum_function(cls:Dynamic, name:Dynamic, name1:Dynamic, name2:Dynamic, axis_descr:Dynamic, desc:Dynamic, accum_func:Dynamic, mask_a:Dynamic, mask_b:Dynamic):Dynamic;
	static public function _make_logical_function(cls:Dynamic, name:Dynamic, name1:Dynamic, name2:Dynamic, axis_descr:Dynamic, desc:Dynamic, f:Dynamic):Dynamic;
	static public function _make_stat_function(cls:Dynamic, name:Dynamic, name1:Dynamic, name2:Dynamic, axis_descr:Dynamic, desc:Dynamic, f:Dynamic):Dynamic;
	static public function _make_stat_function_ddof(cls:Dynamic, name:Dynamic, name1:Dynamic, name2:Dynamic, axis_descr:Dynamic, desc:Dynamic, f:Dynamic):Dynamic;
	static public function _maybe_box_datetimelike(value:Dynamic):Dynamic;
	static public function _maybe_promote(dtype:Dynamic, ?fill_value:Dynamic):Dynamic;
	/**
		A safe version of putmask that potentially upcasts the result
		
		Parameters
		----------
		result : ndarray
		    The destination array. This will be mutated in-place if no upcasting is
		    necessary.
		mask : boolean ndarray
		other : ndarray or scalar
		    The source array or value
		
		Returns
		-------
		result : ndarray
		changed : boolean
		    Set to true if the result array was upcasted
	**/
	static public function _maybe_upcast_putmask(result:Dynamic, mask:Dynamic, other:Dynamic):Dynamic;
	static public var _name : Dynamic;
	static public var _num_ddof_doc : Dynamic;
	static public var _num_doc : Dynamic;
	static public var _shared_doc_kwargs : Dynamic;
	static public var _shared_docs : Dynamic;
	static public function _single_replace(self:Dynamic, to_replace:Dynamic, method:Dynamic, inplace:Dynamic, limit:Dynamic):Dynamic;
	/**
		return my values or the object if we are say an ndarray 
	**/
	static public function _values_from_object(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Decorator to deprecate a keyword argument of a function
		
		Parameters
		----------
		old_arg_name : str
		    Name of argument in function to deprecate
		new_arg_name : str
		    Name of prefered argument in function
		mapping : dict or callable
		    If mapping is present, use it to translate old arguments to
		    new arguments. A callable must do its own value checking;
		    values not found in a dict will be forwarded unchanged.
		
		Examples
		--------
		The following deprecates 'cols', using 'columns' instead
		
		>>> @deprecate_kwarg(old_arg_name='cols', new_arg_name='columns')
		... def f(columns=''):
		...     print(columns)
		...
		>>> f(columns='should work ok')
		should work ok
		>>> f(cols='should raise warning')
		FutureWarning: cols is deprecated, use columns instead
		  warnings.warn(msg, FutureWarning)
		should raise warning
		>>> f(cols='should error', columns="can't pass do both")
		TypeError: Can only specify 'cols' or 'columns', not both
		>>> @deprecate_kwarg('old', 'new', {'yes': True, 'no': False})
		... def f(new=False):
		...     print('yes!' if new else 'no!')
		...
		>>> f(old='yes')
		FutureWarning: old='yes' is deprecated, use new=True instead
		  warnings.warn(msg, FutureWarning)
		yes!
	**/
	static public function deprecate_kwarg(old_arg_name:Dynamic, new_arg_name:Dynamic, ?mapping:Dynamic, ?stacklevel:Dynamic):Dynamic;
	/**
		Outputs rounded and formatted percentiles.
		
		Parameters
		----------
		percentiles : list-like, containing floats from interval [0,1]
		
		Returns
		-------
		formatted : list of strings
		
		Notes
		-----
		Rounding precision is chosen so that: (1) if any two elements of
		``percentiles`` differ, they remain different after rounding
		(2) no entry is *rounded* to 0% or 100%.
		Any non-integer is always rounded to at least 1 decimal place.
		
		Examples
		--------
		Keeps all entries different after rounding:
		
		>>> format_percentiles([0.01999, 0.02001, 0.5, 0.666666, 0.9999])
		['1.999%', '2.001%', '50%', '66.667%', '99.99%']
		
		No element is rounded to 0% or 100% (unless already equal to it).
		Duplicates are allowed:
		
		>>> format_percentiles([0, 0.5, 0.02001, 0.5, 0.666666, 0.9999])
		['0%', '50%', '2.0%', '50%', '66.67%', '99.99%']
	**/
	static public function format_percentiles(percentiles:Dynamic):Dynamic;
	static public function is_bool(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function is_bool_dtype(arr_or_dtype:Dynamic):Dynamic;
	static public function is_datetime64_dtype(arr_or_dtype:Dynamic):Dynamic;
	static public function is_datetime64tz_dtype(arr_or_dtype:Dynamic):Dynamic;
	static public function is_dict_like(arg:Dynamic):Dynamic;
	static public function is_integer(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function is_list_like(arg:Dynamic):Dynamic;
	static public function is_numeric_dtype(arr_or_dtype:Dynamic):Dynamic;
	static public function is_re_compilable(obj:Dynamic):Dynamic;
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
	**/
	static public function is_scalar(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function is_timedelta64_dtype(arr_or_dtype:Dynamic):Dynamic;
	static public function isidentifier(s:Dynamic):Dynamic;
	/**
		Detect missing values (NaN in numeric arrays, None/NaN in object arrays)
		
		Parameters
		----------
		arr : ndarray or object value
		    Object to check for null-ness
		
		Returns
		-------
		isnulled : array-like of bool or bool
		    Array or bool indicating whether an object is null or if an array is
		    given which of the element is null.
		
		See also
		--------
		pandas.notnull: boolean inverse of pandas.isnull
	**/
	static public function isnull(obj:Dynamic):Dynamic;
	static public function lrange(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function needs_i8_conversion(arr_or_dtype:Dynamic):Dynamic;
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
	/**
		Bind the name/qualname attributes of the function 
	**/
	static public function set_function_name(f:Dynamic, name:Dynamic, cls:Dynamic):Dynamic;
	static public var string_types : Dynamic;
	/**
		Return DateOffset object from string or tuple representation
		or datetime.timedelta object
		
		Parameters
		----------
		freq : str, tuple, datetime.timedelta, DateOffset or None
		
		Returns
		-------
		delta : DateOffset
		    None if freq is None
		
		Raises
		------
		ValueError
		    If freq is an invalid frequency
		
		See Also
		--------
		pandas.DateOffset
		
		Examples
		--------
		>>> to_offset('5min')
		<5 * Minutes>
		
		>>> to_offset('1D1H')
		<25 * Hours>
		
		>>> to_offset(('W', 2))
		<2 * Weeks: weekday=6>
		
		>>> to_offset((2, 'B'))
		<2 * BusinessDays>
		
		>>> to_offset(datetime.timedelta(days=1))
		<Day>
		
		>>> to_offset(Hour())
		<Hour>
	**/
	static public function to_offset(freq:Dynamic):pandas.DateOffset;
}