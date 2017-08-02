/* This file is generated, do not edit! */
package theano.gof.toolbox;
@:pythonImport("theano.gof.toolbox", "NoOutputFromInplace") extern class NoOutputFromInplace {
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
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	@:native("__init__")
	public function ___init__(?first_output_idx:Dynamic, ?last_output_idx:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(?first_output_idx:Dynamic, ?last_output_idx:Dynamic):Void;
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
		Called by FunctionGraph.attach_feature, the method that attaches
		the feature to the FunctionGraph. Since this is called after the
		FunctionGraph is initially populated, this is where you should
		run checks on the initial contents of the FunctionGraph.
		
		The on_attach method may raise the AlreadyThere exception to cancel
		the attach operation if it detects that another Feature instance
		implementing the same functionality is already atttached to the
		FunctionGraph.
		
		The feature has great freedom in what it can do with the
		function_graph: it may, for example, add methods to it dynamically.
	**/
	public function on_attach(function_graph:Dynamic):Dynamic;
	/**
		Called whenever node.inputs[i] is changed from r to new_r.
		At the moment the callback is done, the change has already
		taken place.
		
		If you raise an exception in this function, the state of the graph
		might be broken for all intents and purposes.
	**/
	public function on_change_input(function_graph:Dynamic, node:Dynamic, i:Dynamic, r:Dynamic, new_r:Dynamic, ?reason:Dynamic):Dynamic;
	/**
		Called by remove_feature(feature).  Should remove any dynamically-added
		functionality that it installed into the function_graph.
	**/
	public function on_detach(function_graph:Dynamic):Dynamic;
	/**
		Called whenever a node is imported into function_graph, which is
		just before the node is actually connected to the graph.
		Note: on_import is not called when the graph is created. If you
		want to detect the first nodes to be implemented to the graph,
		you should do this by implementing on_attach.
	**/
	public function on_import(function_graph:Dynamic, node:Dynamic, reason:Dynamic):Dynamic;
	/**
		Called whenever a node is pruned (removed) from the function_graph,
		after it is disconnected from the graph.
	**/
	public function on_prune(function_graph:Dynamic, node:Dynamic, reason:Dynamic):Dynamic;
	/**
		Called by toposort. It should return a dictionary of
		{node: predecessors} where predecessors is a list of
		nodes that should be computed before the key node.
		
		If you raise an exception in this function, the state of the graph
		might be broken for all intents and purposes.
	**/
	public function orderings(function_graph:Dynamic):Dynamic;
	public function validate(fgraph:Dynamic):Dynamic;
}