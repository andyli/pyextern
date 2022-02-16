/* This file is generated, do not edit! */
package tensorflow.python.saved_model.save;
@:pythonImport("tensorflow.python.saved_model.save", "_SaveableView") extern class _SaveableView {
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
		Initializes a SaveableView.
		
		Args:
		  checkpoint_view: A GraphView object.
		  options: A SaveOptions instance.
		  wrapped_functions: Dictionary that maps concrete functions to functions
		    that do not capture cached variable values.
	**/
	@:native("__init__")
	public function ___init__(checkpoint_view:Dynamic, options:Dynamic, ?wrapped_functions:Dynamic):Dynamic;
	/**
		Initializes a SaveableView.
		
		Args:
		  checkpoint_view: A GraphView object.
		  options: A SaveOptions instance.
		  wrapped_functions: Dictionary that maps concrete functions to functions
		    that do not capture cached variable values.
	**/
	public function new(checkpoint_view:Dynamic, options:Dynamic, ?wrapped_functions:Dynamic):Void;
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
		Adds function to serialize to object graph.
	**/
	public function _add_function_to_graph(_function:Dynamic):Dynamic;
	/**
		Creates graph with nodes for trackable objects and functions.
		
		Adds functions for each trackable object to `self.nodes` and associated
		concrete functions to `self.concrete_functions` for serialization.
	**/
	public function _initialize_nodes_and_concrete_functions():Dynamic;
	/**
		Generates all checkpoint save/restore functions.
		
		The save and restore functions are generated in the eager context (or in the
		user's Graph/Session) before being copied to the exported GraphDef. These
		functions record the ops for saving/restoring the entire object or
		individual objects (e.g. variables and hash tables).
		
		The global save and restore functions are generated for compatibility with
		TF1 and loading from C++, and is saved in the `MetaGraphDef.saver_def`.
		
		The individual functions are generated for the Python TF2 use case, where
		users use the loaded SavedModel as-is, or compose new models using parts
		of the object loaded from the SavedModel. These functions are recorded in
		the `saveable_objects` map in the `SavedObject` proto.
	**/
	public function _initialize_save_and_restore_functions():Dynamic;
	/**
		Trace concrete functions to force side-effects.
		
		Lists the concrete functions in order to:
		  - populate the cache for functions that have an input_signature
		    and have not been called
		  - force side effects of creation of concrete functions, e.g. create
		    variables on first run.
	**/
	public function _trace_all_concrete_functions():Dynamic;
	public function add_capture_and_node(capture:Dynamic, node:Dynamic):Dynamic;
	public var concrete_and_gradient_functions : Dynamic;
	/**
		Populate the nodes, children and slot_variables of a SavedObjectGraph.
	**/
	public function fill_object_graph_proto(proto:Dynamic):Dynamic;
	/**
		Makes new resource handle ops corresponding to existing resource tensors.
		
		Creates resource handle ops in the current default graph, whereas
		`accessible_objects` will be from an eager context. Resource mapping adds
		resource handle ops to the main GraphDef of a SavedModel, which allows the
		C++ loader API to interact with resources.
		
		Returns:
		  A tuple of (object_map, resource_map, asset_info):
		    object_map: A dictionary mapping from object in `accessible_objects` to
		      replacement objects created to hold the new resource tensors.
		    resource_map: A dictionary mapping from resource tensors extracted from
		      `accessible_objects` to newly created resource tensors.
		    asset_info: An _AssetInfo tuple describing external assets referenced
		      from accessible_objects.
	**/
	public function map_resources():Dynamic;
	public var root : Dynamic;
}