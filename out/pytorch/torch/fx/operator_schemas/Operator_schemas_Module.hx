/* This file is generated, do not edit! */
package torch.fx.operator_schemas;
@:pythonImport("torch.fx.operator_schemas") extern class Operator_schemas_Module {
	static public function Any(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
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
	static public var TYPE_CHECKING : Dynamic;
	/**
		Tuple type; Tuple[X, Y] is the cross-product type of X and Y.
		
		Example: Tuple[T1, T2] is a tuple of two elements corresponding
		to type variables T1 and T2.  Tuple[int, float, str] is a tuple
		of an int, a float and a string.
		
		To specify a variable-length tuple of homogeneous type, use Tuple[T, ...].
	**/
	static public function Tuple(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var __annotations__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Given a call target, args, and kwargs, return the arguments normalized into
		an ArgsKwargsPair, or None if the type signature is not supported by
		this normalization.
		
		Args:
		
		    target (inspect.Signature): Signature object for the target
		    args (Tuple): Arguments that appear at the callsite for `target`
		    kwargs (Dict): Keyword arguments that appear at the callsite for `target`
		    normalize_to_only_use_kwargs (bool): Whether to normalize to only use kwargs.
		
		Returns:
		
		    Optional[ArgsKwargsPair]: Normalized args and kwargs for `target`, or `None` if
		        this target is not supported.
	**/
	static public function _args_kwargs_to_normalized_args_kwargs(sig:Dynamic, args:Dynamic, kwargs:Dynamic, normalize_to_only_use_kwargs:Dynamic):Dynamic;
	static public var _manual_overrides : Dynamic;
	static public function _nonzero_schemas():Dynamic;
	static public function _torchscript_schema_to_signature(ts_schema:Dynamic):Dynamic;
	/**
		Convert a TorchScript type to a Python type (including subtypes) via
		eval'ing the annotation_str. _type_eval_globals sets up expressions
		like "List" and "Future" to map to actual types (typing.List and jit.Future)
	**/
	static public function _torchscript_type_to_python_type(ts_type:Dynamic):Dynamic;
	static public var _type_eval_globals : Dynamic;
	static public var boolean_dispatched : Dynamic;
	/**
		Cast a value to a type.
		
		This returns the value unchanged.  To the type checker this
		signals that the return value has the designated type, but at
		runtime we intentionally don't check anything (we want this
		to be as fast as possible).
	**/
	@:native("cast")
	static public function _cast(typ:Dynamic, val:Dynamic):Dynamic;
	/**
		.. warning::
		    This API is experimental and is *NOT* backward-compatible.
	**/
	static public function check_for_mutable_operation(target:Dynamic, args:Dynamic, kwargs:Dynamic):Dynamic;
	static public function compatibility(is_backward_compatible:Dynamic):Dynamic;
	/**
		.. warning::
		    This API is experimental and is *NOT* backward-compatible.
	**/
	static public function create_type_hint(x:Dynamic):Dynamic;
	/**
		Given an operator on the `torch` namespace, return a list of `inspect.Signature`
		objects corresponding to the overloads of that op.. May return `None` if a signature
		could not be retrieved.
		
		Args:
		    op (Callable): An operator on the `torch` namespace to look up a signature for
		
		Returns:
		    Optional[List[inspect.Signature]]: A list of signatures for the overloads of this
		        operator, or None if the operator signatures could not be retrieved. If
		        return_schemas=True, returns a tuple containing the optional Python signatures
		        and the optional TorchScript Function signature
		
		.. warning::
		    This API is experimental and is *NOT* backward-compatible.
	**/
	static public function get_signature_for_torch_op(op:Dynamic, ?return_schemas:Dynamic):Dynamic;
	static public var k : Dynamic;
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
	/**
		.. warning::
		    This API is experimental and is *NOT* backward-compatible.
	**/
	static public function type_matches(signature_type:Dynamic, argument_type:Dynamic):Dynamic;
}