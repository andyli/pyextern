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
	/**
		convert rhs to meet lhs dims if input is list, tuple or np.ndarray 
	**/
	static public function _align_method_FRAME(left:Dynamic, right:Dynamic, axis:Dynamic):Dynamic;
	/**
		align lhs and rhs Series 
	**/
	static public function _align_method_SERIES(left:Dynamic, right:Dynamic, ?align_asobject:Dynamic):Dynamic;
	static public var _arith_doc_FRAME : Dynamic;
	static public function _arith_method_FRAME(op:Dynamic, name:Dynamic, ?str_rep:Dynamic, ?default_axis:Dynamic, ?fill_zeros:Dynamic, ?eval_kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function _arith_method_PANEL(op:Dynamic, name:Dynamic, ?str_rep:Dynamic, ?fill_zeros:Dynamic, ?default_axis:Dynamic, ?eval_kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Wrapper function for Series arithmetic operations, to avoid
		code duplication.
	**/
	static public function _arith_method_SERIES(op:Dynamic, name:Dynamic, str_rep:Dynamic, ?fill_zeros:Dynamic, ?default_axis:Dynamic, ?construct_result:Dynamic, ?eval_kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Wrapper function for Series arithmetic operations, to avoid
		code duplication.
	**/
	static public function _bool_method_SERIES(op:Dynamic, name:Dynamic, str_rep:Dynamic):Dynamic;
	static public function _comp_method_FRAME(func:Dynamic, name:Dynamic, str_rep:Dynamic, ?masker:Dynamic):Dynamic;
	static public function _comp_method_OBJECT_ARRAY(op:Dynamic, x:Dynamic, y:Dynamic):Dynamic;
	static public function _comp_method_PANEL(op:Dynamic, name:Dynamic, ?str_rep:Dynamic, ?masker:Dynamic):Dynamic;
	/**
		Wrapper function for Series arithmetic operations, to avoid
		code duplication.
	**/
	static public function _comp_method_SERIES(op:Dynamic, name:Dynamic, str_rep:Dynamic, ?masker:Dynamic):Dynamic;
	/**
		divmod returns a tuple of like indexed series instead of a single series.
		    
	**/
	static public function _construct_divmod_result(left:Dynamic, result:Dynamic, index:Dynamic, name:Dynamic, dtype:Dynamic):Dynamic;
	static public function _construct_result(left:Dynamic, result:Dynamic, index:Dynamic, name:Dynamic, dtype:Dynamic):Dynamic;
	static public function _create_methods(arith_method:Dynamic, comp_method:Dynamic, bool_method:Dynamic, use_numexpr:Dynamic, ?special:Dynamic, ?default_axis:Dynamic, ?have_divmod:Dynamic):Dynamic;
	static public function _ensure_object(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function _flex_comp_method_FRAME(op:Dynamic, name:Dynamic, ?str_rep:Dynamic, ?default_axis:Dynamic, ?masker:Dynamic):Dynamic;
	static public var _flex_doc_FRAME : Dynamic;
	static public var _flex_doc_SERIES : Dynamic;
	static public function _flex_method_SERIES(op:Dynamic, name:Dynamic, str_rep:Dynamic, ?default_axis:Dynamic, ?fill_zeros:Dynamic, ?eval_kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function _maybe_match_name(a:Dynamic, b:Dynamic):Dynamic;
	static public var _op_descriptions : Dynamic;
	static public var _op_names : Dynamic;
	/**
		return my values or the object if we are say an ndarray 
	**/
	static public function _values_from_object(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Adds the full suite of flex arithmetic methods (``pow``, ``mul``, ``add``)
		to the class.
		
		Parameters
		----------
		flex_arith_method : function
		    factory for special arithmetic methods, with op string:
		    f(op, name, str_rep, default_axis=None, fill_zeros=None, **eval_kwargs)
		flex_comp_method : function, optional,
		    factory for rich comparison - signature: f(op, name, str_rep)
		use_numexpr : bool, default True
		    whether to accelerate with numexpr, defaults to True
		force : bool, default False
		    if False, checks whether function is defined **on ``cls.__dict__``**
		    before defining if True, always defines functions on class base
		select : iterable of strings (optional)
		    if passed, only sets functions with names in select
		exclude : iterable of strings (optional)
		    if passed, will not set functions with names in exclude
	**/
	static public function add_flex_arithmetic_methods(cls:Dynamic, flex_arith_method:Dynamic, ?flex_comp_method:Dynamic, ?flex_bool_method:Dynamic, ?use_numexpr:Dynamic, ?force:Dynamic, ?select:Dynamic, ?exclude:Dynamic):Dynamic;
	static public function add_methods(cls:Dynamic, new_methods:Dynamic, force:Dynamic, select:Dynamic, exclude:Dynamic):Dynamic;
	/**
		Adds the full suite of special arithmetic methods (``__add__``,
		``__sub__``, etc.) to the class.
		
		Parameters
		----------
		arith_method : function (optional)
		    factory for special arithmetic methods, with op string:
		    f(op, name, str_rep, default_axis=None, fill_zeros=None, **eval_kwargs)
		comp_method : function, optional,
		    factory for rich comparison - signature: f(op, name, str_rep)
		use_numexpr : bool, default True
		    whether to accelerate with numexpr, defaults to True
		force : bool, default False
		    if False, checks whether function is defined **on ``cls.__dict__``**
		    before defining if True, always defines functions on class base
		select : iterable of strings (optional)
		    if passed, only sets functions with names in select
		exclude : iterable of strings (optional)
		    if passed, will not set functions with names in exclude
		have_divmod : bool, (optional)
		    should a divmod method be added? this method is special because it
		    returns a tuple of cls instead of a single element of type cls
	**/
	static public function add_special_arithmetic_methods(cls:Dynamic, ?arith_method:Dynamic, ?comp_method:Dynamic, ?bool_method:Dynamic, ?use_numexpr:Dynamic, ?force:Dynamic, ?select:Dynamic, ?exclude:Dynamic, ?have_divmod:Dynamic):Dynamic;
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
	static public var division : Dynamic;
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
	static public var frame_flex_funcs : Dynamic;
	static public var frame_special_funcs : Dynamic;
	static public var iNaT : Dynamic;
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
		Check whether an array-like is a datetime array-like with a timezone
		component in its dtype.
		
		Parameters
		----------
		arr : array-like
		    The array-like to check.
		
		Returns
		-------
		boolean : Whether or not the array-like is a datetime array-like with
		          a timezone component in its dtype.
		
		Examples
		--------
		>>> is_datetimetz([1, 2, 3])
		False
		
		Although the following examples are both DatetimeIndex objects,
		the first one returns False because it has no timezone component
		unlike the second one, which returns True.
		
		>>> is_datetimetz(pd.DatetimeIndex([1, 2, 3]))
		False
		>>> is_datetimetz(pd.DatetimeIndex([1, 2, 3], tz="US/Eastern"))
		True
		
		The object need not be a DatetimeIndex object. It just needs to have
		a dtype which has a timezone component.
		
		>>> dtype = DatetimeTZDtype("ns", tz="US/Eastern")
		>>> s = pd.Series([], dtype=dtype)
		>>> is_datetimetz(s)
		True
	**/
	static public function is_datetimetz(arr:Dynamic):Dynamic;
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
	**/
	static public function is_timedelta64_dtype(arr_or_dtype:Dynamic):Dynamic;
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
	static public var k : Dynamic;
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
	static public var panel_special_funcs : Dynamic;
	static public var reverse_op : Dynamic;
	static public var series_flex_funcs : Dynamic;
	static public var series_special_funcs : Dynamic;
}