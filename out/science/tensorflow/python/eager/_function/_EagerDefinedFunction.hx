/* This file is generated, do not edit! */
package tensorflow.python.eager._function;
@:pythonImport("tensorflow.python.eager.function", "_EagerDefinedFunction") extern class _EagerDefinedFunction {
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
		Initializes an eager defined function.
		
		Args:
		  name: str, the name for the created function.
		  graph: Graph, the graph containing the operations in the function
		  inputs: the tensors in the graph to be used as inputs to the function
		  outputs: the tensors in the graph which will be outputs from the function
		  attrs: dict mapping names of attributes to their AttrValue values
	**/
	@:native("__init__")
	public function ___init__(name:Dynamic, graph:Dynamic, inputs:Dynamic, outputs:Dynamic, attrs:Dynamic):Dynamic;
	/**
		Initializes an eager defined function.
		
		Args:
		  name: str, the name for the created function.
		  graph: Graph, the graph containing the operations in the function
		  inputs: the tensors in the graph to be used as inputs to the function
		  outputs: the tensors in the graph which will be outputs from the function
		  attrs: dict mapping names of attributes to their AttrValue values
	**/
	public function new(name:Dynamic, graph:Dynamic, inputs:Dynamic, outputs:Dynamic, attrs:Dynamic):Void;
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
		Add the function to the current context or a graph, if supplied.
		
		Args:
		  g: the graph to add the function to. If not supplied, the function will
		    be added to the current context.
	**/
	public function add_to_graph(?g:Dynamic):Dynamic;
	/**
		Calls this function with `args` as inputs.
		
		`ConcreteFunction` execution respects device annotations only if the
		function won't be compiled with xla.
		
		Args:
		  ctx: a Context object
		  args: a list of arguments to supply this function with.
		  cancellation_manager: a `CancellationManager` object that can be used to
		    cancel function execution.
		
		Returns:
		  The outputs of the function call.
		
		Raises:
		  ValueError: if the number of arguments is incorrect.
		  FunctionAlreadyGarbageCollectedError: if the function is no longer
		    available to be called because it has been garbage collected.
	**/
	public function call(ctx:Dynamic, args:Dynamic, ?cancellation_manager:Dynamic):Dynamic;
	public var name : Dynamic;
	public var stateful_ops : Dynamic;
}