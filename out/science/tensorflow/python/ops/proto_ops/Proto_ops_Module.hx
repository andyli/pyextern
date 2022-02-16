/* This file is generated, do not edit! */
package tensorflow.python.ops.proto_ops;
@:pythonImport("tensorflow.python.ops.proto_ops") extern class Proto_ops_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var absolute_import : Dynamic;
	/**
		The op extracts fields from a serialized protocol buffers message into tensors.
		
		The `decode_proto` op extracts fields from a serialized protocol buffers
		message into tensors.  The fields in `field_names` are decoded and converted
		to the corresponding `output_types` if possible.
		
		A `message_type` name must be provided to give context for the field names.
		The actual message descriptor can be looked up either in the linked-in
		descriptor pool or a filename provided by the caller using the
		`descriptor_source` attribute.
		
		Each output tensor is a dense tensor. This means that it is padded to hold
		the largest number of repeated elements seen in the input minibatch. (The
		shape is also padded by one to prevent zero-sized dimensions). The actual
		repeat counts for each example in the minibatch can be found in the `sizes`
		output. In many cases the output of `decode_proto` is fed immediately into
		tf.squeeze if missing values are not a concern. When using tf.squeeze, always
		pass the squeeze dimension explicitly to avoid surprises.
		
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
		
		Both binary and text proto serializations are supported, and can be
		chosen using the `format` attribute.
		
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
		  bytes: A `Tensor` of type `string`.
		    Tensor of serialized protos with shape `batch_shape`.
		  message_type: A `string`. Name of the proto message type to decode.
		  field_names: A list of `strings`.
		    List of strings containing proto field names. An extension field can be decoded
		    by using its full name, e.g. EXT_PACKAGE.EXT_FIELD_NAME.
		  output_types: A list of `tf.DTypes`.
		    List of TF types to use for the respective field in field_names.
		  descriptor_source: An optional `string`. Defaults to `"local://"`.
		    Either the special value `local://` or a path to a file containing
		    a serialized `FileDescriptorSet`.
		  message_format: An optional `string`. Defaults to `"binary"`.
		    Either `binary` or `text`.
		  sanitize: An optional `bool`. Defaults to `False`.
		    Whether to sanitize the result or not.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (sizes, values).
		
		  sizes: A `Tensor` of type `int32`.
		  values: A list of `Tensor` objects of type `output_types`.
	**/
	static public function decode_proto(bytes:Dynamic, message_type:Dynamic, field_names:Dynamic, output_types:Dynamic, ?descriptor_source:Dynamic, ?message_format:Dynamic, ?sanitize:Dynamic, ?name:Dynamic):Dynamic;
	static public var division : Dynamic;
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
	static public var print_function : Dynamic;
}