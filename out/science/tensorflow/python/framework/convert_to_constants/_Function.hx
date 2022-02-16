/* This file is generated, do not edit! */
package tensorflow.python.framework.convert_to_constants;
@:pythonImport("tensorflow.python.framework.convert_to_constants", "_Function") extern class _Function {
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
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	@:native("__init__")
	public function ___init__(_function:Dynamic, enclosing_graph:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(_function:Dynamic, enclosing_graph:Dynamic):Void;
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
		Adds an outgoing edge to the Convertible's list of edges.
		
		Args:
		  edge: The outgoing edge (its source should be 'self').
	**/
	public function add_outgoing_edge(edge:Dynamic):Dynamic;
	/**
		Converts one function argument into a constant.
		
		Args:
		  incoming_edge: The edge into the argument to be converted.
		  tensor_data: The constant value.
	**/
	public function convert_variable_to_constant(incoming_edge:Dynamic, tensor_data:Dynamic):Dynamic;
	/**
		The graph being converted.
	**/
	public var converted_enclosing_graph : Dynamic;
	/**
		The Function copy to be converted.
		
		The copy will be renamed according to the graph's converted_function_name
		map, to ensure the name does not match anything currently in TensorFlow's
		function cache.
		
		Returns:
		  The function instance to be converted.
	**/
	public function converted_self():Dynamic;
	/**
		Calls add_outgoing_edge for all edges known to this Convertible.
		
		This is used to build the graph dependencies, so that conversion of
		variables to constants can be properly propagated through the graph. Usually
		this method will call add_outgoing_edge() to all the Convertible inputs.
	**/
	public function create_edges():Dynamic;
	@:native("function")
	public var _function : Dynamic;
	public var nodes : Dynamic;
	/**
		The list of edges starting at this Convertible.
	**/
	public var outgoing_edges : Dynamic;
}