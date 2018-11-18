/* This file is generated, do not edit! */
package pandas.core.ops;
@:pythonImport("pandas.core.ops") extern class Ops_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var _add_example_FRAME : Dynamic;
	static public var _agg_doc_PANEL : Dynamic;
	/**
		convert rhs to meet lhs dims if input is list, tuple or np.ndarray 
	**/
	static public function _align_method_FRAME(left:Dynamic, right:Dynamic, axis:Dynamic):Dynamic;
	/**
		align lhs and rhs Series 
	**/
	static public function _align_method_SERIES(left:Dynamic, right:Dynamic, ?align_asobject:Dynamic):Dynamic;
	static public var _arith_doc_FRAME : Dynamic;
	static public function _arith_method_FRAME(cls:Dynamic, op:Dynamic, special:Dynamic):Dynamic;
	static public function _arith_method_PANEL(cls:Dynamic, op:Dynamic, special:Dynamic):Dynamic;
	/**
		Wrapper function for Series arithmetic operations, to avoid
		code duplication.
	**/
	static public function _arith_method_SERIES(cls:Dynamic, op:Dynamic, special:Dynamic):Dynamic;
	/**
		Wrapper function for Series arithmetic operations, to avoid
		code duplication.
	**/
	static public function _arith_method_SPARSE_ARRAY(cls:Dynamic, op:Dynamic, special:Dynamic):Dynamic;
	/**
		Wrapper function for Series arithmetic operations, to avoid
		code duplication.
	**/
	static public function _arith_method_SPARSE_SERIES(cls:Dynamic, op:Dynamic, special:Dynamic):Dynamic;
	/**
		Wrapper function for Series arithmetic operations, to avoid
		code duplication.
	**/
	static public function _bool_method_SERIES(cls:Dynamic, op:Dynamic, special:Dynamic):Dynamic;
	/**
		For SparseSeries operation, coerce to float64 if the result is expected
		to have NaN or inf values
		
		Parameters
		----------
		left : SparseArray
		right : SparseArray
		opname : str
		
		Returns
		-------
		left : SparseArray
		right : SparseArray
	**/
	static public function _cast_sparse_series_op(left:Dynamic, right:Dynamic, opname:Dynamic):Dynamic;
	/**
		Apply binary operator `func` to self, other using alignment and fill
		conventions determined by the fill_value, axis, level, and try_cast kwargs.
		
		Parameters
		----------
		self : DataFrame
		other : Series
		func : binary operator
		fill_value : object, default None
		axis : {0, 1, 'columns', 'index', None}, default None
		level : int or None, default None
		try_cast : bool, default True
		
		Returns
		-------
		result : DataFrame
	**/
	static public function _combine_series_frame(self:Dynamic, other:Dynamic, func:Dynamic, ?fill_value:Dynamic, ?axis:Dynamic, ?level:Dynamic, ?try_cast:Dynamic):pandas.DataFrame;
	static public function _comp_method_FRAME(cls:Dynamic, func:Dynamic, special:Dynamic):Dynamic;
	static public function _comp_method_OBJECT_ARRAY(op:Dynamic, x:Dynamic, y:Dynamic):Dynamic;
	static public function _comp_method_PANEL(cls:Dynamic, op:Dynamic, special:Dynamic):Dynamic;
	/**
		Wrapper function for Series arithmetic operations, to avoid
		code duplication.
	**/
	static public function _comp_method_SERIES(cls:Dynamic, op:Dynamic, special:Dynamic):Dynamic;
	/**
		divmod returns a tuple of like indexed series instead of a single series.
		    
	**/
	static public function _construct_divmod_result(left:Dynamic, result:Dynamic, index:Dynamic, name:Dynamic, dtype:Dynamic):Dynamic;
	/**
		If the raw op result has a non-None name (e.g. it is an Index object) and
		the name argument is None, then passing name to the constructor will
		not be enough; we still need to override the name attribute.
	**/
	static public function _construct_result(left:Dynamic, result:Dynamic, index:Dynamic, name:Dynamic, dtype:Dynamic):Dynamic;
	static public function _create_methods(cls:Dynamic, arith_method:Dynamic, comp_method:Dynamic, bool_method:Dynamic, ?special:Dynamic):Dynamic;
	static public function _ensure_object(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function _flex_comp_method_FRAME(cls:Dynamic, op:Dynamic, special:Dynamic):Dynamic;
	static public var _flex_doc_FRAME : Dynamic;
	static public var _flex_doc_PANEL : Dynamic;
	static public var _flex_doc_SERIES : Dynamic;
	static public function _flex_method_PANEL(cls:Dynamic, op:Dynamic, special:Dynamic):Dynamic;
	static public function _flex_method_SERIES(cls:Dynamic, op:Dynamic, special:Dynamic):Dynamic;
	/**
		Find the keyword arguments to pass to numexpr for the given operation.
		
		Parameters
		----------
		name : str
		
		Returns
		-------
		eval_kwargs : dict
		
		Examples
		--------
		>>> _gen_eval_kwargs("__add__")
		{}
		
		>>> _gen_eval_kwargs("rtruediv")
		{"reversed": True, "truediv": True}
	**/
	static public function _gen_eval_kwargs(name:Dynamic):Dynamic;
	/**
		Find the appropriate fill value to use when filling in undefined values
		in the results of the given operation caused by operating on
		(generally dividing by) zero.
		
		Parameters
		----------
		name : str
		
		Returns
		-------
		fill_value : {None, np.nan, np.inf}
	**/
	static public function _gen_fill_zeros(name:Dynamic):Dynamic;
	/**
		Only DataFrame cares about default_axis, specifically:
		special methods have default_axis=None and flex methods
		have default_axis='columns'.
		
		Parameters
		----------
		name : str
		
		Returns
		-------
		default_axis: str or None
	**/
	static public function _get_frame_op_default_axis(name:Dynamic):Dynamic;
	/**
		Find the appropriate operation-wrappers to use when defining flex/special
		arithmetic, boolean, and comparison operations with the given class.
		
		Parameters
		----------
		cls : class
		
		Returns
		-------
		arith_flex : function or None
		comp_flex : function or None
		arith_special : function
		comp_special : function
		bool_special : function
		
		Notes
		-----
		None is only returned for SparseArray
	**/
	static public function _get_method_wrappers(cls:Dynamic):Dynamic;
	/**
		Find the name to attach to this method according to conventions
		for special and non-special methods.
		
		Parameters
		----------
		op : binary operator
		special : bool
		
		Returns
		-------
		op_name : str
	**/
	static public function _get_op_name(op:Dynamic, special:Dynamic):Dynamic;
	/**
		Find the operation string, if any, to pass to numexpr for this
		operation.
		
		Parameters
		----------
		op : binary operator
		cls : class
		
		Returns
		-------
		op_str : string or None
	**/
	static public function _get_opstr(op:Dynamic, cls:Dynamic):Dynamic;
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
	static public function _make_flex_doc(op_name:Dynamic, typ:Dynamic):String;
	/**
		Try to find a name to attach to the result of an operation between
		a and b.  If only one of these has a `name` attribute, return that
		name.  Otherwise return a consensus name if they match of None if
		they have different names.
		
		Parameters
		----------
		a : object
		b : object
		
		Returns
		-------
		name : str or None
		
		See also
		--------
		pandas.core.common._consensus_name_attr
	**/
	static public function _maybe_match_name(a:Dynamic, b:Dynamic):Dynamic;
	static public var _op_descriptions : Dynamic;
	static public var _op_names : Dynamic;
	static public function _sparse_series_op(left:Dynamic, right:Dynamic, op:Dynamic, name:Dynamic):Dynamic;
	static public var _sub_example_FRAME : Dynamic;
	/**
		Adds the full suite of flex arithmetic methods (``pow``, ``mul``, ``add``)
		to the class.
		
		Parameters
		----------
		cls : class
		    flex methods will be defined and pinned to this class
	**/
	static public function add_flex_arithmetic_methods(cls:Dynamic):Dynamic;
	static public function add_methods(cls:Dynamic, new_methods:Dynamic):Dynamic;
	/**
		Adds the full suite of special arithmetic methods (``__add__``,
		``__sub__``, etc.) to the class.
		
		Parameters
		----------
		cls : class
		    special methods will be defined and pinned to this class
	**/
	static public function add_special_arithmetic_methods(cls:Dynamic):Dynamic;
	/**
		Bind a method to class, python 2 and python 3 compatible.
		
		Parameters
		----------
		
		cls : type
		    class to receive bound method
		name : basestring
		    name of method on class instance
		func : function
		    function to be bound as method
		
		
		Returns
		-------
		None
	**/
	static public function bind_method(cls:Dynamic, name:Dynamic, func:Dynamic):Dynamic;
	/**
		Transform any list-like object in a 1-dimensional numpy array of object
		dtype.
		
		Parameters
		----------
		values : any iterable which has a len()
		
		Raises
		------
		TypeError
		    * If `values` does not have a len()
		
		Returns
		-------
		1-dimensional numpy array of dtype object
	**/
	static public function construct_1d_object_array_from_listlike(values:Dynamic):Dynamic;
	/**
		Wrap Series left in the given index_class to delegate the operation op
		to the index implementation.  DatetimeIndex and TimedeltaIndex perform
		type checking, timezone handling, overflow checks, etc.
		
		Parameters
		----------
		op : binary operator (operator.add, operator.sub, ...)
		left : Series
		right : object
		index_class : DatetimeIndex or TimedeltaIndex
		
		Returns
		-------
		result : object, usually DatetimeIndex, TimedeltaIndex, or Series
	**/
	static public function dispatch_to_index_op(op:Dynamic, left:Dynamic, right:Dynamic, index_class:Dynamic):Dynamic;
	static public var division : Dynamic;
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
		Makes copies if fill_value is not None
	**/
	static public function fill_binop(left:Dynamic, right:Dynamic, fill_value:Dynamic):Dynamic;
	/**
		Find a common data type among the given dtypes.
		
		Parameters
		----------
		types : list of dtypes
		
		Returns
		-------
		pandas extension or numpy dtype
		
		See Also
		--------
		numpy.find_common_type
	**/
	static public function find_common_type(types:Dynamic):Dynamic;
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
		Check whether the provided array or dtype is of a boolean dtype.
		
		Parameters
		----------
		arr_or_dtype : array-like
		    The array or dtype to check.
		
		Returns
		-------
		boolean : Whether or not the array or dtype is of a boolean dtype.
		
		Examples
		--------
		>>> is_bool_dtype(str)
		False
		>>> is_bool_dtype(int)
		False
		>>> is_bool_dtype(bool)
		True
		>>> is_bool_dtype(np.bool)
		True
		>>> is_bool_dtype(np.array(['a', 'b']))
		False
		>>> is_bool_dtype(pd.Series([1, 2]))
		False
		>>> is_bool_dtype(np.array([True, False]))
		True
	**/
	static public function is_bool_dtype(arr_or_dtype:Dynamic):Dynamic;
	/**
		Check whether an array-like or dtype is of the Categorical dtype.
		
		Parameters
		----------
		arr_or_dtype : array-like
		    The array-like or dtype to check.
		
		Returns
		-------
		boolean : Whether or not the array-like or dtype is
		          of the Categorical dtype.
		
		Examples
		--------
		>>> is_categorical_dtype(object)
		False
		>>> is_categorical_dtype(CategoricalDtype())
		True
		>>> is_categorical_dtype([1, 2, 3])
		False
		>>> is_categorical_dtype(pd.Categorical([1, 2, 3]))
		True
		>>> is_categorical_dtype(pd.CategoricalIndex([1, 2, 3]))
		True
	**/
	static public function is_categorical_dtype(arr_or_dtype:Dynamic):Dynamic;
	/**
		Check whether an array-like or dtype is of the datetime64 dtype.
		
		Parameters
		----------
		arr_or_dtype : array-like
		    The array-like or dtype to check.
		
		Returns
		-------
		boolean : Whether or not the array-like or dtype is of
		          the datetime64 dtype.
		
		Examples
		--------
		>>> is_datetime64_dtype(object)
		False
		>>> is_datetime64_dtype(np.datetime64)
		True
		>>> is_datetime64_dtype(np.array([], dtype=int))
		False
		>>> is_datetime64_dtype(np.array([], dtype=np.datetime64))
		True
		>>> is_datetime64_dtype([1, 2, 3])
		False
	**/
	static public function is_datetime64_dtype(arr_or_dtype:Dynamic):Dynamic;
	/**
		Check whether an array-like or dtype is of a DatetimeTZDtype dtype.
		
		Parameters
		----------
		arr_or_dtype : array-like
		    The array-like or dtype to check.
		
		Returns
		-------
		boolean : Whether or not the array-like or dtype is of
		          a DatetimeTZDtype dtype.
		
		Examples
		--------
		>>> is_datetime64tz_dtype(object)
		False
		>>> is_datetime64tz_dtype([1, 2, 3])
		False
		>>> is_datetime64tz_dtype(pd.DatetimeIndex([1, 2, 3]))  # tz-naive
		False
		>>> is_datetime64tz_dtype(pd.DatetimeIndex([1, 2, 3], tz="US/Eastern"))
		True
		
		>>> dtype = DatetimeTZDtype("ns", tz="US/Eastern")
		>>> s = pd.Series([], dtype=dtype)
		>>> is_datetime64tz_dtype(dtype)
		True
		>>> is_datetime64tz_dtype(s)
		True
	**/
	static public function is_datetime64tz_dtype(arr_or_dtype:Dynamic):Dynamic;
	/**
		Check if we are comparing a datetime-like object to a numeric object.
		
		By "numeric," we mean an object that is either of an int or float dtype.
		
		Parameters
		----------
		a : array-like, scalar
		    The first object to check.
		b : array-like, scalar
		    The second object to check.
		
		Returns
		-------
		boolean : Whether we return a comparing a datetime-like
		          to a numeric object.
		
		Examples
		--------
		>>> dt = np.datetime64(pd.datetime(2017, 1, 1))
		>>>
		>>> is_datetimelike_v_numeric(1, 1)
		False
		>>> is_datetimelike_v_numeric(dt, dt)
		False
		>>> is_datetimelike_v_numeric(1, dt)
		True
		>>> is_datetimelike_v_numeric(dt, 1)  # symmetric check
		True
		>>> is_datetimelike_v_numeric(np.array([dt]), 1)
		True
		>>> is_datetimelike_v_numeric(np.array([1]), dt)
		True
		>>> is_datetimelike_v_numeric(np.array([dt]), np.array([1]))
		True
		>>> is_datetimelike_v_numeric(np.array([1]), np.array([2]))
		False
		>>> is_datetimelike_v_numeric(np.array([dt]), np.array([dt]))
		False
	**/
	static public function is_datetimelike_v_numeric(a:Dynamic, b:Dynamic):Dynamic;
	/**
		Check whether the provided array or dtype is of an integer dtype.
		
		Unlike in `in_any_int_dtype`, timedelta64 instances will return False.
		
		Parameters
		----------
		arr_or_dtype : array-like
		    The array or dtype to check.
		
		Returns
		-------
		boolean : Whether or not the array or dtype is of an integer dtype
		          and not an instance of timedelta64.
		
		Examples
		--------
		>>> is_integer_dtype(str)
		False
		>>> is_integer_dtype(int)
		True
		>>> is_integer_dtype(float)
		False
		>>> is_integer_dtype(np.uint64)
		True
		>>> is_integer_dtype(np.datetime64)
		False
		>>> is_integer_dtype(np.timedelta64)
		False
		>>> is_integer_dtype(np.array(['a', 'b']))
		False
		>>> is_integer_dtype(pd.Series([1, 2]))
		True
		>>> is_integer_dtype(np.array([], dtype=np.timedelta64))
		False
		>>> is_integer_dtype(pd.Index([1, 2.]))  # float
		False
	**/
	static public function is_integer_dtype(arr_or_dtype:Dynamic):Dynamic;
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
		Check whether an array-like or dtype is of the object dtype.
		
		Parameters
		----------
		arr_or_dtype : array-like
		    The array-like or dtype to check.
		
		Returns
		-------
		boolean : Whether or not the array-like or dtype is of the object dtype.
		
		Examples
		--------
		>>> is_object_dtype(object)
		True
		>>> is_object_dtype(int)
		False
		>>> is_object_dtype(np.array([], dtype=object))
		True
		>>> is_object_dtype(np.array([], dtype=int))
		False
		>>> is_object_dtype([1, 2, 3])
		False
	**/
	static public function is_object_dtype(arr_or_dtype:Dynamic):Dynamic;
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
	/**
		Detect missing values for an array-like object.
		
		This function takes a scalar or array-like object and indictates
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
		notna : boolean inverse of pandas.isna.
		Series.isna : Detetct missing values in a Series.
		DataFrame.isna : Detect missing values in a DataFrame.
		Index.isna : Detect missing values in an Index.
		
		Examples
		--------
		Scalar arguments (including strings) result in a scalar boolean.
		
		>>> pd.isna('dog')
		False
		
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
	static public var key : Dynamic;
	/**
		Return a binary method that always raises a TypeError.
		
		Parameters
		----------
		name : str
		
		Returns
		-------
		invalid_op : function
	**/
	static public function make_invalid_op(name:Dynamic):Dynamic;
	/**
		Apply the function `op` to only non-null points in x and y.
		
		Parameters
		----------
		x : array-like
		y : array-like
		op : binary operation
		allowed_types : class or tuple of classes
		
		Returns
		-------
		result : ndarray[bool]
	**/
	static public function mask_cmp_op(x:Dynamic, y:Dynamic, op:Dynamic, allowed_types:Dynamic):Dynamic;
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
	static public function maybe_upcast_putmask(result:Dynamic, mask:Dynamic, other:Dynamic):Dynamic;
	/**
		Check whether the array or dtype should be converted to int64.
		
		An array-like or dtype "needs" such a conversion if the array-like
		or dtype is of a datetime-like dtype
		
		Parameters
		----------
		arr_or_dtype : array-like
		    The array or dtype to check.
		
		Returns
		-------
		boolean : Whether or not the array or dtype should be converted to int64.
		
		Examples
		--------
		>>> needs_i8_conversion(str)
		False
		>>> needs_i8_conversion(np.int64)
		False
		>>> needs_i8_conversion(np.datetime64)
		True
		>>> needs_i8_conversion(np.array(['a', 'b']))
		False
		>>> needs_i8_conversion(pd.Series([1, 2]))
		False
		>>> needs_i8_conversion(pd.Series([], dtype="timedelta64[ns]"))
		True
		>>> needs_i8_conversion(pd.DatetimeIndex([1, 2, 3], tz="US/Eastern"))
		True
	**/
	static public function needs_i8_conversion(arr_or_dtype:Dynamic):Dynamic;
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
	static public function radd(left:Dynamic, right:Dynamic):Dynamic;
	static public function rand_(left:Dynamic, right:Dynamic):Dynamic;
	static public function rdiv(left:Dynamic, right:Dynamic):Dynamic;
	static public function rdivmod(left:Dynamic, right:Dynamic):Dynamic;
	static public var reverse_op : Dynamic;
	static public function rfloordiv(left:Dynamic, right:Dynamic):Dynamic;
	static public function rmod(left:Dynamic, right:Dynamic):Dynamic;
	static public function rmul(left:Dynamic, right:Dynamic):Dynamic;
	static public function ror_(left:Dynamic, right:Dynamic):Dynamic;
	static public function rpow(left:Dynamic, right:Dynamic):Dynamic;
	static public function rsub(left:Dynamic, right:Dynamic):Dynamic;
	static public function rtruediv(left:Dynamic, right:Dynamic):Dynamic;
	static public function rxor(left:Dynamic, right:Dynamic):Dynamic;
}