/* This file is generated, do not edit! */
package tensorflow.python.saved_model.save;
@:pythonImport("tensorflow.python.saved_model.save", "_AugmentedGraphView") extern class _AugmentedGraphView {
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function __deepcopy__(memo:Dynamic):Dynamic;
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
		Configure the graph view.
		
		Args:
		  root: A `Trackable` object whose variables (including the variables
		    of dependencies, recursively) should be saved. May be a weak reference.
		  saveables_cache: A dictionary mapping `Trackable` objects ->
		    attribute names -> SaveableObjects, used to avoid re-creating
		    SaveableObjects when graph building.
		  attached_dependencies: Dependencies to attach to the root object. Used
		    when saving a Checkpoint with a defined root object.
	**/
	@:native("__init__")
	public function ___init__(root:Dynamic):Dynamic;
	/**
		Configure the graph view.
		
		Args:
		  root: A `Trackable` object whose variables (including the variables
		    of dependencies, recursively) should be saved. May be a weak reference.
		  saveables_cache: A dictionary mapping `Trackable` objects ->
		    attribute names -> SaveableObjects, used to avoid re-creating
		    SaveableObjects when graph building.
		  attached_dependencies: Dependencies to attach to the root object. Used
		    when saving a Checkpoint with a defined root object.
	**/
	public function new(root:Dynamic):Void;
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
		Create SaveableObjects and corresponding SerializedTensor protos.
	**/
	public function _add_attributes_to_object_graph(trackable_objects:Dynamic, object_graph_proto:Dynamic, node_ids:Dynamic, object_names:Dynamic, object_map:Dynamic, call_with_mapped_captures:Dynamic):Dynamic;
	/**
		Find shortest paths to all dependencies of self.root.
	**/
	public function _breadth_first_traversal():Dynamic;
	/**
		Name non-slot `Trackable`s and add them to `object_graph_proto`.
	**/
	public function _fill_object_graph_proto(trackable_objects:Dynamic, node_ids:Dynamic, slot_variables:Dynamic, ?object_graph_proto:Dynamic):Dynamic;
	/**
		Create SaveableObjects and protos for gathered objects.
	**/
	public function _serialize_gathered_objects(trackable_objects:Dynamic, path_to_root:Dynamic, ?object_map:Dynamic, ?call_with_mapped_captures:Dynamic):Dynamic;
	static public var _tf_api_names : Dynamic;
	static public var _tf_api_names_v1 : Dynamic;
	/**
		Attach an object to `parent_node`, overriding any existing dependency.
	**/
	public function add_object(parent_node:Dynamic, name_in_parent:Dynamic, subgraph_root:Dynamic):Dynamic;
	/**
		Returns list of dependencies that should be saved in the checkpoint.
		
		These dependencies are not tracked by root, but are in the checkpoint.
		This is defined when the user creates a Checkpoint with both root and kwargs
		set.
		
		Returns:
		  A list of TrackableReferences.
	**/
	public var attached_dependencies : Dynamic;
	/**
		Creates SaveableObjects with the current object graph frozen.
	**/
	public function frozen_saveable_objects(?object_map:Dynamic, ?to_graph:Dynamic, ?call_with_mapped_captures:Dynamic):Dynamic;
	/**
		Overrides a parent method to include `add_object` objects.
	**/
	public function list_dependencies(obj:Dynamic):Dynamic;
	public function list_extra_dependencies(obj:Dynamic):Dynamic;
	public function list_functions(obj:Dynamic):Dynamic;
	/**
		Traverse the object graph and list all accessible objects.
	**/
	public function list_objects():Dynamic;
	public function objects_ids_and_slot_variables():Dynamic;
	/**
		Traverse the object graph and list all accessible objects.
		
		Looks for `Trackable` objects which are dependencies of
		`root_trackable`. Includes slot variables only if the variable they are
		slotting for and the optimizer are dependencies of `root_trackable`
		(i.e. if they would be saved with a checkpoint).
		
		Returns:
		  A tuple of (trackable objects, paths from root for each object,
		              object -> node id, slot variables, object_names)
	**/
	public function objects_ids_and_slot_variables_and_paths():Dynamic;
	public var root : Dynamic;
	/**
		Maps Trackable objects -> attribute names -> list(SaveableObjects).
		
		Used to avoid re-creating SaveableObjects when graph building. None when
		executing eagerly.
		
		Returns:
		  The cache (an object-identity dictionary), or None if caching is disabled.
	**/
	public var saveables_cache : Dynamic;
	/**
		Determine checkpoint keys for variables and build a serialized graph.
		
		Non-slot variables are keyed based on a shortest path from the root saveable
		to the object which owns the variable (i.e. the one which called
		`Trackable._add_variable` to create it).
		
		Slot variables are keyed based on a shortest path to the variable being
		slotted for, a shortest path to their optimizer, and the slot name.
		
		Returns:
		  A tuple of (named_variables, object_graph_proto, feed_additions):
		    named_variables: A dictionary mapping names to variable objects.
		    object_graph_proto: A TrackableObjectGraph protocol buffer
		      containing the serialized object graph and variable references.
		    feed_additions: A dictionary mapping from Tensors to values which should
		      be fed when saving.
		
		Raises:
		  ValueError: If there are invalid characters in an optimizer's slot names.
	**/
	public function serialize_object_graph():Dynamic;
}