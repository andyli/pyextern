/* This file is generated, do not edit! */
package pandas.util._validators;
@:pythonImport("pandas.util._validators") extern class _Validators_Module {
	static public function Iterable(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Sequence(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Checks whether 'args' has length of at most 'compat_args'. Raises
		a TypeError if that is not the case, similar to in Python when a
		function is called with too many arguments.
	**/
	static public function _check_arg_length(fname:Dynamic, args:Dynamic, max_fname_arg_count:Dynamic, compat_args:Dynamic):Dynamic;
	/**
		Check that the keys in `arg_val_dict` are mapped to their
		default values as specified in `compat_args`.
		
		Note that this function is to be called only when it has been
		checked that arg_val_dict.keys() is a subset of compat_args
	**/
	static public function _check_for_default_values(fname:Dynamic, arg_val_dict:Dynamic, compat_args:Dynamic):Dynamic;
	/**
		Checks whether 'kwargs' contains any keys that are not
		in 'compat_args' and raises a TypeError if there is one.
	**/
	static public function _check_for_invalid_keys(fname:Dynamic, kwargs:Dynamic, compat_args:Dynamic):Dynamic;
	static public var annotations : Dynamic;
	/**
		Find the first place in the stack that is not inside pandas
		(tests notwithstanding).
	**/
	static public function find_stack_level():Dynamic;
	/**
		Return True if given object is boolean.
		
		Returns
		-------
		bool
	**/
	static public function is_bool(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return True if given object is integer.
		
		Returns
		-------
		bool
	**/
	static public function is_integer(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Checks whether the length of the `*args` argument passed into a function
		has at most `len(compat_args)` arguments and whether or not all of these
		elements in `args` are set to their default values.
		
		Parameters
		----------
		fname : str
		    The name of the function being passed the `*args` parameter
		args : tuple
		    The `*args` parameter passed into a function
		max_fname_arg_count : int
		    The maximum number of arguments that the function `fname`
		    can accept, excluding those in `args`. Used for displaying
		    appropriate error messages. Must be non-negative.
		compat_args : dict
		    A dictionary of keys and their associated default values.
		    In order to accommodate buggy behaviour in some versions of `numpy`,
		    where a signature displayed keyword arguments but then passed those
		    arguments **positionally** internally when calling downstream
		    implementations, a dict ensures that the original
		    order of the keyword arguments is enforced.
		
		Raises
		------
		TypeError
		    If `args` contains more values than there are `compat_args`
		ValueError
		    If `args` contains values that do not correspond to those
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
		compat_args: dict
		    A dictionary of keys that `kwargs` is allowed to
		    have and their associated default values.
		
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
	/**
		Validate ``ascending`` kwargs for ``sort_index`` method.
	**/
	static public function validate_ascending(?ascending:Dynamic):Dynamic;
	/**
		Argument handler for mixed index, columns / axis functions
		
		In an attempt to handle both `.method(index, columns)`, and
		`.method(arg, axis=.)`, we have to do some bad things to argument
		parsing. This translates all arguments to `{index=., columns=.}` style.
		
		Parameters
		----------
		data : DataFrame
		args : tuple
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
		>>> df = pd.DataFrame(range(2))
		>>> validate_axis_style_args(df, (str.upper,), {'columns': id},
		...                          'mapper', 'rename')
		{'columns': <built-in function id>, 'index': <method 'upper' of 'str' objects>}
		
		This emits a warning
		>>> validate_axis_style_args(df, (str.upper, id), {},
		...                          'mapper', 'rename')
		{'index': <method 'upper' of 'str' objects>, 'columns': <built-in function id>}
	**/
	static public function validate_axis_style_args(data:Dynamic, args:Dynamic, kwargs:Dynamic, arg_name:Dynamic, method_name:Dynamic):python.Dict<Dynamic, Dynamic>;
	/**
		Ensure that argument passed in arg_name can be interpreted as boolean.
		
		Parameters
		----------
		value : bool
		    Value to be validated.
		arg_name : str
		    Name of the argument. To be reflected in the error message.
		none_allowed : bool, default True
		    Whether to consider None to be a valid boolean.
		int_allowed : bool, default False
		    Whether to consider integer value to be a valid boolean.
		
		Returns
		-------
		value
		    The same value as input.
		
		Raises
		------
		ValueError
		    If the value is not a valid boolean.
	**/
	static public function validate_bool_kwarg(value:Dynamic, arg_name:Dynamic, ?none_allowed:Dynamic, ?int_allowed:Dynamic):Dynamic;
	/**
		Check that the `closed` argument is among [None, "left", "right"]
		
		Parameters
		----------
		closed : {None, "left", "right"}
		
		Returns
		-------
		left_closed : bool
		right_closed : bool
		
		Raises
		------
		ValueError : if argument is not among valid values
	**/
	static public function validate_endpoints(closed:Dynamic):Dynamic;
	/**
		Validate the keyword arguments to 'fillna'.
		
		This checks that exactly one of 'value' and 'method' is specified.
		If 'method' is specified, this validates that it's a valid method.
		
		Parameters
		----------
		value, method : object
		    The 'value' and 'method' keyword arguments for 'fillna'.
		validate_scalar_dict_value : bool, default True
		    Whether to validate that 'value' is a scalar or dict. Specifically,
		    validate that it is not a list or tuple.
		
		Returns
		-------
		value, method : object
	**/
	static public function validate_fillna_kwargs(value:Dynamic, method:Dynamic, ?validate_scalar_dict_value:Dynamic):Dynamic;
	/**
		Check that the `inclusive` argument is among {"both", "neither", "left", "right"}.
		
		Parameters
		----------
		inclusive : {"both", "neither", "left", "right"}
		
		Returns
		-------
		left_right_inclusive : tuple[bool, bool]
		
		Raises
		------
		ValueError : if argument is not among valid values
	**/
	static public function validate_inclusive(inclusive:Dynamic):Dynamic;
	/**
		Check that we have an integer between -length and length, inclusive.
		
		Standardize negative loc to within [0, length].
		
		The exceptions we raise on failure match np.insert.
	**/
	static public function validate_insert_loc(loc:Dynamic, length:Dynamic):Dynamic;
	/**
		Checks whether parameters passed to the **kwargs argument in a
		function `fname` are valid parameters as specified in `*compat_args`
		and whether or not they are set to their default values.
		
		Parameters
		----------
		fname : str
		    The name of the function being passed the `**kwargs` parameter
		kwargs : dict
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
	/**
		Validate percentiles (used by describe and quantile).
		
		This function checks if the given float or iterable of floats is a valid percentile
		otherwise raises a ValueError.
		
		Parameters
		----------
		q: float or iterable of floats
		    A single percentile or an iterable of percentiles.
		
		Returns
		-------
		ndarray
		    An ndarray of the percentiles if valid.
		
		Raises
		------
		ValueError if percentiles are not in given interval([0, 1]).
	**/
	static public function validate_percentile(q:Dynamic):Dynamic;
}