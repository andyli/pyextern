/* This file is generated, do not edit! */
package tensorflow.contrib.input_pipeline.ops.gen_input_pipeline_ops;
@:pythonImport("tensorflow.contrib.input_pipeline.ops.gen_input_pipeline_ops") extern class Gen_input_pipeline_ops_Module {
	static public function _InitOpDefLibrary(op_list_proto_bytes:Dynamic):Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var _op_def_lib : Dynamic;
	/**
		Decorator for marking endpoints deprecated.
		
		This decorator does not print deprecation messages.
		TODO(annarev): eventually start printing deprecation warnings when
		@deprecation_endpoints decorator is added.
		
		Args:
		  *args: Deprecated endpoint names.
		
		Returns:
		  A function that takes symbol as an argument and adds
		  _tf_deprecated_api_names to that symbol.
		  _tf_deprecated_api_names would be set to a list of deprecated
		  endpoint names for the symbol.
	**/
	static public function deprecated_endpoints(?args:python.VarArgs<Dynamic>):Dynamic;
	/**
		Takes a list and returns the next based on a counter in a round-robin fashion.
		
		Returns the element in the list at the new position of the counter, so if you
		want to circle the list around start by setting the counter value = -1.
		
		Args:
		  list: A `Tensor` of type `string`. A list of strings
		  counter: A `Tensor` of type mutable `int64`.
		    A reference to an int64 variable
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `string`.
	**/
	static public function obtain_next(list:Dynamic, counter:Dynamic, ?name:Dynamic):Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}