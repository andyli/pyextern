/* This file is generated, do not edit! */
package tensorflow.contrib.proto;
@:pythonImport("tensorflow.contrib.proto") extern class Proto_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __path__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		TODO: add doc.
		
		Args:
		  bytes: A `Tensor` of type `string`.
		  message_type: A `string`.
		  field_names: A list of `strings`.
		  output_types: A list of `tf.DTypes`.
		  descriptor_source: An optional `string`. Defaults to `"local://"`.
		  message_format: An optional `string`. Defaults to `"binary"`.
		  sanitize: An optional `bool`. Defaults to `False`.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (sizes, values).
		
		  sizes: A `Tensor` of type `int32`.
		  values: A list of `Tensor` objects of type `output_types`.
	**/
	static public function decode_proto(bytes:Dynamic, message_type:Dynamic, field_names:Dynamic, output_types:Dynamic, ?descriptor_source:Dynamic, ?message_format:Dynamic, ?sanitize:Dynamic, ?name:Dynamic):Dynamic;
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
}