/* This file is generated, do not edit! */
package torch.fx.node;
@:pythonImport("torch.fx.node") extern class Node_Module {
	static public function Any(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public function Argument(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function BaseArgumentTypes(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Callable type; Callable[[int], str] is a function of (int) -> str.
		
		The subscription syntax must always be used with exactly two
		values: the argument list and the return type.  The argument list
		must be a list of types or ellipsis; the return type must be a single type.
		
		There is no syntax to indicate optional or keyword arguments,
		such function types are rarely used as callback types.
	**/
	static public function Callable(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Dict(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function List(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Optional(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public function Set(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var TYPE_CHECKING : Dynamic;
	static public function Target(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Tuple type; Tuple[X, Y] is the cross-product type of X and Y.
		
		Example: Tuple[T1, T2] is a tuple of two elements corresponding
		to type variables T1 and T2.  Tuple[int, float, str] is a tuple
		of an int, a float and a string.
		
		To specify a variable-length tuple of homogeneous type, use Tuple[T, ...].
	**/
	static public function Tuple(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Union(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public var __annotations__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _find_module_of_method(orig_method:Dynamic):Dynamic;
	static public function _format_arg(arg:Dynamic):Dynamic;
	static public function _get_qualified_name(func:Dynamic):Dynamic;
	static public var _side_effectful_functions : Dynamic;
	/**
		Return the repr() of an object, special-casing types (internal helper).
		If obj is a type, we return a shorter version than the default
		type.__repr__, based on the module and qualified name, which is
		typically enough to uniquely identify a type.  For everything
		else, we fall back on repr(obj).
	**/
	static public function _type_repr(obj:Dynamic):Dynamic;
	static public var base_types : Dynamic;
	static public function compatibility(is_backward_compatible:Dynamic):Dynamic;
	/**
		Apply fn to each Node appearing arg. arg may be a list, tuple, slice, or dict with string keys.
		
		.. note::
		    Backwards-compatibility for this API is guaranteed.
	**/
	static public function map_aggregate(a:Dynamic, fn:Dynamic):Dynamic;
	/**
		Apply fn to each Node appearing arg. arg may be a list, tuple, slice, or dict with string keys.
		
		.. note::
		    Backwards-compatibility for this API is guaranteed.
	**/
	static public function map_arg(a:Dynamic, fn:Dynamic):Dynamic;
	/**
		Returns normalized arguments to PyTorch functions. This means that
		`args/kwargs` will be matched up to the functional's
		signature and return exclusively kwargs in positional order if
		`normalize_to_only_use_kwargs` is True.
		Also populates default values. Does not support positional-only
		parameters or varargs parameters (*args, **kwargs). Does not support modules.
		
		May require `arg_types` and `kwarg_types` in order to disambiguate overloads.
		
		Args:
		    target (Callable): Function that we are normalizing
		    args (Tuple[Any]): Tuple of args to the function
		    kwargs (Optional[Dict[str, Any]]): Dict of kwargs to the function
		    arg_types (Optional[Tuple[Any]]): Tuple of arg types for the args
		    kwarg_types (Optional[Dict[str, Any]]): Dict of arg types for the kwargs
		    normalize_to_only_use_kwargs (bool): Whether to normalize to only use kwargs.
		
		Returns:
		
		    Returns normalized_args_and_kwargs, or `None` if not successful.
		
		.. warning::
		    This API is experimental and is *NOT* backward-compatible.
	**/
	static public function normalize_function(target:Dynamic, args:Dynamic, ?kwargs:Dynamic, ?arg_types:Dynamic, ?kwarg_types:Dynamic, ?normalize_to_only_use_kwargs:Dynamic):Dynamic;
	/**
		Returns normalized arguments to PyTorch modules. This means that
		`args/kwargs` will be matched up to the functional's
		signature and return exclusively kwargs in positional order if
		`normalize_to_only_use_kwargs` is True.
		Also populates default values. Does not support positional-only
		parameters or varargs parameters (*args, **kwargs).
		
		Args:
		    root (nn.Module): root module upon which we query modules
		    target (Callable): Function that we are normalizing
		    args (Tuple[Any]): Tuple of args to the function
		    kwargs (Optional[Dict[str, Any]]): Dict of kwargs to the function
		    normalize_to_only_use_kwargs (bool): Whether to normalize to only use kwargs.
		
		Returns:
		
		    Returns normalized_args_and_kwargs, or `None` if not successful.
		
		.. warning::
		    This API is experimental and is *NOT* backward-compatible.
	**/
	static public function normalize_module(root:Dynamic, target:Dynamic, args:Dynamic, ?kwargs:Dynamic, ?normalize_to_only_use_kwargs:Dynamic):Dynamic;
}