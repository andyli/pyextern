/* This file is generated, do not edit! */
package tensorflow.python.framework._function;
@:pythonImport("tensorflow.python.framework.function", "_DefinedFunction") extern class _DefinedFunction {
	/**
		Call self as a function.
	**/
	public function __call__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
	static public var __dict__ : Dynamic;
	/**
		Default dir() implementation.
	**/
	public function __dir__():Dynamic;
	static public var __doc__ : Dynamic;
	/**
		Return self==value.
	**/
	public function __eq__(value:Dynamic):Dynamic;
	/**
		Default object formatter.
	**/
	public function __format__(format_spec:Dynamic):Dynamic;
	/**
		Return self>=value.
	**/
	public function __ge__(value:Dynamic):Dynamic;
	/**
		Return getattr(self, name).
	**/
	public function __getattribute__(name:Dynamic):Dynamic;
	/**
		Return self>value.
	**/
	public function __gt__(value:Dynamic):Dynamic;
	/**
		Return hash(self).
	**/
	public function __hash__():Dynamic;
	/**
		Creates _DefinedFunction.
		
		Args:
		  func:  A python callable which constructs a tf function body.
		  argnames: A list of strings for function argument names.
		  input_types: The function's argument types. Can be a tuple, list of
		    tf data types.
		  func_name: The function name. Defaults to None, in which derives from
		    'func'.
		  grad_func: This function's gradient function, if not None. Defaults
		    to None.
		  python_grad_func: A python callable implementing the gradient of
		    the function python-side.
		  out_names: An optional list of strings for the function return value
		    names.
		  shape_func: An optional function mapping an op to a list of static
		    output shapes.
		  capture_by_value: Boolean (defaults to False). If True, captured values
		    will be copied into the function body.
		  allowlisted_stateful_ops: A set of ops that if stateful we ignore and
		    copy into the function body, when `capture_by_value` is True.
		  capture_resource_var_by_value: Boolean (defaults to True). If False,
		    captured resource variable returns the handle instead of value.
		  **kwargs: The keyword arguments. **kwargs is passed to every call
		    site of this function.
		
		Raises:
		  ValueError: The function definition is invalid.
	**/
	@:native("__init__")
	public function ___init__(func:Dynamic, argnames:Dynamic, input_types:Dynamic, ?func_name:Dynamic, ?grad_func:Dynamic, ?python_grad_func:Dynamic, ?out_names:Dynamic, ?shape_func:Dynamic, ?capture_by_value:Dynamic, ?allowlisted_stateful_ops:Dynamic, ?capture_resource_var_by_value:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Creates _DefinedFunction.
		
		Args:
		  func:  A python callable which constructs a tf function body.
		  argnames: A list of strings for function argument names.
		  input_types: The function's argument types. Can be a tuple, list of
		    tf data types.
		  func_name: The function name. Defaults to None, in which derives from
		    'func'.
		  grad_func: This function's gradient function, if not None. Defaults
		    to None.
		  python_grad_func: A python callable implementing the gradient of
		    the function python-side.
		  out_names: An optional list of strings for the function return value
		    names.
		  shape_func: An optional function mapping an op to a list of static
		    output shapes.
		  capture_by_value: Boolean (defaults to False). If True, captured values
		    will be copied into the function body.
		  allowlisted_stateful_ops: A set of ops that if stateful we ignore and
		    copy into the function body, when `capture_by_value` is True.
		  capture_resource_var_by_value: Boolean (defaults to True). If False,
		    captured resource variable returns the handle instead of value.
		  **kwargs: The keyword arguments. **kwargs is passed to every call
		    site of this function.
		
		Raises:
		  ValueError: The function definition is invalid.
	**/
	public function new(func:Dynamic, argnames:Dynamic, input_types:Dynamic, ?func_name:Dynamic, ?grad_func:Dynamic, ?python_grad_func:Dynamic, ?out_names:Dynamic, ?shape_func:Dynamic, ?capture_by_value:Dynamic, ?allowlisted_stateful_ops:Dynamic, ?capture_resource_var_by_value:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Void;
	/**
		This method is called when a class is subclassed.
		
		The default implementation does nothing. It may be
		overridden to extend subclasses.
	**/
	public function __init_subclass__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return self<=value.
	**/
	public function __le__(value:Dynamic):Dynamic;
	/**
		Return self<value.
	**/
	public function __lt__(value:Dynamic):Dynamic;
	static public var __module__ : Dynamic;
	/**
		Return self!=value.
	**/
	public function __ne__(value:Dynamic):Dynamic;
	/**
		Create and return a new object.  See help(type) for accurate signature.
	**/
	static public function __new__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Helper for pickle.
	**/
	public function __reduce__():Dynamic;
	/**
		Helper for pickle.
	**/
	public function __reduce_ex__(protocol:Dynamic):Dynamic;
	/**
		Return repr(self).
	**/
	public function __repr__():Dynamic;
	/**
		Implement setattr(self, name, value).
	**/
	public function __setattr__(name:Dynamic, value:Dynamic):Dynamic;
	/**
		Size of object in memory, in bytes.
	**/
	public function __sizeof__():Dynamic;
	/**
		Return str(self).
	**/
	public function __str__():Dynamic;
	/**
		Abstract classes can override this to customize issubclass().
		
		This is invoked early on by abc.ABCMeta.__subclasscheck__().
		It should return True, False or NotImplemented.  If it returns
		NotImplemented, the normal algorithm is used.  Otherwise, it
		overrides the normal algorithm (and the outcome is cached).
	**/
	public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	/**
		Creates the function definition if it's not created yet.
	**/
	public function _create_definition_if_needed():Dynamic;
	/**
		This is not what you want, see _create_definition_if_needed.
	**/
	public function _create_definition_if_needed_impl():Dynamic;
	/**
		Creates an 8-character string unique to this input.
		
		Args:
		  input_arg: the input_arg field of an OpDef
		             (e.g. self._definition.signature.input_arg)
		  output_arg: the output_arg field of an OpDef
		             (e.g. self._definition.signature.output_arg)
		  node_def: the node_def field of a FunctionDef
		            (e.g. self._definition.node_def)
		
		Returns:
		  The unique string for this input
	**/
	public function _create_hash_str(input_arg:Dynamic, output_arg:Dynamic, node_def:Dynamic):Dynamic;
	/**
		Sets `attrs` as attributes of self._c_func.
		
		Requires that self._c_func is not None.
		
		Args:
		  attrs: a dictionary from attribute name to attribute proto value
	**/
	public function _set_c_attrs(attrs:Dynamic):Dynamic;
	public var _signature : Dynamic;
	/**
		Adds this function into the graph g.
	**/
	public function add_to_graph(g:Dynamic):Dynamic;
	/**
		Returns the list of implicitly captured inputs.
	**/
	public var captured_inputs : Dynamic;
	/**
		Returns the list of data types of explicit declared inputs.
	**/
	public var declared_input_types : Dynamic;
	/**
		Function definition proto.
	**/
	public var definition : Dynamic;
	/**
		Returns the name of the gradient function.
	**/
	public var grad_func_name : Dynamic;
	/**
		Function name.
	**/
	public var name : Dynamic;
	/**
		Python gradient function callable.
	**/
	public var python_grad_func : Dynamic;
	/**
		Specifies the gradient function of this function.
	**/
	public function set_grad_func(grad_func:Dynamic):Dynamic;
	/**
		Returns the list of stateful ops in function definition.
		
		Returns:
		  A list of (op.name, op.type) pairs.
	**/
	public var stateful_ops : Dynamic;
}