/* This file is generated, do not edit! */
package tensorflow.python.ops.gen_parsing_ops;
@:pythonImport("tensorflow.python.ops.gen_parsing_ops") extern class Gen_parsing_ops_Module {
	static public function _InitOpDefLibrary():Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __parse_example_outputs : Dynamic;
	static public var __parse_single_sequence_example_outputs : Dynamic;
	static public var __spec__ : Dynamic;
	static public var _decode_csv_outputs : Dynamic;
	static public var _decode_json_example_outputs : Dynamic;
	static public var _decode_raw_outputs : Dynamic;
	static public var _op_def_lib : Dynamic;
	/**
		Transforms a vector of brain.Example protos (as strings) into typed tensors.
		
		Args:
		  serialized: A `Tensor` of type `string`.
		    A vector containing a batch of binary serialized Example protos.
		  names: A `Tensor` of type `string`.
		    A vector containing the names of the serialized protos.
		    May contain, for example, table key (descriptive) names for the
		    corresponding serialized protos.  These are purely useful for debugging
		    purposes, and the presence of values here has no effect on the output.
		    May also be an empty vector if no names are available.
		    If non-empty, this vector must be the same length as "serialized".
		  sparse_keys: A list of `Tensor` objects of type `string`.
		    A list of Nsparse string Tensors (scalars).
		    The keys expected in the Examples' features associated with sparse values.
		  dense_keys: A list of `Tensor` objects of type `string`.
		    A list of Ndense string Tensors (scalars).
		    The keys expected in the Examples' features associated with dense values.
		  dense_defaults: A list of `Tensor` objects with types from: `float32`, `int64`, `string`.
		    A list of Ndense Tensors (some may be empty).
		    dense_defaults[j] provides default values
		    when the example's feature_map lacks dense_key[j].  If an empty Tensor is
		    provided for dense_defaults[j], then the Feature dense_keys[j] is required.
		    The input type is inferred from dense_defaults[j], even when it's empty.
		    If dense_defaults[j] is not empty, its shape must match dense_shapes[j].
		  sparse_types: A list of `tf.DTypes` from: `tf.float32, tf.int64, tf.string`.
		    A list of Nsparse types; the data types of data in each Feature
		    given in sparse_keys.
		    Currently the ParseExample supports DT_FLOAT (FloatList),
		    DT_INT64 (Int64List), and DT_STRING (BytesList).
		  dense_shapes: A list of shapes (each a `tf.TensorShape` or list of `ints`).
		    A list of Ndense shapes; the shapes of data in each Feature
		    given in dense_keys.
		    The number of elements in the Feature corresponding to dense_key[j]
		    must always equal dense_shapes[j].NumEntries().
		    If dense_shapes[j] == (D0, D1, ..., DN) then the shape of output
		    Tensor dense_values[j] will be (|serialized|, D0, D1, ..., DN):
		    The dense outputs are just the inputs row-stacked by batch.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (sparse_indices, sparse_values, sparse_shapes, dense_values).
		  sparse_indices: A list with the same number of `Tensor` objects as `sparse_keys` of `Tensor` objects of type `int64`.
		  sparse_values: A list of `Tensor` objects of type `sparse_types`.
		  sparse_shapes: A list with the same number of `Tensor` objects as `sparse_keys` of `Tensor` objects of type `int64`.
		  dense_values: A list of `Tensor` objects. Has the same type as `dense_defaults`.
	**/
	static public function _parse_example(serialized:Dynamic, names:Dynamic, sparse_keys:Dynamic, dense_keys:Dynamic, dense_defaults:Dynamic, sparse_types:Dynamic, dense_shapes:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Transforms a scalar brain.SequenceExample proto (as strings) into typed tensors.
		
		Args:
		  serialized: A `Tensor` of type `string`.
		    A scalar containing a binary serialized SequenceExample proto.
		  feature_list_dense_missing_assumed_empty: A `Tensor` of type `string`.
		    A vector listing the
		    FeatureList keys which may be missing from the SequenceExample.  If the
		    associated FeatureList is missing, it is treated as empty.  By default,
		    any FeatureList not listed in this vector must exist in the SequenceExample.
		  context_sparse_keys: A list of `Tensor` objects of type `string`.
		    A list of Ncontext_sparse string Tensors (scalars).
		    The keys expected in the Examples' features associated with context_sparse
		    values.
		  context_dense_keys: A list of `Tensor` objects of type `string`.
		    A list of Ncontext_dense string Tensors (scalars).
		    The keys expected in the SequenceExamples' context features associated with
		    dense values.
		  feature_list_sparse_keys: A list of `Tensor` objects of type `string`.
		    A list of Nfeature_list_sparse string Tensors
		    (scalars).  The keys expected in the FeatureLists associated with sparse
		    values.
		  feature_list_dense_keys: A list of `Tensor` objects of type `string`.
		    A list of Nfeature_list_dense string Tensors (scalars).
		    The keys expected in the SequenceExamples' feature_lists associated
		    with lists of dense values.
		  context_dense_defaults: A list of `Tensor` objects with types from: `float32`, `int64`, `string`.
		    A list of Ncontext_dense Tensors (some may be empty).
		    context_dense_defaults[j] provides default values
		    when the SequenceExample's context map lacks context_dense_key[j].
		    If an empty Tensor is provided for context_dense_defaults[j],
		    then the Feature context_dense_keys[j] is required.
		    The input type is inferred from context_dense_defaults[j], even when it's
		    empty.  If context_dense_defaults[j] is not empty, its shape must match
		    context_dense_shapes[j].
		  debug_name: A `Tensor` of type `string`.
		    A scalar containing the name of the serialized proto.
		    May contain, for example, table key (descriptive) name for the
		    corresponding serialized proto.  This is purely useful for debugging
		    purposes, and the presence of values here has no effect on the output.
		    May also be an empty scalar if no name is available.
		  context_sparse_types: An optional list of `tf.DTypes` from: `tf.float32, tf.int64, tf.string`. Defaults to `[]`.
		    A list of Ncontext_sparse types; the data types of data in
		    each context Feature given in context_sparse_keys.
		    Currently the ParseSingleSequenceExample supports DT_FLOAT (FloatList),
		    DT_INT64 (Int64List), and DT_STRING (BytesList).
		  feature_list_dense_types: An optional list of `tf.DTypes` from: `tf.float32, tf.int64, tf.string`. Defaults to `[]`.
		  context_dense_shapes: An optional list of shapes (each a `tf.TensorShape` or list of `ints`). Defaults to `[]`.
		    A list of Ncontext_dense shapes; the shapes of data in
		    each context Feature given in context_dense_keys.
		    The number of elements in the Feature corresponding to context_dense_key[j]
		    must always equal context_dense_shapes[j].NumEntries().
		    The shape of context_dense_values[j] will match context_dense_shapes[j].
		  feature_list_sparse_types: An optional list of `tf.DTypes` from: `tf.float32, tf.int64, tf.string`. Defaults to `[]`.
		    A list of Nfeature_list_sparse types; the data types
		    of data in each FeatureList given in feature_list_sparse_keys.
		    Currently the ParseSingleSequenceExample supports DT_FLOAT (FloatList),
		    DT_INT64 (Int64List), and DT_STRING (BytesList).
		  feature_list_dense_shapes: An optional list of shapes (each a `tf.TensorShape` or list of `ints`). Defaults to `[]`.
		    A list of Nfeature_list_dense shapes; the shapes of
		    data in each FeatureList given in feature_list_dense_keys.
		    The shape of each Feature in the FeatureList corresponding to
		    feature_list_dense_key[j] must always equal
		    feature_list_dense_shapes[j].NumEntries().
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (context_sparse_indices, context_sparse_values, context_sparse_shapes, context_dense_values, feature_list_sparse_indices, feature_list_sparse_values, feature_list_sparse_shapes, feature_list_dense_values).
		  context_sparse_indices: A list with the same number of `Tensor` objects as `context_sparse_keys` of `Tensor` objects of type `int64`.
		  context_sparse_values: A list of `Tensor` objects of type `context_sparse_types`.
		  context_sparse_shapes: A list with the same number of `Tensor` objects as `context_sparse_keys` of `Tensor` objects of type `int64`.
		  context_dense_values: A list of `Tensor` objects. Has the same type as `context_dense_defaults`.
		  feature_list_sparse_indices: A list with the same number of `Tensor` objects as `feature_list_sparse_keys` of `Tensor` objects of type `int64`.
		  feature_list_sparse_values: A list of `Tensor` objects of type `feature_list_sparse_types`.
		  feature_list_sparse_shapes: A list with the same number of `Tensor` objects as `feature_list_sparse_keys` of `Tensor` objects of type `int64`.
		  feature_list_dense_values: A list of `Tensor` objects of type `feature_list_dense_types`.
	**/
	static public function _parse_single_sequence_example(serialized:Dynamic, feature_list_dense_missing_assumed_empty:Dynamic, context_sparse_keys:Dynamic, context_dense_keys:Dynamic, feature_list_sparse_keys:Dynamic, feature_list_dense_keys:Dynamic, context_dense_defaults:Dynamic, debug_name:Dynamic, ?context_sparse_types:Dynamic, ?feature_list_dense_types:Dynamic, ?context_dense_shapes:Dynamic, ?feature_list_sparse_types:Dynamic, ?feature_list_dense_shapes:Dynamic, ?name:Dynamic):Dynamic;
	static public var _string_to_number_outputs : Dynamic;
	/**
		Convert CSV records to tensors. Each column maps to one tensor.
		
		RFC 4180 format is expected for the CSV records.
		(https://tools.ietf.org/html/rfc4180)
		Note that we allow leading and trailing spaces with int or float field.
		
		Args:
		  records: A `Tensor` of type `string`.
		    Each string is a record/row in the csv and all records should have
		    the same format.
		  record_defaults: A list of `Tensor` objects with types from: `float32`, `int32`, `int64`, `string`.
		    One tensor per column of the input record, with either a
		    scalar default value for that column or empty if the column is required.
		  field_delim: An optional `string`. Defaults to `","`.
		    delimiter to separate fields in a record.
		  name: A name for the operation (optional).
		
		Returns:
		  A list of `Tensor` objects. Has the same type as `record_defaults`.
		  Each tensor will have the same shape as records.
	**/
	static public function decode_csv(records:Dynamic, record_defaults:Dynamic, ?field_delim:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Convert JSON-encoded Example records to binary protocol buffer strings.
		
		This op translates a tensor containing Example records, encoded using
		the [standard JSON
		mapping](https://developers.google.com/protocol-buffers/docs/proto3#json),
		into a tensor containing the same records encoded as binary protocol
		buffers. The resulting tensor can then be fed to any of the other
		Example-parsing ops.
		
		Args:
		  json_examples: A `Tensor` of type `string`.
		    Each string is a JSON object serialized according to the JSON
		    mapping of the Example proto.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `string`.
		  Each string is a binary Example protocol buffer corresponding
		  to the respective element of `json_examples`.
	**/
	static public function decode_json_example(json_examples:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Reinterpret the bytes of a string as a vector of numbers.
		
		Args:
		  bytes: A `Tensor` of type `string`.
		    All the elements must have the same length.
		  out_type: A `tf.DType` from: `tf.float32, tf.float64, tf.int32, tf.uint8, tf.int16, tf.int8, tf.int64`.
		  little_endian: An optional `bool`. Defaults to `True`.
		    Whether the input `bytes` are in little-endian order.
		    Ignored for `out_type` values that are stored in a single byte like
		    `uint8`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `out_type`.
		  A Tensor with one more dimension than the input `bytes`.  The
		  added dimension will have size equal to the length of the elements
		  of `bytes` divided by the number of bytes to represent `out_type`.
	**/
	static public function decode_raw(bytes:Dynamic, out_type:Dynamic, ?little_endian:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Converts each string in the input Tensor to the specified numeric type.
		
		(Note that int32 overflow results in an error while float overflow
		results in a rounded value.)
		
		Args:
		  string_tensor: A `Tensor` of type `string`.
		  out_type: An optional `tf.DType` from: `tf.float32, tf.int32`. Defaults to `tf.float32`.
		    The numeric type to interpret each string in string_tensor as.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `out_type`.
		  A Tensor of the same shape as the input `string_tensor`.
	**/
	static public function string_to_number(string_tensor:Dynamic, ?out_type:Dynamic, ?name:Dynamic):Dynamic;
}