/* This file is generated, do not edit! */
package tensorflow.python.framework.convert_to_constants;
@:pythonImport("tensorflow.python.framework.convert_to_constants", "_While") extern class _While {
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
		Initializes a _FunctionCaller.
		
		Args:
		  node: As in _Node.
		  function: As in _Node.
		  enclosing_graph: As in _Node.
		  first_function_input: The index of the first NodeDef input that is tied to
		    the function inputs. It is assumed that the rest of the NodeDef inputs
		    map one to one to function inputs.
		  type_attribute: The name of the NodeDef attribute that defines the input
		    types. It is assumed that the types listed here map one-to-one with the
		    function inputs (that is, they do _not_ specify types for inputs that
		    are not passed to functions).
		  function_attributes: The names of the NodeDef attributes containing
		    references to functions.
	**/
	@:native("__init__")
	public function ___init__(node:Dynamic, _function:Dynamic, enclosing_graph:Dynamic):Dynamic;
	/**
		Initializes a _FunctionCaller.
		
		Args:
		  node: As in _Node.
		  function: As in _Node.
		  enclosing_graph: As in _Node.
		  first_function_input: The index of the first NodeDef input that is tied to
		    the function inputs. It is assumed that the rest of the NodeDef inputs
		    map one to one to function inputs.
		  type_attribute: The name of the NodeDef attribute that defines the input
		    types. It is assumed that the types listed here map one-to-one with the
		    function inputs (that is, they do _not_ specify types for inputs that
		    are not passed to functions).
		  function_attributes: The names of the NodeDef attributes containing
		    references to functions.
	**/
	public function new(node:Dynamic, _function:Dynamic, enclosing_graph:Dynamic):Void;
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
		The node container (either a graph or a function).
	**/
	public var container : Dynamic;
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
		The NodeDef to be converted.
		
		Returns:
		  The NodeDef to be converted, which can come from either a graph for a
		  function. Derived classes should call this (via 'super') to make sure the
		  node is retrieved from the right place.
	**/
	public function converted_self():Dynamic;
	/**
		Creates edges related to a function caller.
		
		Edges from a function caller to its called functions are always edges from
		_inputs_ to _inputs_: a FunctionDef input is given by the caller, based on
		its own inputs.
	**/
	public function create_edges():Dynamic;
	/**
		Creates a new _Node base on its operation type.
	**/
	@:native("new")
	static public function _new(node:Dynamic, _function:Dynamic, enclosing_graph:Dynamic):Dynamic;
	public var node : Dynamic;
	/**
		The list of edges starting at this Convertible.
	**/
	public var outgoing_edges : Dynamic;
	/**
		Resolves an input into its _EndPoint.
		
		A NodeDef's input name can refer to either global NodeDefs (in the
		GraphDef's node list), a NodeDef in a function's node list, or a Function
		(in the GraphDef's function library). The name can also carry semantic
		information, depending on whether it starts with "^". This method handles
		all that logic in order to find the object to which the input name refers
		to.
		
		Args:
		  input_name: The input name to resolve.
		
		Returns:
		  The object referred to by 'input_name'.
	**/
	public function resolve_input(input_name:Dynamic):Dynamic;
	/**
		Changes the type of a given input.
		
		Args:
		  attr_name: The NodeDef attribute containing the type to change.
		  index: The index of the input type to change.
		  dtype: The type to change to.
	**/
	public function update_dtype(attr_name:Dynamic, index:Dynamic, dtype:Dynamic):Dynamic;
}