/* This file is generated, do not edit! */
package pandas.core;
@:pythonImport("pandas.core.ops") extern class Ops {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var _arith_doc_FRAME : Dynamic;
	static public function _arith_method_FRAME(op:Dynamic, name:Dynamic, ?str_rep:Dynamic, ?default_axis:Dynamic, ?fill_zeros:Dynamic, eval_kwargs:Dynamic):Dynamic;
	static public function _arith_method_PANEL(op:Dynamic, name:Dynamic, ?str_rep:Dynamic, ?fill_zeros:Dynamic, ?default_axis:Dynamic, eval_kwargs:Dynamic):Dynamic;
	/**
		Wrapper function for Series arithmetic operations, to avoid
		code duplication.
	**/
	static public function _arith_method_SERIES(op:Dynamic, name:Dynamic, str_rep:Dynamic, ?fill_zeros:Dynamic, ?default_axis:Dynamic, eval_kwargs:Dynamic):Dynamic;
	/**
		Wrapper function for Series arithmetic operations, to avoid
		code duplication.
	**/
	static public function _bool_method_SERIES(op:Dynamic, name:Dynamic, str_rep:Dynamic):Dynamic;
	static public function _comp_method_FRAME(func:Dynamic, name:Dynamic, str_rep:Dynamic, ?masker:Dynamic):Dynamic;
	static public function _comp_method_PANEL(op:Dynamic, name:Dynamic, ?str_rep:Dynamic, ?masker:Dynamic):Dynamic;
	/**
		Wrapper function for Series arithmetic operations, to avoid
		code duplication.
	**/
	static public function _comp_method_SERIES(op:Dynamic, name:Dynamic, str_rep:Dynamic, ?masker:Dynamic):Dynamic;
	static public function _create_methods(arith_method:Dynamic, radd_func:Dynamic, comp_method:Dynamic, bool_method:Dynamic, use_numexpr:Dynamic, ?special:Dynamic, ?default_axis:Dynamic):Dynamic;
	static public function _flex_comp_method_FRAME(op:Dynamic, name:Dynamic, ?str_rep:Dynamic, ?default_axis:Dynamic, ?masker:Dynamic):Dynamic;
	static public function _flex_method_SERIES(op:Dynamic, name:Dynamic, str_rep:Dynamic, ?default_axis:Dynamic, ?fill_zeros:Dynamic, eval_kwargs:Dynamic):Dynamic;
	static public function _maybe_match_name(a:Dynamic, b:Dynamic):Dynamic;
	static public var _op_descriptions : Dynamic;
	static public var _op_names : Dynamic;
	static public function _radd_compat(left:Dynamic, right:Dynamic):Dynamic;
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
		radd_func :  function (optional)
		    Possible replacement for ``lambda x, y: operator.add(y, x)`` for
		    compatibility
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
	static public function add_flex_arithmetic_methods(cls:Dynamic, flex_arith_method:Dynamic, ?radd_func:Dynamic, ?flex_comp_method:Dynamic, ?flex_bool_method:Dynamic, ?use_numexpr:Dynamic, ?force:Dynamic, ?select:Dynamic, ?exclude:Dynamic):Dynamic;
	static public function add_methods(cls:Dynamic, new_methods:Dynamic, force:Dynamic, select:Dynamic, exclude:Dynamic):Dynamic;
	/**
		Adds the full suite of special arithmetic methods (``__add__``,
		``__sub__``, etc.) to the class.
		
		Parameters
		----------
		arith_method : function (optional)
		    factory for special arithmetic methods, with op string:
		    f(op, name, str_rep, default_axis=None, fill_zeros=None, **eval_kwargs)
		radd_func :  function (optional)
		    Possible replacement for ``operator.add`` for compatibility
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
	**/
	static public function add_special_arithmetic_methods(cls:Dynamic, ?arith_method:Dynamic, ?radd_func:Dynamic, ?comp_method:Dynamic, ?bool_method:Dynamic, ?use_numexpr:Dynamic, ?force:Dynamic, ?select:Dynamic, ?exclude:Dynamic):Dynamic;
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
	static public var frame_flex_funcs : Dynamic;
	static public var frame_special_funcs : Dynamic;
	static public var iNaT : Dynamic;
	static public function is_bool_dtype(arr_or_dtype:Dynamic):Dynamic;
	static public function is_categorical_dtype(arr_or_dtype:Dynamic):Dynamic;
	static public function is_datetime64_dtype(arr_or_dtype:Dynamic):Dynamic;
	static public function is_datetime64tz_dtype(arr_or_dtype:Dynamic):Dynamic;
	static public function is_datetimelike_v_numeric(a:Dynamic, b:Dynamic):Dynamic;
	static public function is_integer_dtype(arr_or_dtype:Dynamic):Dynamic;
	static public function is_list_like(arg:Dynamic):Dynamic;
	static public function is_object_dtype(arr_or_dtype:Dynamic):Dynamic;
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
	static public function isscalar(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var k : Dynamic;
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