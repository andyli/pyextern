/* This file is generated, do not edit! */
package pandas.core.ops;
@:pythonImport("pandas.core.ops") extern class Ops_Module {
	static public var ARITHMETIC_BINOPS : Dynamic;
	static public var COMPARISON_BINOPS : Dynamic;
	static public function Level(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var TYPE_CHECKING : Dynamic;
	static public var __annotations__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __path__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var _flex_comp_doc_FRAME : Dynamic;
	/**
		If the Series operand is not EA-dtype, we can broadcast to 2D and operate
		blockwise.
	**/
	static public function _maybe_align_series_as_frame(frame:Dynamic, series:Dynamic, axis:Dynamic):Dynamic;
	static public var _op_descriptions : Dynamic;
	/**
		Adds the full suite of flex arithmetic methods (``pow``, ``mul``, ``add``)
		to the class.
		
		Parameters
		----------
		cls : class
		    flex methods will be defined and pinned to this class
	**/
	static public function add_flex_arithmetic_methods(cls:Dynamic):Dynamic;
	/**
		Convert rhs to meet lhs dims if input is list, tuple or np.ndarray.
		
		Parameters
		----------
		left : DataFrame
		right : Any
		axis : int, str, or None
		flex : bool or None, default False
		    Whether this is a flex op, in which case we reindex.
		    None indicates not to check for alignment.
		level : int or level name, default None
		
		Returns
		-------
		left : DataFrame
		right : Any
	**/
	static public function align_method_FRAME(left:Dynamic, right:Dynamic, axis:Dynamic, ?flex:Dynamic, ?level:Dynamic):Dynamic;
	/**
		align lhs and rhs Series
	**/
	static public function align_method_SERIES(left:Dynamic, right:Dynamic, ?align_asobject:Dynamic):Dynamic;
	static public var annotations : Dynamic;
	/**
		Evaluate an arithmetic operation `+`, `-`, `*`, `/`, `//`, `%`, `**`, ...
		
		Note: the caller is responsible for ensuring that numpy warnings are
		suppressed (with np.errstate(all="ignore")) if needed.
		
		Parameters
		----------
		left : np.ndarray or ExtensionArray
		right : object
		    Cannot be a DataFrame or Index.  Series is *not* excluded.
		op : {operator.add, operator.sub, ...}
		    Or one of the reversed variants from roperator.
		
		Returns
		-------
		ndarray or ExtensionArray
		    Or a 2-tuple of these in the case of divmod or rdivmod.
	**/
	static public function arithmetic_op(left:Dynamic, right:Dynamic, op:Dynamic):Dynamic;
	static public function comp_method_OBJECT_ARRAY(op:Dynamic, x:Dynamic, y:Dynamic):Dynamic;
	/**
		Evaluate a comparison operation `=`, `!=`, `>=`, `>`, `<=`, or `<`.
		
		Note: the caller is responsible for ensuring that numpy warnings are
		suppressed (with np.errstate(all="ignore")) if needed.
		
		Parameters
		----------
		left : np.ndarray or ExtensionArray
		right : object
		    Cannot be a DataFrame, Series, or Index.
		op : {operator.eq, operator.ne, operator.gt, operator.ge, operator.lt, operator.le}
		
		Returns
		-------
		ndarray or ExtensionArray
	**/
	static public function comparison_op(left:Dynamic, right:Dynamic, op:Dynamic):Dynamic;
	/**
		If a non-None fill_value is given, replace null entries in left and right
		with this value, but only in positions where _one_ of left/right is null,
		not both.
		
		Parameters
		----------
		left : array-like
		right : array-like
		fill_value : object
		
		Returns
		-------
		left : array-like
		right : array-like
		
		Notes
		-----
		Makes copies if fill_value is not None and NAs are present.
	**/
	static public function fill_binop(left:Dynamic, right:Dynamic, fill_value:Dynamic):Dynamic;
	/**
		Find the first place in the stack that is not inside pandas
		(tests notwithstanding).
	**/
	static public function find_stack_level():Dynamic;
	static public function flex_arith_method_FRAME(op:Dynamic):Dynamic;
	static public function flex_comp_method_FRAME(op:Dynamic):Dynamic;
	static public function flex_method_SERIES(op:Dynamic):Dynamic;
	/**
		For DataFrame-with-DataFrame operations that require reindexing,
		operate only on shared columns, then reindex.
		
		Parameters
		----------
		left : DataFrame
		right : DataFrame
		op : binary operator
		
		Returns
		-------
		DataFrame
	**/
	static public function frame_arith_method_with_reindex(left:Dynamic, right:Dynamic, op:Dynamic):Dynamic;
	/**
		Return a binary array operation corresponding to the given operator op.
		
		Parameters
		----------
		op : function
		    Binary operator from operator or roperator module.
		
		Returns
		-------
		functools.partial
	**/
	static public function get_array_op(op:Dynamic):Dynamic;
	/**
		Find the appropriate name to pin to an operation result.  This result
		should always be either an Index or a Series.
		
		Parameters
		----------
		left : {Series, Index}
		right : object
		
		Returns
		-------
		name : object
		    Usually a string
	**/
	static public function get_op_result_name(left:Dynamic, right:Dynamic):Dynamic;
	/**
		If a comparison has mismatched types and is not necessarily meaningful,
		follow python3 conventions by:
		
		    - returning all-False for equality
		    - returning all-True for inequality
		    - raising TypeError otherwise
		
		Parameters
		----------
		left : array-like
		right : scalar, array-like
		op : operator.{eq, ne, lt, le, gt}
		
		Raises
		------
		TypeError : on inequality comparisons
	**/
	static public function invalid_comparison(left:Dynamic, right:Dynamic, op:Dynamic):Dynamic;
	/**
		Check if the object is array-like.
		
		For an object to be considered array-like, it must be list-like and
		have a `dtype` attribute.
		
		Parameters
		----------
		obj : The object to check
		
		Returns
		-------
		is_array_like : bool
		    Whether `obj` has array-like properties.
		
		Examples
		--------
		>>> is_array_like(np.array([1, 2, 3]))
		True
		>>> is_array_like(pd.Series(["a", "b"]))
		True
		>>> is_array_like(pd.Index(["2016-01-01"]))
		True
		>>> is_array_like([1, 2, 3])
		False
		>>> is_array_like(("a", "b"))
		False
	**/
	static public function is_array_like(obj:Dynamic):Bool;
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
		Detect missing values for an array-like object.
		
		This function takes a scalar or array-like object and indicates
		whether values are missing (``NaN`` in numeric arrays, ``None`` or ``NaN``
		in object arrays, ``NaT`` in datetimelike).
		
		Parameters
		----------
		obj : scalar or array-like
		    Object to check for null or missing values.
		
		Returns
		-------
		bool or array-like of bool
		    For scalar input, returns a scalar boolean.
		    For array input, returns an array of boolean indicating whether each
		    corresponding element is missing.
		
		See Also
		--------
		notna : Boolean inverse of pandas.isna.
		Series.isna : Detect missing values in a Series.
		DataFrame.isna : Detect missing values in a DataFrame.
		Index.isna : Detect missing values in an Index.
		
		Examples
		--------
		Scalar arguments (including strings) result in a scalar boolean.
		
		>>> pd.isna('dog')
		False
		
		>>> pd.isna(pd.NA)
		True
		
		>>> pd.isna(np.nan)
		True
		
		ndarrays result in an ndarray of booleans.
		
		>>> array = np.array([[1, np.nan, 3], [4, 5, np.nan]])
		>>> array
		array([[ 1., nan,  3.],
		       [ 4.,  5., nan]])
		>>> pd.isna(array)
		array([[False,  True, False],
		       [False, False,  True]])
		
		For indexes, an ndarray of booleans is returned.
		
		>>> index = pd.DatetimeIndex(["2017-07-05", "2017-07-06", None,
		...                           "2017-07-08"])
		>>> index
		DatetimeIndex(['2017-07-05', '2017-07-06', 'NaT', '2017-07-08'],
		              dtype='datetime64[ns]', freq=None)
		>>> pd.isna(index)
		array([False, False,  True, False])
		
		For Series and DataFrame, the same type is returned, containing booleans.
		
		>>> df = pd.DataFrame([['ant', 'bee', 'cat'], ['dog', None, 'fly']])
		>>> df
		     0     1    2
		0  ant   bee  cat
		1  dog  None  fly
		>>> pd.isna(df)
		       0      1      2
		0  False  False  False
		1  False   True  False
		
		>>> pd.isna(df[1])
		0    False
		1     True
		Name: 1, dtype: bool
	**/
	static public function isna(obj:Dynamic):Dynamic;
	/**
		Boolean ``and`` using Kleene logic.
		
		Values are ``NA`` for ``NA & NA`` or ``True & NA``.
		
		Parameters
		----------
		left, right : ndarray, NA, or bool
		    The values of the array.
		left_mask, right_mask : ndarray, optional
		    The masks. Only one of these may be None, which implies that
		    the associated `left` or `right` value is a scalar.
		
		Returns
		-------
		result, mask: ndarray[bool]
		    The result of the logical xor, and the new mask.
	**/
	static public function kleene_and(left:Dynamic, right:Dynamic, left_mask:Dynamic, right_mask:Dynamic):Dynamic;
	/**
		Boolean ``or`` using Kleene logic.
		
		Values are NA where we have ``NA | NA`` or ``NA | False``.
		``NA | True`` is considered True.
		
		Parameters
		----------
		left, right : ndarray, NA, or bool
		    The values of the array.
		left_mask, right_mask : ndarray, optional
		    The masks. Only one of these may be None, which implies that
		    the associated `left` or `right` value is a scalar.
		
		Returns
		-------
		result, mask: ndarray[bool]
		    The result of the logical or, and the new mask.
	**/
	static public function kleene_or(left:Dynamic, right:Dynamic, left_mask:Dynamic, right_mask:Dynamic):Dynamic;
	/**
		Boolean ``xor`` using Kleene logic.
		
		This is the same as ``or``, with the following adjustments
		
		* True, True -> False
		* True, NA   -> NA
		
		Parameters
		----------
		left, right : ndarray, NA, or bool
		    The values of the array.
		left_mask, right_mask : ndarray, optional
		    The masks. Only one of these may be None, which implies that
		    the associated `left` or `right` value is a scalar.
		
		Returns
		-------
		result, mask: ndarray[bool]
		    The result of the logical xor, and the new mask.
	**/
	static public function kleene_xor(left:Dynamic, right:Dynamic, left_mask:Dynamic, right_mask:Dynamic):Dynamic;
	/**
		Evaluate a logical operation `|`, `&`, or `^`.
		
		Parameters
		----------
		left : np.ndarray or ExtensionArray
		right : object
		    Cannot be a DataFrame, Series, or Index.
		op : {operator.and_, operator.or_, operator.xor}
		    Or one of the reversed variants from roperator.
		
		Returns
		-------
		ndarray or ExtensionArray
	**/
	static public function logical_op(left:Dynamic, right:Dynamic, op:Dynamic):Dynamic;
	/**
		Make the appropriate substitutions for the given operation and class-typ
		into either _flex_doc_SERIES or _flex_doc_FRAME to return the docstring
		to attach to a generated method.
		
		Parameters
		----------
		op_name : str {'__add__', '__sub__', ... '__eq__', '__ne__', ...}
		typ : str {series, 'dataframe']}
		
		Returns
		-------
		doc : str
	**/
	static public function make_flex_doc(op_name:Dynamic, typ:Dynamic):String;
	/**
		Dispatch a ufunc to the equivalent dunder method.
		
		Parameters
		----------
		self : ArrayLike
		    The array whose dunder method we dispatch to
		ufunc : Callable
		    A NumPy ufunc
		method : {'reduce', 'accumulate', 'reduceat', 'outer', 'at', '__call__'}
		inputs : ArrayLike
		    The input arrays.
		kwargs : Any
		    The additional keyword arguments, e.g. ``out``.
		
		Returns
		-------
		result : Any
		    The result of applying the ufunc
	**/
	static public function maybe_dispatch_ufunc_to_dunder_op(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Cast non-pandas objects to pandas types to unify behavior of arithmetic
		and comparison operations.
		
		Parameters
		----------
		obj: object
		shape : tuple[int]
		
		Returns
		-------
		out : object
		
		Notes
		-----
		Be careful to call this *after* determining the `name` attribute to be
		attached to the result of the arithmetic operation.
	**/
	static public function maybe_prepare_scalar_for_op(obj:Dynamic, shape:Dynamic):Dynamic;
	static public function radd(left:Dynamic, right:Dynamic):Dynamic;
	static public function rand_(left:Dynamic, right:Dynamic):Dynamic;
	static public function rdiv(left:Dynamic, right:Dynamic):Dynamic;
	static public function rdivmod(left:Dynamic, right:Dynamic):Dynamic;
	static public function rfloordiv(left:Dynamic, right:Dynamic):Dynamic;
	static public function rmod(left:Dynamic, right:Dynamic):Dynamic;
	static public function rmul(left:Dynamic, right:Dynamic):Dynamic;
	static public function ror_(left:Dynamic, right:Dynamic):Dynamic;
	static public function rpow(left:Dynamic, right:Dynamic):Dynamic;
	static public function rsub(left:Dynamic, right:Dynamic):Dynamic;
	static public function rtruediv(left:Dynamic, right:Dynamic):Dynamic;
	static public function rxor(left:Dynamic, right:Dynamic):Dynamic;
	/**
		Check if this is an operation between DataFrames that will need to reindex.
	**/
	static public function should_reindex_frame_op(left:Dynamic, right:Dynamic, op:Dynamic, axis:Dynamic, default_axis:Dynamic, fill_value:Dynamic, level:Dynamic):Dynamic;
	/**
		Boilerplate for pandas conventions in arithmetic and comparison methods.
		
		Parameters
		----------
		name : str
		
		Returns
		-------
		decorator
	**/
	static public function unpack_zerodim_and_defer(name:Dynamic):Dynamic;
}