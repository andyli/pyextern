/* This file is generated, do not edit! */
package tensorflow.python.ops.parsing_ops;
@:pythonImport("tensorflow.python.ops.parsing_ops") extern class Parsing_ops_Module {
	/**
		Shape function for the DecodeCSV op.
	**/
	static public function _DecodeCSVShape(op:Dynamic):Dynamic;
	/**
		Shape function for the DecodeRaw op.
	**/
	static public function _DecodeRawShape(op:Dynamic):Dynamic;
	/**
		Shape function for the ParseExample op.
	**/
	static public function _ParseExampleShape(op:Dynamic):Dynamic;
	/**
		Shape function for the ParseExample op.
	**/
	static public function _ParseSingleSequenceExampleShape(op:Dynamic):Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Split feature tuples into raw params used by `gen_parsing_ops`.
		
		Args:
		  features: A `dict` mapping feature keys to objects of a type in `types`.
		  types: Type of features to allow, among `FixedLenFeature`, `VarLenFeature`,
		    and `FixedLenSequenceFeature`.
		
		Returns:
		  Tuple of `sparse_keys`, `sparse_types`, `dense_keys`, `dense_types`,
		    `dense_defaults`, `dense_shapes`.
		
		Raises:
		  ValueError: if `features` contains an item not in `types`, or an invalid
		      feature.
	**/
	static public function _features_to_raw_params(features:Dynamic, types:Dynamic):Dynamic;
	/**
		Parses `Example` protos.
		
		Args:
		  serialized: A vector (1-D Tensor) of strings, a batch of binary
		    serialized `Example` protos.
		  names: A vector (1-D Tensor) of strings (optional), the names of
		    the serialized protos.
		  sparse_keys: A list of string keys in the examples' features.
		    The results for these keys will be returned as `SparseTensor` objects.
		  sparse_types: A list of `DTypes` of the same length as `sparse_keys`.
		    Only `tf.float32` (`FloatList`), `tf.int64` (`Int64List`),
		    and `tf.string` (`BytesList`) are supported.
		  dense_keys: A list of string keys in the examples' features.
		    The results for these keys will be returned as `Tensor`s
		  dense_types: A list of DTypes of the same length as `dense_keys`.
		    Only `tf.float32` (`FloatList`), `tf.int64` (`Int64List`),
		    and `tf.string` (`BytesList`) are supported.
		  dense_defaults: A dict mapping string keys to `Tensor`s.
		    The keys of the dict must match the dense_keys of the feature.
		  dense_shapes: A list of tuples with the same length as `dense_keys`.
		    The shape of the data for each dense feature referenced by `dense_keys`.
		    Required for any input tensors identified by `dense_keys` whose shapes are
		    anything other than `[]` or `[1]`.
		  name: A name for this operation (optional).
		
		Returns:
		  A `dict` mapping keys to `Tensor`s and `SparseTensor`s.
		
		Raises:
		  ValueError: If sparse and dense key sets intersect, or input lengths do not
		    match up.
	**/
	static public function _parse_example_raw(serialized:Dynamic, ?names:Dynamic, ?sparse_keys:Dynamic, ?sparse_types:Dynamic, ?dense_keys:Dynamic, ?dense_types:Dynamic, ?dense_defaults:Dynamic, ?dense_shapes:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Parses a single `Example` proto.
		
		Args:
		  serialized: A scalar string Tensor, a single serialized Example.
		    See `_parse_example_raw` documentation for more details.
		  names: (Optional) A scalar string Tensor, the associated name.
		    See `_parse_example_raw` documentation for more details.
		  sparse_keys: See `_parse_example_raw` documentation for more details.
		  sparse_types: See `_parse_example_raw` documentation for more details.
		  dense_keys: See `_parse_example_raw` documentation for more details.
		  dense_types: See `_parse_example_raw` documentation for more details.
		  dense_defaults: See `_parse_example_raw` documentation for more details.
		  dense_shapes: See `_parse_example_raw` documentation for more details.
		  name: A name for this operation (optional).
		
		Returns:
		  A `dict` mapping feature keys to `Tensor` and `SparseTensor` values.
		
		Raises:
		  ValueError: if any feature is invalid.
	**/
	static public function _parse_single_example_raw(serialized:Dynamic, ?names:Dynamic, ?sparse_keys:Dynamic, ?sparse_types:Dynamic, ?dense_keys:Dynamic, ?dense_types:Dynamic, ?dense_defaults:Dynamic, ?dense_shapes:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Parses a single `SequenceExample` proto.
		
		Args:
		  serialized: A scalar (0-D Tensor) of type string, a single binary
		    serialized `SequenceExample` proto.
		  context_sparse_keys: A list of string keys in the `SequenceExample`'s
		    features.  The results for these keys will be returned as
		    `SparseTensor` objects.
		  context_sparse_types: A list of `DTypes`, the same length as `sparse_keys`.
		    Only `tf.float32` (`FloatList`), `tf.int64` (`Int64List`),
		    and `tf.string` (`BytesList`) are supported.
		  context_dense_keys: A list of string keys in the examples' features.
		    The results for these keys will be returned as `Tensor`s
		  context_dense_types: A list of DTypes, same length as `context_dense_keys`.
		    Only `tf.float32` (`FloatList`), `tf.int64` (`Int64List`),
		    and `tf.string` (`BytesList`) are supported.
		  context_dense_defaults: A dict mapping string keys to `Tensor`s.
		    The keys of the dict must match the context_dense_keys of the feature.
		  context_dense_shapes: A list of tuples, same length as `context_dense_keys`.
		    The shape of the data for each context_dense feature referenced by
		    `context_dense_keys`.  Required for any input tensors identified by
		    `context_dense_keys` whose shapes are anything other than `[]` or `[1]`.
		  feature_list_sparse_keys: A list of string keys in the `SequenceExample`'s
		    feature_lists.  The results for these keys will be returned as
		    `SparseTensor` objects.
		  feature_list_sparse_types: A list of `DTypes`, same length as `sparse_keys`.
		    Only `tf.float32` (`FloatList`), `tf.int64` (`Int64List`),
		    and `tf.string` (`BytesList`) are supported.
		  feature_list_dense_keys: A list of string keys in the `SequenceExample`'s
		    features_lists. The results for these keys will be returned as `Tensor`s.
		  feature_list_dense_types: A list of `DTypes`, same length as
		    `feature_list_dense_keys`.  Only `tf.float32` (`FloatList`),
		    `tf.int64` (`Int64List`), and `tf.string` (`BytesList`) are supported.
		  feature_list_dense_shapes: A list of tuples, same length as
		    `feature_list_dense_keys`.  The shape of the data for each
		    `FeatureList` feature referenced by `feature_list_dense_keys`.
		  feature_list_dense_defaults: A dict mapping key strings to values.
		    The only currently allowed value is `None`.  Any key appearing
		    in this dict with value `None` is allowed to be missing from the
		    `SequenceExample`.  If missing, the key is treated as zero-length.
		  debug_name: A scalar (0-D Tensor) of strings (optional), the name of
		    the serialized proto.
		  name: A name for this operation (optional).
		
		Returns:
		  A tuple of two `dict`s, each mapping keys to `Tensor`s and `SparseTensor`s.
		  The first dict contains the context key/values.
		  The second dict contains the feature_list key/values.
		
		Raises:
		  ValueError: If context_sparse and context_dense key sets intersect,
		    if input lengths do not match up, or if a value in
		    feature_list_dense_defaults is not None.
		  TypeError: if feature_list_dense_defaults is not either None or a dict.
	**/
	static public function _parse_single_sequence_example_raw(serialized:Dynamic, ?context_sparse_keys:Dynamic, ?context_sparse_types:Dynamic, ?context_dense_keys:Dynamic, ?context_dense_types:Dynamic, ?context_dense_defaults:Dynamic, ?context_dense_shapes:Dynamic, ?feature_list_sparse_keys:Dynamic, ?feature_list_sparse_types:Dynamic, ?feature_list_dense_keys:Dynamic, ?feature_list_dense_types:Dynamic, ?feature_list_dense_shapes:Dynamic, ?feature_list_dense_defaults:Dynamic, ?debug_name:Dynamic, ?name:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
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
	static public var division : Dynamic;
	/**
		Parses `Example` protos into a `dict` of tensors.
		
		Parses a number of serialized [`Example`]
		(https://www.tensorflow.org/code/tensorflow/core/example/example.proto)
		protos given in `serialized`.
		
		`example_names` may contain descriptive names for the corresponding serialized
		protos. These may be useful for debugging purposes, but they have no effect on
		the output. If not `None`, `example_names` must be the same length as `serialized`.
		
		This op parses serialized examples into a dictionary mapping keys to `Tensor`
		and `SparseTensor` objects. `features` is a dict from keys to `VarLenFeature`
		and `FixedLenFeature` objects. Each `VarLenFeature` is mapped to a
		`SparseTensor`, and each `FixedLenFeature` is mapped to a `Tensor`.
		
		Each `VarLenFeature` maps to a `SparseTensor` of the specified type
		representing a ragged matrix. Its indices are `[batch, index]` where `batch`
		is the batch entry the value is from in `serialized`, and `index` is the
		value's index in the list of values associated with that feature and example.
		
		Each `FixedLenFeature` `df` maps to a `Tensor` of the specified type (or
		`tf.float32` if not specified) and shape `(serialized.size(),) + df.shape`.
		
		`FixedLenFeature` entries with a `default_value` are optional. With no default
		value, we will fail if that `Feature` is missing from any example in
		`serialized`.
		
		Examples:
		
		For example, if one expects a `tf.float32` sparse feature `ft` and three
		serialized `Example`s are provided:
		
		```
		serialized = [
		  features
		    { feature { key: "ft" value { float_list { value: [1.0, 2.0] } } } },
		  features
		    { feature []},
		  features
		    { feature { key: "ft" value { float_list { value: [3.0] } } }
		]
		```
		
		then the output will look like:
		
		```
		{"ft": SparseTensor(indices=[[0, 0], [0, 1], [2, 0]],
		                    values=[1.0, 2.0, 3.0],
		                    shape=(3, 2)) }
		```
		
		Given two `Example` input protos in `serialized`:
		
		```
		[
		  features {
		    feature { key: "kw" value { bytes_list { value: [ "knit", "big" ] } } }
		    feature { key: "gps" value { float_list { value: [] } } }
		  },
		  features {
		    feature { key: "kw" value { bytes_list { value: [ "emmy" ] } } }
		    feature { key: "dank" value { int64_list { value: [ 42 ] } } }
		    feature { key: "gps" value { } }
		  }
		]
		```
		
		And arguments
		
		```
		example_names: ["input0", "input1"],
		features: {
		    "kw": VarLenFeature(tf.string),
		    "dank": VarLenFeature(tf.int64),
		    "gps": VarLenFeature(tf.float32),
		}
		```
		
		Then the output is a dictionary:
		
		```python
		{
		  "kw": SparseTensor(
		      indices=[[0, 0], [0, 1], [1, 0]],
		      values=["knit", "big", "emmy"]
		      shape=[2, 2]),
		  "dank": SparseTensor(
		      indices=[[1, 0]],
		      values=[42],
		      shape=[2, 1]),
		  "gps": SparseTensor(
		      indices=[],
		      values=[],
		      shape=[2, 0]),
		}
		```
		
		For dense results in two serialized `Example`s:
		
		```
		[
		  features {
		    feature { key: "age" value { int64_list { value: [ 0 ] } } }
		    feature { key: "gender" value { bytes_list { value: [ "f" ] } } }
		   },
		   features {
		    feature { key: "age" value { int64_list { value: [] } } }
		    feature { key: "gender" value { bytes_list { value: [ "f" ] } } }
		  }
		]
		```
		
		We can use arguments:
		
		```
		example_names: ["input0", "input1"],
		features: {
		    "age": FixedLenFeature([], dtype=tf.int64, default_value=-1),
		    "gender": FixedLenFeature([], dtype=tf.string),
		}
		```
		
		And the expected output is:
		
		```python
		{
		  "age": [[0], [-1]],
		  "gender": [["f"], ["f"]],
		}
		```
		
		Args:
		  serialized: A vector (1-D Tensor) of strings, a batch of binary
		    serialized `Example` protos.
		  features: A `dict` mapping feature keys to `FixedLenFeature` or
		    `VarLenFeature` values.
		  name: A name for this operation (optional).
		  example_names: A vector (1-D Tensor) of strings (optional), the names of
		    the serialized protos in the batch.
		
		Returns:
		  A `dict` mapping feature keys to `Tensor` and `SparseTensor` values.
		
		Raises:
		  ValueError: if any feature is invalid.
	**/
	static public function parse_example(serialized:Dynamic, features:Dynamic, ?name:Dynamic, ?example_names:Dynamic):Dynamic;
	/**
		Parses a single `Example` proto.
		
		Similar to `parse_example`, except:
		
		For dense tensors, the returned `Tensor` is identical to the output of
		`parse_example`, except there is no batch dimension, the output shape is the
		same as the shape given in `dense_shape`.
		
		For `SparseTensor`s, the first (batch) column of the indices matrix is removed
		(the indices matrix is a column vector), the values vector is unchanged, and
		the first (`batch_size`) entry of the shape vector is removed (it is now a
		single element vector).
		
		Args:
		  serialized: A scalar string Tensor, a single serialized Example.
		    See `_parse_single_example_raw` documentation for more details.
		  features: A `dict` mapping feature keys to `FixedLenFeature` or
		    `VarLenFeature` values.
		  name: A name for this operation (optional).
		  example_names: (Optional) A scalar string Tensor, the associated name.
		    See `_parse_single_example_raw` documentation for more details.
		
		Returns:
		  A `dict` mapping feature keys to `Tensor` and `SparseTensor` values.
		
		Raises:
		  ValueError: if any feature is invalid.
	**/
	static public function parse_single_example(serialized:Dynamic, features:Dynamic, ?name:Dynamic, ?example_names:Dynamic):Dynamic;
	/**
		Parses a single `SequenceExample` proto.
		
		Parses a single serialized [`SequenceExample`]
		(https://www.tensorflow.org/code/tensorflow/core/example/example.proto)
		proto given in `serialized`.
		
		This op parses a serialize sequence example into a tuple of dictionaries
		mapping keys to `Tensor` and `SparseTensor` objects respectively.
		The first dictionary contains mappings for keys appearing in
		`context_features`, and the second dictionary contains mappings for keys
		appearing in `sequence_features`.
		
		At least one of `context_features` and `sequence_features` must be provided
		and non-empty.
		
		The `context_features` keys are associated with a `SequenceExample` as a
		whole, independent of time / frame.  In contrast, the `sequence_features` keys
		provide a way to access variable-length data within the `FeatureList` section
		of the `SequenceExample` proto.  While the shapes of `context_features` values
		are fixed with respect to frame, the frame dimension (the first dimension)
		of `sequence_features` values may vary between `SequenceExample` protos,
		and even between `feature_list` keys within the same `SequenceExample`.
		
		`context_features` contains `VarLenFeature` and `FixedLenFeature` objects.
		Each `VarLenFeature` is mapped to a `SparseTensor`, and each `FixedLenFeature`
		is mapped to a `Tensor`, of the specified type, shape, and default value.
		
		`sequence_features` contains `VarLenFeature` and `FixedLenSequenceFeature`
		objects. Each `VarLenFeature` is mapped to a `SparseTensor`, and each
		`FixedLenSequenceFeature` is mapped to a `Tensor`, each of the specified type.
		The shape will be `(T,) + df.shape` for `FixedLenSequenceFeature` `df`, where
		`T` is the length of the associated `FeatureList` in the `SequenceExample`.
		For instance, `FixedLenSequenceFeature([])` yields a scalar 1-D `Tensor` of
		static shape `[None]` and dynamic shape `[T]`, while
		`FixedLenSequenceFeature([k])` (for `int k >= 1`) yields a 2-D matrix `Tensor`
		of static shape `[None, k]` and dynamic shape `[T, k]`.
		
		Each `SparseTensor` corresponding to `sequence_features` represents a ragged
		vector.  Its indices are `[time, index]`, where `time` is the `FeatureList`
		entry and `index` is the value's index in the list of values associated with
		that time.
		
		`FixedLenFeature` entries with a `default_value` and `FixedLenSequenceFeature`
		entries with `allow_missing=True` are optional; otherwise, we will fail if
		that `Feature` or `FeatureList` is missing from any example in `serialized`.
		
		`example_name` may contain a descriptive name for the corresponding serialized
		proto. This may be useful for debugging purposes, but it has no effect on the
		output. If not `None`, `example_name` must be a scalar.
		
		Args:
		  serialized: A scalar (0-D Tensor) of type string, a single binary
		    serialized `SequenceExample` proto.
		  context_features: A `dict` mapping feature keys to `FixedLenFeature` or
		    `VarLenFeature` values. These features are associated with a
		    `SequenceExample` as a whole.
		  sequence_features: A `dict` mapping feature keys to
		    `FixedLenSequenceFeature` or `VarLenFeature` values. These features are
		    associated with data within the `FeatureList` section of the
		    `SequenceExample` proto.
		  example_name: A scalar (0-D Tensor) of strings (optional), the name of
		    the serialized proto.
		  name: A name for this operation (optional).
		
		Returns:
		  A tuple of two `dict`s, each mapping keys to `Tensor`s and `SparseTensor`s.
		  The first dict contains the context key/values.
		  The second dict contains the feature_list key/values.
		
		Raises:
		  ValueError: if any feature is invalid.
	**/
	static public function parse_single_sequence_example(serialized:Dynamic, ?context_features:Dynamic, ?sequence_features:Dynamic, ?example_name:Dynamic, ?name:Dynamic):Dynamic;
	static public var print_function : Dynamic;
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