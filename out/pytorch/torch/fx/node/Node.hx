/* This file is generated, do not edit! */
package torch.fx.node;
@:pythonImport("torch.fx.node", "Node") extern class Node {
	/**
		This API is internal. Do *not* call it directly.
	**/
	public function _Node__update_args_kwargs(new_args:Dynamic, new_kwargs:Dynamic):Dynamic;
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
		Instantiate an instance of ``Node``. Note: most often, you want to use the
		Graph APIs, i.e. ``Graph.call_module``, ``Graph.call_method``, etc. rather
		than instantiating a ``Node`` directly.
		
		Args:
		    graph (Graph): The ``Graph`` to which this ``Node`` should belong.
		
		    name (str): The name to which the output of this ``Node`` should be assigned
		
		    op (str): The opcode for this ``Node``. Can be one of 'placeholder',
		        'call_method', 'call_module', 'call_function', 'get_attr',
		        'output'
		
		    target ('Target'): The target this op should call. See the broader
		        ``Node`` docstring for more details.
		
		    args (Tuple['Argument']): The args to be passed to ``target``
		
		    kwargs (Dict[str, 'Argument']): The kwargs to be passed to ``target``
		
		    return_type (Optional[Any]): The python type expression representing the
		        type of the output of this node. This field can be used for
		        annotation of values in the generated code or for other types
		        of analyses.
		
		.. note::
		    Backwards-compatibility for this API is guaranteed.
	**/
	@:native("__init__")
	public function ___init__(graph:Dynamic, name:Dynamic, op:Dynamic, target:Dynamic, args:Dynamic, kwargs:Dynamic, ?return_type:Dynamic):Dynamic;
	/**
		Instantiate an instance of ``Node``. Note: most often, you want to use the
		Graph APIs, i.e. ``Graph.call_module``, ``Graph.call_method``, etc. rather
		than instantiating a ``Node`` directly.
		
		Args:
		    graph (Graph): The ``Graph`` to which this ``Node`` should belong.
		
		    name (str): The name to which the output of this ``Node`` should be assigned
		
		    op (str): The opcode for this ``Node``. Can be one of 'placeholder',
		        'call_method', 'call_module', 'call_function', 'get_attr',
		        'output'
		
		    target ('Target'): The target this op should call. See the broader
		        ``Node`` docstring for more details.
		
		    args (Tuple['Argument']): The args to be passed to ``target``
		
		    kwargs (Dict[str, 'Argument']): The kwargs to be passed to ``target``
		
		    return_type (Optional[Any]): The python type expression representing the
		        type of the output of this node. This field can be used for
		        annotation of values in the generated code or for other types
		        of analyses.
		
		.. note::
		    Backwards-compatibility for this API is guaranteed.
	**/
	public function new(graph:Dynamic, name:Dynamic, op:Dynamic, target:Dynamic, args:Dynamic, kwargs:Dynamic, ?return_type:Dynamic):Void;
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
		Make target printouts more user-friendly.
		1) builtins will be printed as `builtins.xyz`
		2) operators will be printed as `operator.xyz`
		3) other callables will be printed with qualfied name, e.g. torch.add
	**/
	public function _pretty_print_target(target:Dynamic):Dynamic;
	public function _remove_from_list():Dynamic;
	/**
		Return all Nodes that are inputs to this Node. This is equivalent to
		iterating over ``args`` and ``kwargs`` and only collecting the values that
		are Nodes.
		
		Returns:
		
		    List of ``Nodes`` that appear in the ``args`` and ``kwargs`` of this
		    ``Node``, in that order.
	**/
	public var all_input_nodes : Dynamic;
	/**
		Insert x after this node in the list of nodes in the graph.
		Equvalent to ``self.next.prepend(x)``
		
		Args:
		    x (Node): The node to put after this node. Must be a member of the same graph.
		
		.. note::
		    Backwards-compatibility for this API is guaranteed.
	**/
	public function append(x:Dynamic):Dynamic;
	/**
		The tuple of arguments to this ``Node``. The interpretation of arguments
		depends on the node's opcode. See the :class:`Node` docstring for more
		information.
		
		Assignment to this property is allowed. All accounting of uses and users
		is updated automatically on assignment.
	**/
	public var args : Dynamic;
	/**
		Return a descriptive string representation of ``self``.
		
		This method can be used with no arguments as a debugging
		utility.
		
		This function is also used internally in the ``__str__`` method
		of ``Graph``. Together, the strings in ``placeholder_names``
		and ``maybe_return_typename`` make up the signature of the
		autogenerated ``forward`` function in this Graph's surrounding
		GraphModule. ``placeholder_names`` and ``maybe_return_typename``
		should not be used otherwise.
		
		Args:
		    placeholder_names: A list that will store formatted strings
		        representing the placeholders in the generated
		        ``forward`` function. Internal use only.
		    maybe_return_typename: A single-element list that will store
		        a formatted string representing the output of the
		        generated ``forward`` function. Internal use only.
		
		Returns:
		    str: If 1) we're using ``format_node`` as an internal helper
		        in the ``__str__`` method of ``Graph``, and 2) ``self``
		        is a placeholder Node, return ``None``. Otherwise,
		        return a  descriptive string representation of the
		        current Node.
		
		.. note::
		    Backwards-compatibility for this API is guaranteed.
	**/
	public function format_node(?placeholder_names:Dynamic, ?maybe_return_typename:Dynamic):Dynamic;
	/**
		Returns whether this op is impure, i.e. if its op is a placeholder or
		output, or if a call_function or call_module which is impure.
		
		Returns:
		
		    bool: If the op is impure or not.
		
		.. warning::
		    This API is experimental and is *NOT* backward-compatible.
	**/
	public function is_impure():Dynamic;
	/**
		The dict of keyword arguments to this ``Node``. The interpretation of arguments
		depends on the node's opcode. See the :class:`Node` docstring for more
		information.
		
		Assignment to this property is allowed. All accounting of uses and users
		is updated automatically on assignment.
	**/
	public var kwargs : Dynamic;
	/**
		Returns the next ``Node`` in the linked list of Nodes.
		
		Returns:
		
		    The next ``Node`` in the linked list of Nodes.
	**/
	public var next : Dynamic;
	/**
		Returns normalized arguments to Python targets. This means that
		`args/kwargs` will be matched up to the module/functional's
		signature and return exclusively kwargs in positional order
		if `normalize_to_only_use_kwargs` is true.
		Also populates default values. Does not support positional-only
		parameters or varargs parameters.
		
		Supports module calls.
		
		May require `arg_types` and `kwarg_types` in order to disambiguate overloads.
		
		Args:
		    root (torch.nn.Module): Module upon which to resolve module targets.
		    arg_types (Optional[Tuple[Any]]): Tuple of arg types for the args
		    kwarg_types (Optional[Dict[str, Any]]): Dict of arg types for the kwargs
		    normalize_to_only_use_kwargs (bool): Whether to normalize to only use kwargs.
		
		Returns:
		
		    Returns NamedTuple ArgsKwargsPair, or `None` if not successful.
		
		.. warning::
		    This API is experimental and is *NOT* backward-compatible.
	**/
	public function normalized_arguments(root:Dynamic, ?arg_types:Dynamic, ?kwarg_types:Dynamic, ?normalize_to_only_use_kwargs:Dynamic):Dynamic;
	/**
		Insert x before this node in the list of nodes in the graph. Example::
		
		    Before: p -> self
		            bx -> x -> ax
		    After:  p -> x -> self
		            bx -> ax
		
		Args:
		    x (Node): The node to put before this node. Must be a member of the same graph.
		
		.. note::
		    Backwards-compatibility for this API is guaranteed.
	**/
	public function prepend(x:Dynamic):Dynamic;
	/**
		Returns the previous ``Node`` in the linked list of Nodes.
		
		Returns:
		
		    The previous ``Node`` in the linked list of Nodes.
	**/
	public var prev : Dynamic;
	/**
		Replace all uses of ``self`` in the Graph with the Node ``replace_with``.
		
		Args:
		
		    replace_with (Node): The node to replace all uses of ``self`` with.
		
		Returns:
		
		    The list of Nodes on which this change was made.
		
		.. note::
		    Backwards-compatibility for this API is guaranteed.
	**/
	public function replace_all_uses_with(replace_with:Dynamic):Dynamic;
	/**
		Loop through input nodes of ``self``, and replace all instances of
		``old_input`` with ``new_input``.
		
		Args:
		
		    old_input (Node): The old input node to be replaced.
		    new_input (Node): The new input node to replace ``old_input``.
		
		.. note::
		    Backwards-compatibility for this API is guaranteed.
	**/
	public function replace_input_with(old_input:Dynamic, new_input:Dynamic):Dynamic;
	/**
		Return the Python stack trace that was recorded during tracing, if any.
		This property is usually populated by `Tracer.create_proxy`. To record
		stack traces during tracing for debug purposes, set
		`record_stack_traces = True` on the `Tracer` instance.
	**/
	public var stack_trace : Dynamic;
	/**
		Update an existing positional argument to contain the new value
		``arg``. After calling, ``self.args[idx] == arg``.
		
		Args:
		
		    idx (int): The index into ``self.args`` of the element to update
		    arg (Argument): The new argument value to write into ``args``
		
		.. note::
		    Backwards-compatibility for this API is guaranteed.
	**/
	public function update_arg(idx:Dynamic, arg:Dynamic):Dynamic;
	/**
		Update an existing keyword argument to contain the new value
		``arg``. After calling, ``self.kwargs[key] == arg``.
		
		Args:
		
		    key (str): The key in ``self.kwargs`` of the element to update
		    arg (Argument): The new argument value to write into ``kwargs``
		
		.. note::
		    Backwards-compatibility for this API is guaranteed.
	**/
	public function update_kwarg(key:Dynamic, arg:Dynamic):Dynamic;
}