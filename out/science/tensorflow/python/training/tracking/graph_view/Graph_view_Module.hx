/* This file is generated, do not edit! */
package tensorflow.python.training.tracking.graph_view;
@:pythonImport("tensorflow.python.training.tracking.graph_view") extern class Graph_view_Module {
	static public var _ESCAPE_CHAR : Dynamic;
	static public var _OBJECT_ATTRIBUTES_NAME : Dynamic;
	static public var _OPTIMIZER_SLOTS_NAME : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _escape_local_name(name:Dynamic):Dynamic;
	static public function _object_prefix_from_path(path_to_root:Dynamic):Dynamic;
	/**
		Gather and name slot variables.
	**/
	static public function _serialize_slot_variables(trackable_objects:Dynamic, node_ids:Dynamic, object_names:Dynamic):Dynamic;
	/**
		Make a function for naming slot variables in an optimizer.
	**/
	static public function _slot_variable_naming_for_optimizer(optimizer_path:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	/**
		Gets a map of saveable factories and corresponding checkpoint keys.
		
		Args:
		  object_names: a dictionary that maps `Trackable` objects to auto-generated
		    string names.
		Returns:
		  A dictionary mapping Trackables -> a list of _CheckpointFactoryData.
	**/
	static public function get_checkpoint_factories_and_keys(object_names:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}