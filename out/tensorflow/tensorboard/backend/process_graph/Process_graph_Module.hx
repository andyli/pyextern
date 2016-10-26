/* This file is generated, do not edit! */
package tensorflow.tensorboard.backend.process_graph;
@:pythonImport("tensorflow.tensorboard.backend.process_graph") extern class Process_graph_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	/**
		Prepares (modifies in-place) the graph to be served to the front-end.
		
		For now, it supports filtering out attributes that are
		too large to be shown in the graph UI.
		
		Args:
		  graph: The GraphDef proto message.
		  limit_attr_size: Maximum allowed size in bytes, before the attribute
		      is considered large. Default is 1024 (1KB). Must be > 0 or None.
		      If None, there will be no filtering.
		  large_attrs_key: The attribute key that will be used for storing attributes
		      that are too large. Default is '_too_large_attrs'. Must be != None if
		      `limit_attr_size` is != None.
		
		Raises:
		  ValueError: If `large_attrs_key is None` while `limit_attr_size != None`.
		  ValueError: If `limit_attr_size` is defined, but <= 0.
	**/
	static public function prepare_graph_for_ui(graph:Dynamic, ?limit_attr_size:Dynamic, ?large_attrs_key:Dynamic):Dynamic;
	static public var print_function : Dynamic;
}