/* This file is generated, do not edit! */
package pandas.core.computation.ops;
@:pythonImport("pandas.core.computation.ops") extern class Ops_Module {
	static public var PY3 : Dynamic;
	static public var _DEFAULT_GLOBALS : Dynamic;
	static public var _LOCAL_TAG : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var _arith_ops_dict : Dynamic;
	static public var _arith_ops_funcs : Dynamic;
	static public var _arith_ops_syms : Dynamic;
	static public var _binary_math_ops : Dynamic;
	static public var _binary_ops_dict : Dynamic;
	static public var _bool_op_map : Dynamic;
	static public var _bool_ops_dict : Dynamic;
	static public var _bool_ops_funcs : Dynamic;
	static public var _bool_ops_syms : Dynamic;
	/**
		Cast an expression inplace.
		
		Parameters
		----------
		terms : Op
		    The expression that should cast.
		acceptable_dtypes : list of acceptable numpy.dtype
		    Will not cast if term's dtype in this list.
		
		    .. versionadded:: 0.19.0
		
		dtype : str or numpy.dtype
		    The dtype to cast to.
	**/
	static public function _cast_inplace(terms:Dynamic, acceptable_dtypes:Dynamic, dtype:Dynamic):Dynamic;
	static public var _cmp_ops_dict : Dynamic;
	static public var _cmp_ops_funcs : Dynamic;
	static public var _cmp_ops_syms : Dynamic;
	/**
		if we have bytes, decode them to unicode 
	**/
	static public function _ensure_decoded(s:Dynamic):Dynamic;
	/**
		Compute the vectorized membership of ``x in y`` if possible, otherwise
		use Python.
	**/
	static public function _in(x:Dynamic, y:Dynamic):Dynamic;
	static public var _mathops : Dynamic;
	/**
		Compute the vectorized membership of ``x not in y`` if possible,
		otherwise use Python.
	**/
	static public function _not_in(x:Dynamic, y:Dynamic):Dynamic;
	static public var _reductions : Dynamic;
	/**
		wrapper around numpy.result_type which overcomes the NPY_MAXARGS (32)
		argument limit 
	**/
	static public function _result_type_many(?arrays_and_dtypes:python.VarArgs<Dynamic>):Dynamic;
	static public var _special_case_arith_ops_dict : Dynamic;
	static public var _special_case_arith_ops_funcs : Dynamic;
	static public var _special_case_arith_ops_syms : Dynamic;
	static public var _unary_math_ops : Dynamic;
	static public var _unary_ops_dict : Dynamic;
	static public var _unary_ops_funcs : Dynamic;
	static public var _unary_ops_syms : Dynamic;
	static public var d : Dynamic;
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
	static public function is_term(obj:Dynamic):Dynamic;
	static public function isnumeric(dtype:Dynamic):Dynamic;
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
	static public function pprint_thing_encoded(object:Dynamic, ?encoding:Dynamic, ?errors:Dynamic, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public var string_types : Dynamic;
}