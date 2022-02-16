/* This file is generated, do not edit! */
package tensorflow.python.framework.c_api_util;
@:pythonImport("tensorflow.python.framework.c_api_util") extern class C_api_util_Module {
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
		Generator that yields newly-added TF_Operations in `graph`.
		
		Specifically, yields TF_Operations that don't have associated Operations in
		`graph`. This is useful for processing nodes added by the C API.
		
		Args:
		  graph: Graph
		
		Yields:
		  wrapped TF_Operation
	**/
	static public function new_tf_operations(graph:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Context manager that creates and deletes TF_Buffer.
		
		Example usage:
		  with tf_buffer() as buf:
		    # get serialized graph def into buf
		    ...
		    proto_data = c_api.TF_GetBuffer(buf)
		    graph_def.ParseFromString(compat.as_bytes(proto_data))
		  # buf has been deleted
		
		  with tf_buffer(some_string) as buf:
		    c_api.TF_SomeFunction(buf)
		  # buf has been deleted
		
		Args:
		  data: An optional `bytes`, `str`, or `unicode` object. If not None, the
		    yielded buffer will contain this data.
		
		Yields:
		  Created TF_Buffer
	**/
	static public function tf_buffer(?data:Dynamic):Dynamic;
	/**
		Generator that yields every TF_Operation in `graph`.
		
		Args:
		  graph: Graph
		
		Yields:
		  wrapped TF_Operation
	**/
	static public function tf_operations(graph:Dynamic):Dynamic;
	/**
		Returns a wrapped TF_Output with specified operation and index.
		
		Args:
		  c_op: wrapped TF_Operation
		  index: integer
		
		Returns:
		  Wrapped TF_Output
	**/
	static public function tf_output(c_op:Dynamic, index:Dynamic):Dynamic;
}