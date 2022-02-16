/* This file is generated, do not edit! */
package tensorflow.python.ops.gen_encode_proto_ops;
@:pythonImport("tensorflow.python.ops.gen_encode_proto_ops") extern class Gen_encode_proto_ops_Module {
	/**
		The op serializes protobuf messages provided in the input tensors.
		
		The types of the tensors in `values` must match the schema for the fields
		specified in `field_names`. All the tensors in `values` must have a common
		shape prefix, *batch_shape*.
		
		The `sizes` tensor specifies repeat counts for each field.  The repeat count
		(last dimension) of a each tensor in `values` must be greater than or equal
		to corresponding repeat count in `sizes`.
		
		A `message_type` name must be provided to give context for the field names.
		The actual message descriptor can be looked up either in the linked-in
		descriptor pool or a filename provided by the caller using the
		`descriptor_source` attribute.
		
		For the most part, the mapping between Proto field types and TensorFlow dtypes
		is straightforward. However, there are a few special cases:
		
		- A proto field that contains a submessage or group can only be converted
		to `DT_STRING` (the serialized submessage). This is to reduce the complexity
		of the API. The resulting string can be used as input to another instance of
		the decode_proto op.
		
		- TensorFlow lacks support for unsigned integers. The ops represent uint64
		types as a `DT_INT64` with the same twos-complement bit pattern (the obvious
		way). Unsigned int32 values can be represented exactly by specifying type
		`DT_INT64`, or using twos-complement if the caller specifies `DT_INT32` in
		the `output_types` attribute.
		
		The `descriptor_source` attribute selects the source of protocol
		descriptors to consult when looking up `message_type`. This may be:
		
		- An empty string  or "local://", in which case protocol descriptors are
		created for C++ (not Python) proto definitions linked to the binary.
		
		- A file, in which case protocol descriptors are created from the file,
		which is expected to contain a `FileDescriptorSet` serialized as a string.
		NOTE: You can build a `descriptor_source` file using the `--descriptor_set_out`
		and `--include_imports` options to the protocol compiler `protoc`.
		
		- A "bytes://<bytes>", in which protocol descriptors are created from `<bytes>`,
		which is expected to be a `FileDescriptorSet` serialized as a string.
		
		Args:
		  sizes: A `Tensor` of type `int32`.
		    Tensor of int32 with shape `[batch_shape, len(field_names)]`.
		  values: A list of `Tensor` objects.
		    List of tensors containing values for the corresponding field.
		  field_names: A list of `strings`.
		    List of strings containing proto field names.
		  message_type: A `string`. Name of the proto message type to decode.
		  descriptor_source: An optional `string`. Defaults to `"local://"`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `string`.
	**/
	static public function EncodeProto(sizes:Dynamic, values:Dynamic, field_names:Dynamic, message_type:Dynamic, ?descriptor_source:Dynamic, ?name:Dynamic):Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Dispatch(self: tensorflow.python.framework._pywrap_python_api_dispatcher.PythonAPIDispatcher, arg0: handle, arg1: handle) -> object
	**/
	static public function _dispatcher_for_encode_proto(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		The op serializes protobuf messages provided in the input tensors.
		
		The types of the tensors in `values` must match the schema for the fields
		specified in `field_names`. All the tensors in `values` must have a common
		shape prefix, *batch_shape*.
		
		The `sizes` tensor specifies repeat counts for each field.  The repeat count
		(last dimension) of a each tensor in `values` must be greater than or equal
		to corresponding repeat count in `sizes`.
		
		A `message_type` name must be provided to give context for the field names.
		The actual message descriptor can be looked up either in the linked-in
		descriptor pool or a filename provided by the caller using the
		`descriptor_source` attribute.
		
		For the most part, the mapping between Proto field types and TensorFlow dtypes
		is straightforward. However, there are a few special cases:
		
		- A proto field that contains a submessage or group can only be converted
		to `DT_STRING` (the serialized submessage). This is to reduce the complexity
		of the API. The resulting string can be used as input to another instance of
		the decode_proto op.
		
		- TensorFlow lacks support for unsigned integers. The ops represent uint64
		types as a `DT_INT64` with the same twos-complement bit pattern (the obvious
		way). Unsigned int32 values can be represented exactly by specifying type
		`DT_INT64`, or using twos-complement if the caller specifies `DT_INT32` in
		the `output_types` attribute.
		
		The `descriptor_source` attribute selects the source of protocol
		descriptors to consult when looking up `message_type`. This may be:
		
		- An empty string  or "local://", in which case protocol descriptors are
		created for C++ (not Python) proto definitions linked to the binary.
		
		- A file, in which case protocol descriptors are created from the file,
		which is expected to contain a `FileDescriptorSet` serialized as a string.
		NOTE: You can build a `descriptor_source` file using the `--descriptor_set_out`
		and `--include_imports` options to the protocol compiler `protoc`.
		
		- A "bytes://<bytes>", in which protocol descriptors are created from `<bytes>`,
		which is expected to be a `FileDescriptorSet` serialized as a string.
		
		Args:
		  sizes: A `Tensor` of type `int32`.
		    Tensor of int32 with shape `[batch_shape, len(field_names)]`.
		  values: A list of `Tensor` objects.
		    List of tensors containing values for the corresponding field.
		  field_names: A list of `strings`.
		    List of strings containing proto field names.
		  message_type: A `string`. Name of the proto message type to decode.
		  descriptor_source: An optional `string`. Defaults to `"local://"`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `string`.
	**/
	static public function encode_proto(sizes:Dynamic, values:Dynamic, field_names:Dynamic, message_type:Dynamic, ?descriptor_source:Dynamic, ?name:Dynamic):Dynamic;
	static public function encode_proto_eager_fallback(sizes:Dynamic, values:Dynamic, field_names:Dynamic, message_type:Dynamic, descriptor_source:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}