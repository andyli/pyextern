/* This file is generated, do not edit! */
package tensorflow.python.keras.saving.saved_model.load;
@:pythonImport("tensorflow.python.keras.saving.saved_model.load", "KerasObjectLoader") extern class KerasObjectLoader {
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
	public function ___init__(metadata:Dynamic, object_graph_def:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(metadata:Dynamic, object_graph_def:Dynamic):Void;
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
		Recursively records objects recreated from config.
	**/
	public function _add_children_recreated_from_config(obj:Dynamic, proto:Dynamic, node_id:Dynamic):Dynamic;
	/**
		Creates edges for nodes that are recreated from config.
	**/
	public function _config_node_setter(setter:Dynamic):Dynamic;
	/**
		Returns the node ids of each layer in a Sequential/Functional model.
	**/
	public function _get_child_layer_node_ids(node_id:Dynamic):Dynamic;
	/**
		Infers input shape of layer from SavedModel functions.
	**/
	public function _infer_inputs(layer_node_id:Dynamic, ?convert_to_shapes:Dynamic):Dynamic;
	/**
		Add edges for all nodes that are not waiting on initialization.
	**/
	public function _load_edges():Dynamic;
	/**
		Load a single layer from a SavedUserObject proto.
	**/
	public function _load_layer(node_id:Dynamic, identifier:Dynamic, metadata:Dynamic):Dynamic;
	/**
		Reconstructs the network structure of all models.
	**/
	public function _reconstruct_all_models():Dynamic;
	/**
		Reconstructs the network structure.
	**/
	public function _reconstruct_model(model_id:Dynamic, model:Dynamic, layers:Dynamic):Dynamic;
	/**
		Revives a layer/model from config, or returns None.
	**/
	public function _revive_from_config(identifier:Dynamic, metadata:Dynamic, node_id:Dynamic):Dynamic;
	/**
		Revives a graph network from config.
	**/
	public function _revive_graph_network(identifier:Dynamic, metadata:Dynamic, node_id:Dynamic):Dynamic;
	/**
		Revives a layer/custom model from config; returns None if infeasible.
	**/
	public function _revive_layer_or_model_from_config(metadata:Dynamic, node_id:Dynamic):Dynamic;
	/**
		Revives a metric object using the config saved in the metadata.
	**/
	public function _revive_metric_from_config(metadata:Dynamic):Dynamic;
	/**
		Returns node id of child node.
		
		A helper method for traversing the object graph proto.
		
		As an example, say that the object graph proto in the SavedModel contains an
		object with the following child and grandchild attributes:
		
		`parent.child_a.child_b`
		
		This method can be used to retrieve the node id of `child_b` using the
		parent's node id by calling:
		
		`_search_for_child_node(parent_id, ['child_a', 'child_b'])`.
		
		Args:
		  parent_id: node id of parent node
		  path_to_child: list of children names.
		
		Returns:
		  node_id of child, or None if child isn't found.
	**/
	public function _search_for_child_node(parent_id:Dynamic, path_to_child:Dynamic):Dynamic;
	/**
		Attempts to build the layer.
	**/
	public function _try_build_layer(obj:Dynamic, node_id:Dynamic, build_input_shape:Dynamic):Dynamic;
	/**
		Removes layer from blocking model reconstruction.
	**/
	public function _unblock_model_reconstruction(layer_id:Dynamic, layer:Dynamic):Dynamic;
	/**
		Removes tracked references that are only used when loading the model.
	**/
	public function del_tracking():Dynamic;
	/**
		Finish setting up Keras objects.
		
		This function is executed after all objects and functions have been created.
		Call functions and losses are attached to each layer, and once all layers
		have been fully set up, graph networks are initialized.
		
		Subclassed models that are revived from the SavedModel are treated like
		layers, and have their call/loss functions attached here.
	**/
	public function finalize_objects():Dynamic;
	public function get_path(node_id:Dynamic):Dynamic;
	/**
		Load all layer nodes from the metadata.
	**/
	public function load_layers(?compile:Dynamic):Dynamic;
}