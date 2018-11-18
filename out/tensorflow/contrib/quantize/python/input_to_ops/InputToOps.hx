/* This file is generated, do not edit! */
package tensorflow.contrib.quantize.python.input_to_ops;
@:pythonImport("tensorflow.contrib.quantize.python.input_to_ops", "InputToOps") extern class InputToOps {
	/**
		Looks through outputs of producer_op, finds ops that take them as input.
		
		Args:
		  producer_op: Operation containing outputs to process.
		
		Returns:
		  A Set[Operation] containing all operations taking input from producer_op
		    outputs.
	**/
	public function ConsumerOperations(producer_op:Dynamic):Dynamic;
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		Return self==value.
	**/
	public function __eq__(value:Dynamic):Dynamic;
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
		Initializes mapping from tensor's name to ops that take it.
		
		Helps find edges between ops faster and avoids iterating over the whole
		graph.   The mapping is of type Dict[str, Set[tf.Operation]].
		
		Note: while inserting operations into the graph, we do not update the
		mapping, assuming that insertion points in the graph are never adjacent.
		With that restriction, an out of date mapping still works fine.
		
		Args:
		  graph: Graph to process.
	**/
	@:native("__init__")
	public function ___init__(graph:Dynamic):Dynamic;
	/**
		Initializes mapping from tensor's name to ops that take it.
		
		Helps find edges between ops faster and avoids iterating over the whole
		graph.   The mapping is of type Dict[str, Set[tf.Operation]].
		
		Note: while inserting operations into the graph, we do not update the
		mapping, assuming that insertion points in the graph are never adjacent.
		With that restriction, an out of date mapping still works fine.
		
		Args:
		  graph: Graph to process.
	**/
	public function new(graph:Dynamic):Void;
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
	public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
}