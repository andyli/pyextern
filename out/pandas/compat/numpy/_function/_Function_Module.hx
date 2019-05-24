/* This file is generated, do not edit! */
package pandas.compat.numpy._function;
@:pythonImport("pandas.compat.numpy.function") extern class _Function_Module {
	static public var ALLANY_DEFAULTS : Dynamic;
	static public var ARGMINMAX_DEFAULTS : Dynamic;
	static public var ARGSORT_DEFAULTS : Dynamic;
	static public var ARGSORT_DEFAULTS_KIND : Dynamic;
	static public var CLIP_DEFAULTS : Dynamic;
	static public var COMPRESS_DEFAULTS : Dynamic;
	static public var CUM_FUNC_DEFAULTS : Dynamic;
	static public var LOGICAL_FUNC_DEFAULTS : Dynamic;
	static public var MEDIAN_DEFAULTS : Dynamic;
	static public var MINMAX_DEFAULTS : Dynamic;
	static public var PROD_DEFAULTS : Dynamic;
	static public var REPEAT_DEFAULTS : Dynamic;
	static public var RESAMPLER_NUMPY_OPS : Dynamic;
	static public var RESHAPE_DEFAULTS : Dynamic;
	static public var ROUND_DEFAULTS : Dynamic;
	static public var SORT_DEFAULTS : Dynamic;
	static public var STAT_DDOF_FUNC_DEFAULTS : Dynamic;
	static public var STAT_FUNC_DEFAULTS : Dynamic;
	static public var SUM_DEFAULTS : Dynamic;
	static public var TAKE_DEFAULTS : Dynamic;
	static public var TRANSPOSE_DEFAULTS : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function is_bool(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function is_integer(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function process_skipna(skipna:Dynamic, args:Dynamic):Dynamic;
	static public function validate_all(args:Dynamic, kwargs:Dynamic, ?fname:Dynamic, ?max_fname_arg_count:Dynamic, ?method:Dynamic):Dynamic;
	static public function validate_any(args:Dynamic, kwargs:Dynamic, ?fname:Dynamic, ?max_fname_arg_count:Dynamic, ?method:Dynamic):Dynamic;
	static public function validate_argmax(args:Dynamic, kwargs:Dynamic, ?fname:Dynamic, ?max_fname_arg_count:Dynamic, ?method:Dynamic):Dynamic;
	/**
		If 'Series.argmax' is called via the 'numpy' library,
		the third parameter in its signature is 'out', which
		takes either an ndarray or 'None', so check if the
		'skipna' parameter is either an instance of ndarray or
		is None, since 'skipna' itself should be a boolean
	**/
	static public function validate_argmax_with_skipna(skipna:Dynamic, args:Dynamic, kwargs:Dynamic):Dynamic;
	static public function validate_argmin(args:Dynamic, kwargs:Dynamic, ?fname:Dynamic, ?max_fname_arg_count:Dynamic, ?method:Dynamic):Dynamic;
	/**
		If 'Series.argmin' is called via the 'numpy' library,
		the third parameter in its signature is 'out', which
		takes either an ndarray or 'None', so check if the
		'skipna' parameter is either an instance of ndarray or
		is None, since 'skipna' itself should be a boolean
	**/
	static public function validate_argmin_with_skipna(skipna:Dynamic, args:Dynamic, kwargs:Dynamic):Dynamic;
	/**
		Checks whether the length of the `*args` argument passed into a function
		has at most `len(compat_args)` arguments and whether or not all of these
		elements in `args` are set to their default values.
		
		fname: str
		    The name of the function being passed the `*args` parameter
		
		args: tuple
		    The `*args` parameter passed into a function
		
		max_fname_arg_count: int
		    The maximum number of arguments that the function `fname`
		    can accept, excluding those in `args`. Used for displaying
		    appropriate error messages. Must be non-negative.
		
		compat_args: OrderedDict
		    A ordered dictionary of keys and their associated default values.
		    In order to accommodate buggy behaviour in some versions of `numpy`,
		    where a signature displayed keyword arguments but then passed those
		    arguments **positionally** internally when calling downstream
		    implementations, an ordered dictionary ensures that the original
		    order of the keyword arguments is enforced. Note that if there is
		    only one key, a generic dict can be passed in as well.
		
		Raises
		------
		TypeError if `args` contains more values than there are `compat_args`
		ValueError if `args` contains values that do not correspond to those
		of the default values specified in `compat_args`
	**/
	static public function validate_args(fname:Dynamic, args:Dynamic, max_fname_arg_count:Dynamic, compat_args:Dynamic):Dynamic;
	/**
		Checks whether parameters passed to the *args and **kwargs argument in a
		function `fname` are valid parameters as specified in `*compat_args`
		and whether or not they are set to their default values.
		
		Parameters
		----------
		fname: str
		    The name of the function being passed the `**kwargs` parameter
		
		args: tuple
		    The `*args` parameter passed into a function
		
		kwargs: dict
		    The `**kwargs` parameter passed into `fname`
		
		max_fname_arg_count: int
		    The minimum number of arguments that the function `fname`
		    requires, excluding those in `args`. Used for displaying
		    appropriate error messages. Must be non-negative.
		
		compat_args: OrderedDict
		    A ordered dictionary of keys that `kwargs` is allowed to
		    have and their associated default values. Note that if there
		    is only one key, a generic dict can be passed in as well.
		
		Raises
		------
		TypeError if `args` contains more values than there are
		`compat_args` OR `kwargs` contains keys not in `compat_args`
		ValueError if `args` contains values not at the default value (`None`)
		`kwargs` contains keys in `compat_args` that do not map to the default
		value as specified in `compat_args`
		
		See Also
		--------
		validate_args : Purely args validation.
		validate_kwargs : Purely kwargs validation.
	**/
	static public function validate_args_and_kwargs(fname:Dynamic, args:Dynamic, kwargs:Dynamic, max_fname_arg_count:Dynamic, compat_args:Dynamic):Dynamic;
	static public function validate_argsort(args:Dynamic, kwargs:Dynamic, ?fname:Dynamic, ?max_fname_arg_count:Dynamic, ?method:Dynamic):Dynamic;
	static public function validate_argsort_kind(args:Dynamic, kwargs:Dynamic, ?fname:Dynamic, ?max_fname_arg_count:Dynamic, ?method:Dynamic):Dynamic;
	/**
		If 'Categorical.argsort' is called via the 'numpy' library, the
		first parameter in its signature is 'axis', which takes either
		an integer or 'None', so check if the 'ascending' parameter has
		either integer type or is None, since 'ascending' itself should
		be a boolean
	**/
	static public function validate_argsort_with_ascending(ascending:Dynamic, args:Dynamic, kwargs:Dynamic):Dynamic;
	static public function validate_clip(args:Dynamic, kwargs:Dynamic, ?fname:Dynamic, ?max_fname_arg_count:Dynamic, ?method:Dynamic):Dynamic;
	/**
		If 'NDFrame.clip' is called via the numpy library, the third
		parameter in its signature is 'out', which can takes an ndarray,
		so check if the 'axis' parameter is an instance of ndarray, since
		'axis' itself should either be an integer or None
	**/
	static public function validate_clip_with_axis(axis:Dynamic, args:Dynamic, kwargs:Dynamic):Dynamic;
	static public function validate_compress(args:Dynamic, kwargs:Dynamic, ?fname:Dynamic, ?max_fname_arg_count:Dynamic, ?method:Dynamic):Dynamic;
	static public function validate_cum_func(args:Dynamic, kwargs:Dynamic, ?fname:Dynamic, ?max_fname_arg_count:Dynamic, ?method:Dynamic):Dynamic;
	/**
		If this function is called via the 'numpy' library, the third
		parameter in its signature is 'dtype', which takes either a
		'numpy' dtype or 'None', so check if the 'skipna' parameter is
		a boolean or not
	**/
	static public function validate_cum_func_with_skipna(skipna:Dynamic, args:Dynamic, kwargs:Dynamic, name:Dynamic):Dynamic;
	static public function validate_cumsum(args:Dynamic, kwargs:Dynamic, ?fname:Dynamic, ?max_fname_arg_count:Dynamic, ?method:Dynamic):Dynamic;
	static public function validate_expanding_func(name:Dynamic, args:Dynamic, kwargs:Dynamic):Dynamic;
	/**
		'args' and 'kwargs' should be empty, except for allowed
		kwargs because all of
		their necessary parameters are explicitly listed in
		the function signature
	**/
	static public function validate_groupby_func(name:Dynamic, args:Dynamic, kwargs:Dynamic, ?allowed:Dynamic):Dynamic;
	/**
		Checks whether parameters passed to the **kwargs argument in a
		function `fname` are valid parameters as specified in `*compat_args`
		and whether or not they are set to their default values.
		
		Parameters
		----------
		fname: str
		    The name of the function being passed the `**kwargs` parameter
		
		kwargs: dict
		    The `**kwargs` parameter passed into `fname`
		
		compat_args: dict
		    A dictionary of keys that `kwargs` is allowed to have and their
		    associated default values
		
		Raises
		------
		TypeError if `kwargs` contains keys not in `compat_args`
		ValueError if `kwargs` contains keys in `compat_args` that do not
		map to the default values specified in `compat_args`
	**/
	static public function validate_kwargs(fname:Dynamic, kwargs:Dynamic, compat_args:Dynamic):Dynamic;
	static public function validate_logical_func(args:Dynamic, kwargs:Dynamic, ?fname:Dynamic, ?max_fname_arg_count:Dynamic, ?method:Dynamic):Dynamic;
	static public function validate_max(args:Dynamic, kwargs:Dynamic, ?fname:Dynamic, ?max_fname_arg_count:Dynamic, ?method:Dynamic):Dynamic;
	static public function validate_mean(args:Dynamic, kwargs:Dynamic, ?fname:Dynamic, ?max_fname_arg_count:Dynamic, ?method:Dynamic):Dynamic;
	static public function validate_median(args:Dynamic, kwargs:Dynamic, ?fname:Dynamic, ?max_fname_arg_count:Dynamic, ?method:Dynamic):Dynamic;
	static public function validate_min(args:Dynamic, kwargs:Dynamic, ?fname:Dynamic, ?max_fname_arg_count:Dynamic, ?method:Dynamic):Dynamic;
	/**
		Ensure that the axis argument passed to min, max, argmin, or argmax is
		zero or None, as otherwise it will be incorrectly ignored.
		
		Parameters
		----------
		axis : int or None
		
		Raises
		------
		ValueError
	**/
	static public function validate_minmax_axis(axis:Dynamic):Dynamic;
	static public function validate_prod(args:Dynamic, kwargs:Dynamic, ?fname:Dynamic, ?max_fname_arg_count:Dynamic, ?method:Dynamic):Dynamic;
	static public function validate_repeat(args:Dynamic, kwargs:Dynamic, ?fname:Dynamic, ?max_fname_arg_count:Dynamic, ?method:Dynamic):Dynamic;
	/**
		'args' and 'kwargs' should be empty because all of
		their necessary parameters are explicitly listed in
		the function signature
	**/
	static public function validate_resampler_func(method:Dynamic, args:Dynamic, kwargs:Dynamic):Dynamic;
	static public function validate_reshape(args:Dynamic, kwargs:Dynamic, ?fname:Dynamic, ?max_fname_arg_count:Dynamic, ?method:Dynamic):Dynamic;
	static public function validate_rolling_func(name:Dynamic, args:Dynamic, kwargs:Dynamic):Dynamic;
	static public function validate_round(args:Dynamic, kwargs:Dynamic, ?fname:Dynamic, ?max_fname_arg_count:Dynamic, ?method:Dynamic):Dynamic;
	static public function validate_sort(args:Dynamic, kwargs:Dynamic, ?fname:Dynamic, ?max_fname_arg_count:Dynamic, ?method:Dynamic):Dynamic;
	static public function validate_stat_ddof_func(args:Dynamic, kwargs:Dynamic, ?fname:Dynamic, ?max_fname_arg_count:Dynamic, ?method:Dynamic):Dynamic;
	static public function validate_stat_func(args:Dynamic, kwargs:Dynamic, ?fname:Dynamic, ?max_fname_arg_count:Dynamic, ?method:Dynamic):Dynamic;
	static public function validate_sum(args:Dynamic, kwargs:Dynamic, ?fname:Dynamic, ?max_fname_arg_count:Dynamic, ?method:Dynamic):Dynamic;
	static public function validate_take(args:Dynamic, kwargs:Dynamic, ?fname:Dynamic, ?max_fname_arg_count:Dynamic, ?method:Dynamic):Dynamic;
	/**
		If this function is called via the 'numpy' library, the third
		parameter in its signature is 'axis', which takes either an
		ndarray or 'None', so check if the 'convert' parameter is either
		an instance of ndarray or is None
	**/
	static public function validate_take_with_convert(convert:Dynamic, args:Dynamic, kwargs:Dynamic):Dynamic;
	static public function validate_transpose(args:Dynamic, kwargs:Dynamic, ?fname:Dynamic, ?max_fname_arg_count:Dynamic, ?method:Dynamic):Dynamic;
	static public function validate_transpose_for_generic(inst:Dynamic, kwargs:Dynamic):Dynamic;
	static public function validate_window_func(name:Dynamic, args:Dynamic, kwargs:Dynamic):Dynamic;
}