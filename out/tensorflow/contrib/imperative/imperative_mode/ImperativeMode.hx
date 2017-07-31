/* This file is generated, do not edit! */
package tensorflow.contrib.imperative.imperative_mode;
@:pythonImport("tensorflow.contrib.imperative.imperative_mode", "ImperativeMode") extern class ImperativeMode {
	static public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
	static public var __dict__ : Dynamic;
	/**
		__dir__() -> list
		default dir() implementation
	**/
	public function __dir__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var __doc__ : Dynamic;
	/**
		Enters the runtime contexts of the `_context_managers`.
	**/
	public function __enter__():Dynamic;
	/**
		Return self==value.
	**/
	public function __eq__(value:Dynamic):Dynamic;
	/**
		Cleans up resources, exits the runtime contexts in reverse order.
	**/
	public function __exit__(exec_type:Dynamic, exec_value:Dynamic, exec_tb:Dynamic):Dynamic;
	/**
		default object formatter
	**/
	public function __format__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		Initializes an ImperativeMode.
		
		Args:
		  target: The TensorFlow execution engine to connect to.
		  parent_graph: (Optional) An ImperativeGraph.
		
		Raises:
		  UnimplementedError: if non-None parent_graph is not an ImperativeGraph.
	**/
	@:native("__init__")
	public function ___init__(target:Dynamic, ?parent_graph:Dynamic):Dynamic;
	/**
		Initializes an ImperativeMode.
		
		Args:
		  target: The TensorFlow execution engine to connect to.
		  parent_graph: (Optional) An ImperativeGraph.
		
		Raises:
		  UnimplementedError: if non-None parent_graph is not an ImperativeGraph.
	**/
	public function new(target:Dynamic, ?parent_graph:Dynamic):Void;
	/**
		This method is called when a class is subclassed.
		
		The default implementation does nothing. It may be
		overridden to extend subclasses.
	**/
	static public function __init_subclass__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		helper for pickle
	**/
	public function __reduce__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		helper for pickle
	**/
	public function __reduce_ex__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return repr(self).
	**/
	public function __repr__():Dynamic;
	/**
		Implement setattr(self, name, value).
	**/
	public function __setattr__(name:Dynamic, value:Dynamic):Dynamic;
	/**
		__sizeof__() -> int
		size of object in memory, in bytes
	**/
	public function __sizeof__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	static public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	/**
		Returns a new 'child' ImperativeMode.
		
		`new_step` enables running the imperative mode inside a Python loop. The
		ImperativeGraph object and the tensors created and cached during the
		execution of that graph are destroyed when the context entered with the
		object returned from this function is 'exited'. However, the operations
		in `self._graph` and any of its ancestors can be freely used as
		operands to operations in the graph contained in the object returned
		by this function.
		
		Returns:
		  A new ImperativeMode object.
	**/
	public function new_step():Dynamic;
	/**
		Runs the variable init ops before calling the original run method.
	**/
	public function run(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}