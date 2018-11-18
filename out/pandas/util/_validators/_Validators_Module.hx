/* This file is generated, do not edit! */
package pandas.util._validators;
@:pythonImport("pandas.util._validators") extern class _Validators_Module {
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
	static public function is_bool(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		validate_args : purely args validation
		validate_kwargs : purely kwargs validation
	**/
	static public function validate_args_and_kwargs(fname:Dynamic, args:Dynamic, kwargs:Dynamic, max_fname_arg_count:Dynamic, compat_args:Dynamic):Dynamic;
	/**
		Argument handler for mixed index, columns / axis functions
		
		In an attempt to handle both `.method(index, columns)`, and
		`.method(arg, axis=.)`, we have to do some bad things to argument
		parsing. This translates all arguments to `{index=., columns=.}` style.
		
		Parameters
		----------
		data : DataFrame or Panel
		arg : tuple
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
		>>> df._validate_axis_style_args((str.upper,), {'columns': id},
		...                              'mapper', 'rename')
		{'columns': <function id>, 'index': <method 'upper' of 'str' objects>}
		
		This emits a warning
		>>> df._validate_axis_style_args((str.upper, id), {},
		...                              'mapper', 'rename')
		{'columns': <function id>, 'index': <method 'upper' of 'str' objects>}
	**/
	static public function validate_axis_style_args(data:Dynamic, args:Dynamic, kwargs:Dynamic, arg_name:Dynamic, method_name:Dynamic):python.Dict<Dynamic, Dynamic>;
	/**
		Ensures that argument passed in arg_name is of type bool. 
	**/
	static public function validate_bool_kwarg(value:Dynamic, arg_name:Dynamic):Dynamic;
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
}