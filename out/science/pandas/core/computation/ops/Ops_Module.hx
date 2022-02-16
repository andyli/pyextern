/* This file is generated, do not edit! */
package pandas.core.computation.ops;
@:pythonImport("pandas.core.computation.ops") extern class Ops_Module {
	static public var ARITH_OPS_SYMS : Dynamic;
	static public var BOOL_OPS_SYMS : Dynamic;
	static public var CMP_OPS_SYMS : Dynamic;
	/**
		Callable type; Callable[[int], str] is a function of (int) -> str.
		
		The subscription syntax must always be used with exactly two
		values: the argument list and the return type.  The argument list
		must be a list of types or ellipsis; the return type must be a single type.
		
		There is no syntax to indicate optional or keyword arguments,
		such function types are rarely used as callback types.
	**/
	static public function Callable(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var DEFAULT_GLOBALS : Dynamic;
	static public function Iterable(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var LOCAL_TAG : Dynamic;
	static public var MATHOPS : Dynamic;
	static public var REDUCTIONS : Dynamic;
	static public var SPECIAL_CASE_ARITH_OPS_SYMS : Dynamic;
	static public var UNARY_OPS_SYMS : Dynamic;
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
	static public var _binary_math_ops : Dynamic;
	static public var _binary_ops_dict : Dynamic;
	static public var _bool_op_map : Dynamic;
	static public var _bool_ops_dict : Dynamic;
	static public var _bool_ops_funcs : Dynamic;
	/**
		Cast an expression inplace.
		
		Parameters
		----------
		terms : Op
		    The expression that should cast.
		acceptable_dtypes : list of acceptable numpy.dtype
		    Will not cast if term's dtype in this list.
		dtype : str or numpy.dtype
		    The dtype to cast to.
	**/
	static public function _cast_inplace(terms:Dynamic, acceptable_dtypes:Dynamic, dtype:Dynamic):Dynamic;
	static public var _cmp_ops_dict : Dynamic;
	static public var _cmp_ops_funcs : Dynamic;
	/**
		Compute the vectorized membership of ``x in y`` if possible, otherwise
		use Python.
	**/
	static public function _in(x:Dynamic, y:Dynamic):Dynamic;
	/**
		Compute the vectorized membership of ``x not in y`` if possible,
		otherwise use Python.
	**/
	static public function _not_in(x:Dynamic, y:Dynamic):Dynamic;
	static public var _special_case_arith_ops_dict : Dynamic;
	static public var _special_case_arith_ops_funcs : Dynamic;
	static public var _unary_math_ops : Dynamic;
	static public var _unary_ops_dict : Dynamic;
	static public var _unary_ops_funcs : Dynamic;
	static public var annotations : Dynamic;
	static public var d : Dynamic;
	/**
		If we have bytes, decode them to unicode.
	**/
	static public function ensure_decoded(s:Dynamic):Dynamic;
	/**
		Check if the object is list-like.
		
		Objects that are considered list-like are for example Python
		lists, tuples, sets, NumPy arrays, and Pandas Series.
		
		Strings and datetime objects, however, are not considered list-like.
		
		Parameters
		----------
		obj : object
		    Object to check.
		allow_sets : bool, default True
		    If this parameter is False, sets will not be considered list-like.
		
		Returns
		-------
		bool
		    Whether `obj` has list-like properties.
		
		Examples
		--------
		>>> import datetime
		>>> is_list_like([1, 2, 3])
		True
		>>> is_list_like({1, 2, 3})
		True
		>>> is_list_like(datetime.datetime(2017, 1, 1))
		False
		>>> is_list_like("foo")
		False
		>>> is_list_like(1)
		False
		>>> is_list_like(np.array([2]))
		True
		>>> is_list_like(np.array(2))
		False
	**/
	static public function is_list_like(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	static public function is_term(obj:Dynamic):Dynamic;
	static public function isnumeric(dtype:Dynamic):Dynamic;
	/**
		This function is the sanctioned way of converting objects
		to a string representation and properly handles nested sequences.
		
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
		max_seq_items : int or None, default None
		    Pass through to other pretty printers to limit sequence printing
		
		Returns
		-------
		str
	**/
	static public function pprint_thing(thing:Dynamic, ?_nest_lvl:Dynamic, ?escape_chars:Dynamic, ?default_escapes:Dynamic, ?quote_strings:Dynamic, ?max_seq_items:Dynamic):Dynamic;
	static public function pprint_thing_encoded(object:Dynamic, ?encoding:Dynamic, ?errors:Dynamic):Dynamic;
	/**
		Wrapper around numpy.result_type which overcomes the NPY_MAXARGS (32)
		argument limit.
	**/
	static public function result_type_many(?arrays_and_dtypes:python.VarArgs<Dynamic>):Dynamic;
}