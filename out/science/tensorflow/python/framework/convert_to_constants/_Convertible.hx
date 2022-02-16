/* This file is generated, do not edit! */
package tensorflow.python.framework.convert_to_constants;
@:pythonImport("tensorflow.python.framework.convert_to_constants", "_Convertible") extern class _Convertible {
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
	public function ___init__(enclosing_graph:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(enclosing_graph:Dynamic):Void;
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
		Converts a variable in this Convertible and its dependencies.
		
		This method should make sure that a converted copy of itself is present in
		the converted graph, and that all Convertibles depending on this one also go
		through the same process.
		
		Args:
		  incoming_edge: The graph edge into this Convertible that is being
		    converted to a constant.
		  tensor_data: The tensor representing the constant.
	**/
	public function convert_variable_to_constant(incoming_edge:Dynamic, tensor_data:Dynamic):Dynamic;
	/**
		The graph being converted.
	**/
	public var converted_enclosing_graph : Dynamic;
	/**
		A copy of this Convertible to be modified during conversion.
		
		Returns:
		  Implementations should return the copied instance, which in turn should
		  be contained in converted_enclosing_graph(). This instance is the one that
		  will be modified during conversion. Its main use will be in the
		  implementations of convert_variable_to_constant().
	**/
	public function converted_self():Dynamic;
	/**
		Calls add_outgoing_edge for all edges known to this Convertible.
		
		This is used to build the graph dependencies, so that conversion of
		variables to constants can be properly propagated through the graph. Usually
		this method will call add_outgoing_edge() to all the Convertible inputs.
	**/
	public function create_edges():Dynamic;
	/**
		The list of edges starting at this Convertible.
	**/
	public var outgoing_edges : Dynamic;
}