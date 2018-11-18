/* This file is generated, do not edit! */
package tensorflow.contrib.proto.python.ops.encode_proto_op;
@:pythonImport("tensorflow.contrib.proto.python.ops.encode_proto_op") extern class Encode_proto_op_Module {
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
	static public var print_function : Dynamic;
}