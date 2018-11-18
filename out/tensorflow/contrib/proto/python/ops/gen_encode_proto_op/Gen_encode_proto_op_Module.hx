/* This file is generated, do not edit! */
package tensorflow.contrib.proto.python.ops.gen_encode_proto_op;
@:pythonImport("tensorflow.contrib.proto.python.ops.gen_encode_proto_op") extern class Gen_encode_proto_op_Module {
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
		TODO: add doc.
		
		Args:
		  sizes: A `Tensor` of type `int32`.
		  values: A list of `Tensor` objects.
		  field_names: A list of `strings`.
		  message_type: A `string`.
		  descriptor_source: An optional `string`. Defaults to `"local://"`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `string`.
	**/
	static public function encode_proto(sizes:Dynamic, values:Dynamic, field_names:Dynamic, message_type:Dynamic, ?descriptor_source:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function encode_proto
	**/
	static public function encode_proto_eager_fallback(sizes:Dynamic, values:Dynamic, field_names:Dynamic, message_type:Dynamic, ?descriptor_source:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}