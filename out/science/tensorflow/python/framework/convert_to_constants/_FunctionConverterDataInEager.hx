/* This file is generated, do not edit! */
package tensorflow.python.framework.convert_to_constants;
@:pythonImport("tensorflow.python.framework.convert_to_constants", "_FunctionConverterDataInEager") extern class _FunctionConverterDataInEager {
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
		Creates the conversion data for the given function.
		
		Args:
		  func: ConcreteFunction.
		  lower_control_flow: Boolean indicating whether or not to lower control
		    flow ops such as If and While.
		  aggressive_inlining: Boolean indicating whether or not to do aggressive
		    function inlining (might be unsafe if function has stateful ops, not
		    properly connected to control outputs).
		  variable_names_allowlist: The set of variable names to convert (by
		    default, all variables are converted).
		  variable_names_denylist: The set of variable names to omit converting to
		    constants.
	**/
	@:native("__init__")
	public function ___init__(func:Dynamic, lower_control_flow:Dynamic, aggressive_inlining:Dynamic, ?variable_names_allowlist:Dynamic, ?variable_names_denylist:Dynamic):Dynamic;
	/**
		Creates the conversion data for the given function.
		
		Args:
		  func: ConcreteFunction.
		  lower_control_flow: Boolean indicating whether or not to lower control
		    flow ops such as If and While.
		  aggressive_inlining: Boolean indicating whether or not to do aggressive
		    function inlining (might be unsafe if function has stateful ops, not
		    properly connected to control outputs).
		  variable_names_allowlist: The set of variable names to convert (by
		    default, all variables are converted).
		  variable_names_denylist: The set of variable names to omit converting to
		    constants.
	**/
	public function new(func:Dynamic, lower_control_flow:Dynamic, aggressive_inlining:Dynamic, ?variable_names_allowlist:Dynamic, ?variable_names_denylist:Dynamic):Void;
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
		Builds the list of NodeDefs in the GraphDef.
		
		This list consists of all NodeDefs in the main graph as well as all control
		flow NodeDefs in the functions.
		
		The remaining NodeDefs in the functions are not included because the op
		names
		are not unique and the variables are handled differently than the main
		graph.
		The control flow ops need to be extracted because they are need their
		attributes to be updated similar to the control flow ops in the main graph.
	**/
	public function _build_node_defs_list():Dynamic;
	/**
		Caches the tensor data for all Placeholders in the given function.
	**/
	public function _build_tensor_data():Dynamic;
	/**
		Returns the value in the tensor. Must be implemented in sub-classes.
	**/
	public function _eval(tensor:Dynamic):Dynamic;
	/**
		Checks whether to convert the given variable name to a constant.
	**/
	public function _should_convert(name:Dynamic):Dynamic;
	/**
		The graph to be converted.
	**/
	public var graph_def : Dynamic;
	/**
		All the node defs in the graph to be converted.
		
		Returns:
		  A map from node name to the NodeDef for all NodeDefs in the graph, as well
		  as all control flow NodeDefs in the functions.
	**/
	public var node_defs : Dynamic;
	/**
		A map from tensor name to its converted _TensorData.
	**/
	public var tensor_data : Dynamic;
}