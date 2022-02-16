/* This file is generated, do not edit! */
package torch.fx.interpreter;
@:pythonImport("torch.fx.interpreter", "Interpreter") extern class Interpreter {
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
		.. note::
		    Backwards-compatibility for this API is guaranteed.
	**/
	@:native("__init__")
	public function ___init__(module:Dynamic, ?garbage_collect_values:Dynamic):Dynamic;
	/**
		.. note::
		    Backwards-compatibility for this API is guaranteed.
	**/
	public function new(module:Dynamic, ?garbage_collect_values:Dynamic):Void;
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
		Execute a ``call_function`` node and return the result.
		
		Args:
		    target (Target): The call target for this node. See
		        `Node <https://pytorch.org/docs/master/fx.html#torch.fx.Node>`__ for
		        details on semantics
		    args (Tuple): Tuple of positional args for this invocation
		    kwargs (Dict): Dict of keyword arguments for this invocation
		
		Return
		    Any: The value returned by the function invocation
		
		.. note::
		    Backwards-compatibility for this API is guaranteed.
	**/
	public function call_function(target:Dynamic, args:Dynamic, kwargs:Dynamic):Dynamic;
	/**
		Execute a ``call_method`` node and return the result.
		
		Args:
		    target (Target): The call target for this node. See
		        `Node <https://pytorch.org/docs/master/fx.html#torch.fx.Node>`__ for
		        details on semantics
		    args (Tuple): Tuple of positional args for this invocation
		    kwargs (Dict): Dict of keyword arguments for this invocation
		
		Return
		    Any: The value returned by the method invocation
		
		.. note::
		    Backwards-compatibility for this API is guaranteed.
	**/
	public function call_method(target:Dynamic, args:Dynamic, kwargs:Dynamic):Dynamic;
	/**
		Execute a ``call_module`` node and return the result.
		
		Args:
		    target (Target): The call target for this node. See
		        `Node <https://pytorch.org/docs/master/fx.html#torch.fx.Node>`__ for
		        details on semantics
		    args (Tuple): Tuple of positional args for this invocation
		    kwargs (Dict): Dict of keyword arguments for this invocation
		
		Return
		    Any: The value returned by the module invocation
		
		.. note::
		    Backwards-compatibility for this API is guaranteed.
	**/
	public function call_module(target:Dynamic, args:Dynamic, kwargs:Dynamic):Dynamic;
	/**
		Fetch the concrete values of ``args`` and ``kwargs`` of node ``n``
		from the current execution environment.
		
		Args:
		    n (Node): The node for which ``args`` and ``kwargs`` should be fetched.
		
		Return:
		    Tuple[Tuple, Dict]: ``args`` and ``kwargs`` with concrete values for ``n``.
		
		.. note::
		    Backwards-compatibility for this API is guaranteed.
	**/
	public function fetch_args_kwargs_from_env(n:Dynamic):Dynamic;
	/**
		Fetch an attribute from the ``Module`` hierarchy of ``self.module``.
		
		Args:
		    target (str): The fully-qualfiied name of the attribute to fetch
		
		Return:
		    Any: The value of the attribute.
		
		.. note::
		    Backwards-compatibility for this API is guaranteed.
	**/
	public function fetch_attr(target:Dynamic):Dynamic;
	/**
		Execute a ``get_attr`` node. Will retrieve an attribute
		value from the ``Module`` hierarchy of ``self.module``.
		
		Args:
		    target (Target): The call target for this node. See
		        `Node <https://pytorch.org/docs/master/fx.html#torch.fx.Node>`__ for
		        details on semantics
		    args (Tuple): Tuple of positional args for this invocation
		    kwargs (Dict): Dict of keyword arguments for this invocation
		
		Return:
		    Any: The value of the attribute that was retrieved
		
		.. note::
		    Backwards-compatibility for this API is guaranteed.
	**/
	public function get_attr(target:Dynamic, args:Dynamic, kwargs:Dynamic):Dynamic;
	/**
		Recursively descend through ``args`` and look up the concrete value
		for each ``Node`` in the current execution environment.
		
		Args:
		    args (Argument): Data structure within which to look up concrete values
		
		    n (Node): Node to which ``args`` belongs. This is only used for error reporting.
		
		.. note::
		    Backwards-compatibility for this API is guaranteed.
	**/
	public function map_nodes_to_values(args:Dynamic, n:Dynamic):Dynamic;
	/**
		Execute an ``output`` node. This really just retrieves
		the value referenced by the ``output`` node and returns it.
		
		Args:
		    target (Target): The call target for this node. See
		        `Node <https://pytorch.org/docs/master/fx.html#torch.fx.Node>`__ for
		        details on semantics
		    args (Tuple): Tuple of positional args for this invocation
		    kwargs (Dict): Dict of keyword arguments for this invocation
		
		Return:
		    Any: The return value referenced by the output node
		
		.. note::
		    Backwards-compatibility for this API is guaranteed.
	**/
	public function output(target:Dynamic, args:Dynamic, kwargs:Dynamic):Dynamic;
	/**
		Execute a ``placeholder`` node. Note that this is stateful:
		``Interpreter`` maintains an internal iterator over
		arguments passed to ``run`` and this method returns
		next() on that iterator.
		
		Args:
		    target (Target): The call target for this node. See
		        `Node <https://pytorch.org/docs/master/fx.html#torch.fx.Node>`__ for
		        details on semantics
		    args (Tuple): Tuple of positional args for this invocation
		    kwargs (Dict): Dict of keyword arguments for this invocation
		
		Returns:
		    Any: The argument value that was retrieved.
		
		.. note::
		    Backwards-compatibility for this API is guaranteed.
	**/
	public function placeholder(target:Dynamic, args:Dynamic, kwargs:Dynamic):Dynamic;
	/**
		Run `module` via interpretation and return the result.
		
		Args:
		    *args: The arguments to the Module to run, in positional order
		    initial_env (Optional[Dict[Node, Any]]): An optional starting environment for execution.
		        This is a dict mapping `Node` to any value. This can be used, for example, to
		        pre-populate results for certain `Nodes` so as to do only partial evaluation within
		        the interpreter.
		
		Returns:
		    Any: The value returned from executing the Module
		
		.. note::
		    Backwards-compatibility for this API is guaranteed.
	**/
	public function run(?args:python.VarArgs<Dynamic>, ?initial_env:Dynamic):Dynamic;
	/**
		Run a specific node ``n`` and return the result.
		Calls into placeholder, get_attr, call_function,
		call_method, call_module, or output depending
		on ``node.op``
		
		Args:
		    n (Node): The Node to execute
		
		Returns:
		    Any: The result of executing ``n``
		
		.. note::
		    Backwards-compatibility for this API is guaranteed.
	**/
	public function run_node(n:Dynamic):Dynamic;
}