/* This file is generated, do not edit! */
package tensorflow.python.saved_model.load;
@:pythonImport("tensorflow.python.saved_model.load", "Loader") extern class Loader {
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
	public function ___init__(object_graph_proto:Dynamic, saved_model_proto:Dynamic, export_dir:Dynamic, ckpt_options:Dynamic, save_options:Dynamic, filters:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(object_graph_proto:Dynamic, saved_model_proto:Dynamic, export_dir:Dynamic, ckpt_options:Dynamic, save_options:Dynamic, filters:Dynamic):Void;
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
		Adds edges from an object to its children.
	**/
	public function _add_object_graph_edges(proto:Dynamic, node_id:Dynamic):Dynamic;
	/**
		Maps all string node paths in node_filters to the int node ids.
	**/
	public function _convert_node_paths_to_ints():Dynamic;
	public function _create_saveable_object_factories():Dynamic;
	public function _find_node_child(node_id:Dynamic, child_name:Dynamic, path:Dynamic):Dynamic;
	public function _get_tensor_from_fn(proto:Dynamic):Dynamic;
	/**
		Resolves a node id into a tensor to be captured for a function.
	**/
	public function _get_tensor_from_node(node_id:Dynamic, fn_name:Dynamic):Dynamic;
	public function _initialize_loaded_nodes():Dynamic;
	public function _iter_all_nodes():Dynamic;
	/**
		Loads all nodes and functions from the SavedModel and their edges.
	**/
	public function _load_all():Dynamic;
	/**
		Adds edges from objects to other objects and functions.
	**/
	public function _load_edges():Dynamic;
	/**
		Load all saved objects.
	**/
	public function _load_nodes():Dynamic;
	/**
		Creates a Python object from a SavedObject protocol buffer.
		
		Args:
		  proto: a SavedObject proto
		  node_id: int, the index of this object in the SavedObjectGraph node list.
		
		Returns:
		  The recreated object, and the set-attribute function for reconnecting
		  the trackable children.
	**/
	public function _recreate(proto:Dynamic, node_id:Dynamic):Dynamic;
	public function _recreate_asset(proto:Dynamic):Dynamic;
	public function _recreate_bare_concrete_function(proto:Dynamic):Dynamic;
	public function _recreate_base_user_object(?proto:Dynamic, ?node_id:Dynamic):Dynamic;
	public function _recreate_constant(proto:Dynamic):Dynamic;
	/**
		Creates a Python object from a SavedObject protocol buffer.
	**/
	public function _recreate_default(proto:Dynamic, node_id:Dynamic):Dynamic;
	public function _recreate_function(proto:Dynamic):Dynamic;
	public function _recreate_resource(proto:Dynamic):Dynamic;
	/**
		Instantiates a SavedUserObject.
	**/
	public function _recreate_user_object(proto:Dynamic, node_id:Dynamic):Dynamic;
	public function _recreate_variable(proto:Dynamic):Dynamic;
	/**
		Load state from checkpoint into the deserialized objects.
	**/
	public function _restore_checkpoint():Dynamic;
	/**
		Traverses through the object graph to get the IDs of all nodes to load.
		
		As a side-effect, if node_filters is a dictionary that contains already-
		created objects, then the dependencies tracked by those objects will be
		added to node_filters.
		
		Returns:
		  List of all nodes to load, or None if all nodes should be loaded.
	**/
	public function _retrieve_all_filtered_nodes():Dynamic;
	/**
		Setup captures and variables in restored functions.
	**/
	public function _setup_functions_captures():Dynamic;
	/**
		Setup structure for inputs and outputs of restored functions.
	**/
	public function _setup_functions_structures():Dynamic;
	/**
		Rewrite func names in the debug info by using the concrete func names.
	**/
	public function adjust_debug_info_func_names(debug_info:Dynamic):Dynamic;
	public function get(node_id:Dynamic):Dynamic;
}