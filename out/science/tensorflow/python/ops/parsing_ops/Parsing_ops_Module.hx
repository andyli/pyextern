/* This file is generated, do not edit! */
package tensorflow.python.ops.parsing_ops;
@:pythonImport("tensorflow.python.ops.parsing_ops") extern class Parsing_ops_Module {
	/**
		Convert CSV records to tensors. Each column maps to one tensor.
		
		RFC 4180 format is expected for the CSV records.
		(https://tools.ietf.org/html/rfc4180)
		Note that we allow leading and trailing spaces with int or float field.
		
		Args:
		  records: A `Tensor` of type `string`.
		    Each string is a record/row in the csv and all records should have
		    the same format.
		  record_defaults: A list of `Tensor` objects with types from: `float32`, `float64`, `int32`, `int64`, `string`.
		    One tensor per column of the input record, with either a
		    scalar default value for that column or an empty vector if the column is
		    required.
		  field_delim: An optional `string`. Defaults to `","`.
		    char delimiter to separate fields in a record.
		  use_quote_delim: An optional `bool`. Defaults to `True`.
		    If false, treats double quotation marks as regular
		    characters inside of the string fields (ignoring RFC 4180, Section 2,
		    Bullet 5).
		  na_value: An optional `string`. Defaults to `""`.
		    Additional string to recognize as NA/NaN.
		  select_cols: An optional list of `ints`. Defaults to `[]`.
		  name: A name for the operation (optional).
		
		Returns:
		  A list of `Tensor` objects. Has the same type as `record_defaults`.
	**/
	static public function DecodeCSV(records:Dynamic, record_defaults:Dynamic, ?field_delim:Dynamic, ?use_quote_delim:Dynamic, ?na_value:Dynamic, ?select_cols:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Decompress strings.
		
		This op decompresses each element of the `bytes` input `Tensor`, which
		is assumed to be compressed using the given `compression_type`.
		
		The `output` is a string `Tensor` of the same shape as `bytes`,
		each element containing the decompressed data from the corresponding
		element in `bytes`.
		
		Args:
		  bytes: A `Tensor` of type `string`.
		    A Tensor of string which is compressed.
		  compression_type: An optional `string`. Defaults to `""`.
		    A scalar containing either (i) the empty string (no
		    compression), (ii) "ZLIB", or (iii) "GZIP".
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `string`.
	**/
	static public function DecodeCompressed(bytes:Dynamic, ?compression_type:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Convert JSON-encoded Example records to binary protocol buffer strings.
		
		
		Note: This is **not** a general purpose JSON parsing op.
		
		This op converts JSON-serialized
		`tf.train.Example` (created with `json_format.MessageToJson`, following the
		[standard JSON mapping](https://developers.google.com/protocol-buffers/docs/proto3#json))
		to a binary-serialized `tf.train.Example` (equivalent to
		`Example.SerializeToString()`) suitable for conversion to tensors with
		`tf.io.parse_example`.
		
		Args:
		  json_examples: A `Tensor` of type `string`.
		    Each string is a JSON object serialized according to the JSON
		    mapping of the Example proto.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `string`.
	**/
	static public function DecodeJSONExample(json_examples:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Reinterpret the bytes of a string as a vector of numbers.
		
		Args:
		  input_bytes: A `Tensor` of type `string`. Tensor of string to be decoded.
		  fixed_length: A `Tensor` of type `int32`.
		    Length in bytes for each element of the decoded output. Must be a multiple
		    of the size of the output type.
		  out_type: A `tf.DType` from: `tf.half, tf.float32, tf.float64, tf.int32, tf.uint16, tf.uint8, tf.int16, tf.int8, tf.int64, tf.bfloat16`.
		  little_endian: An optional `bool`. Defaults to `True`.
		    Whether the input `input_bytes` is in little-endian order. Ignored for
		    `out_type` values that are stored in a single byte, like `uint8`
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `out_type`.
	**/
	static public function DecodePaddedRaw(input_bytes:Dynamic, fixed_length:Dynamic, out_type:Dynamic, ?little_endian:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Reinterpret the bytes of a string as a vector of numbers.
		
		Args:
		  bytes: A `Tensor` of type `string`.
		    All the elements must have the same length.
		  out_type: A `tf.DType` from: `tf.half, tf.float32, tf.float64, tf.int32, tf.uint16, tf.uint8, tf.int16, tf.int8, tf.int64, tf.complex64, tf.complex128, tf.bool, tf.bfloat16`.
		  little_endian: An optional `bool`. Defaults to `True`.
		    Whether the input `bytes` are in little-endian order.
		    Ignored for `out_type` values that are stored in a single byte like
		    `uint8`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `out_type`.
	**/
	static public function DecodeRaw(bytes:Dynamic, out_type:Dynamic, ?little_endian:Dynamic, ?name:Dynamic):Dynamic;
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
		  sparse_keys: A list of `Tensor` objects with type `string`.
		    A list of Nsparse string Tensors (scalars).
		    The keys expected in the Examples' features associated with sparse values.
		  dense_keys: A list of `Tensor` objects with type `string`.
		    A list of Ndense string Tensors (scalars).
		    The keys expected in the Examples' features associated with dense values.
		  dense_defaults: A list of `Tensor` objects with types from: `float32`, `int64`, `string`.
		    A list of Ndense Tensors (some may be empty).
		    dense_defaults[j] provides default values
		    when the example's feature_map lacks dense_key[j].  If an empty Tensor is
		    provided for dense_defaults[j], then the Feature dense_keys[j] is required.
		    The input type is inferred from dense_defaults[j], even when it's empty.
		    If dense_defaults[j] is not empty, and dense_shapes[j] is fully defined,
		    then the shape of dense_defaults[j] must match that of dense_shapes[j].
		    If dense_shapes[j] has an undefined major dimension (variable strides dense
		    feature), dense_defaults[j] must contain a single element:
		    the padding element.
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
		    This works for dense_shapes[j] = (-1, D1, ..., DN).  In this case
		    the shape of the output Tensor dense_values[j] will be
		    (|serialized|, M, D1, .., DN), where M is the maximum number of blocks
		    of elements of length D1 * .... * DN, across all minibatch entries
		    in the input.  Any minibatch entry with less than M blocks of elements of
		    length D1 * ... * DN will be padded with the corresponding default_value
		    scalar element along the second dimension.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (sparse_indices, sparse_values, sparse_shapes, dense_values).
		
		  sparse_indices: A list with the same length as `sparse_keys` of `Tensor` objects with type `int64`.
		  sparse_values: A list of `Tensor` objects of type `sparse_types`.
		  sparse_shapes: A list with the same length as `sparse_keys` of `Tensor` objects with type `int64`.
		  dense_values: A list of `Tensor` objects. Has the same type as `dense_defaults`.
	**/
	static public function ParseExample(serialized:Dynamic, names:Dynamic, sparse_keys:Dynamic, dense_keys:Dynamic, dense_defaults:Dynamic, sparse_types:Dynamic, dense_shapes:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Transforms a vector of tf.Example protos (as strings) into typed tensors.
		
		Args:
		  serialized: A `Tensor` of type `string`.
		    A scalar or vector containing binary serialized Example protos.
		  names: A `Tensor` of type `string`.
		    A tensor containing the names of the serialized protos.
		    Corresponds 1:1 with the `serialized` tensor.
		    May contain, for example, table key (descriptive) names for the
		    corresponding serialized protos.  These are purely useful for debugging
		    purposes, and the presence of values here has no effect on the output.
		    May also be an empty vector if no names are available.
		    If non-empty, this tensor must have the same shape as "serialized".
		  sparse_keys: A `Tensor` of type `string`. Vector of strings.
		    The keys expected in the Examples' features associated with sparse values.
		  dense_keys: A `Tensor` of type `string`. Vector of strings.
		    The keys expected in the Examples' features associated with dense values.
		  ragged_keys: A `Tensor` of type `string`. Vector of strings.
		    The keys expected in the Examples' features associated with ragged values.
		  dense_defaults: A list of `Tensor` objects with types from: `float32`, `int64`, `string`.
		    A list of Tensors (some may be empty).  Corresponds 1:1 with `dense_keys`.
		    dense_defaults[j] provides default values
		    when the example's feature_map lacks dense_key[j].  If an empty Tensor is
		    provided for dense_defaults[j], then the Feature dense_keys[j] is required.
		    The input type is inferred from dense_defaults[j], even when it's empty.
		    If dense_defaults[j] is not empty, and dense_shapes[j] is fully defined,
		    then the shape of dense_defaults[j] must match that of dense_shapes[j].
		    If dense_shapes[j] has an undefined major dimension (variable strides dense
		    feature), dense_defaults[j] must contain a single element:
		    the padding element.
		  num_sparse: An `int` that is `>= 0`. The number of sparse keys.
		  sparse_types: A list of `tf.DTypes` from: `tf.float32, tf.int64, tf.string`.
		    A list of `num_sparse` types; the data types of data in each Feature
		    given in sparse_keys.
		    Currently the ParseExample supports DT_FLOAT (FloatList),
		    DT_INT64 (Int64List), and DT_STRING (BytesList).
		  ragged_value_types: A list of `tf.DTypes` from: `tf.float32, tf.int64, tf.string`.
		    A list of `num_ragged` types; the data types of data in each Feature
		    given in ragged_keys (where `num_ragged = sparse_keys.size()`).
		    Currently the ParseExample supports DT_FLOAT (FloatList),
		    DT_INT64 (Int64List), and DT_STRING (BytesList).
		  ragged_split_types: A list of `tf.DTypes` from: `tf.int32, tf.int64`.
		    A list of `num_ragged` types; the data types of row_splits in each Feature
		    given in ragged_keys (where `num_ragged = sparse_keys.size()`).
		    May be DT_INT32 or DT_INT64.
		  dense_shapes: A list of shapes (each a `tf.TensorShape` or list of `ints`).
		    A list of `num_dense` shapes; the shapes of data in each Feature
		    given in dense_keys (where `num_dense = dense_keys.size()`).
		    The number of elements in the Feature corresponding to dense_key[j]
		    must always equal dense_shapes[j].NumEntries().
		    If dense_shapes[j] == (D0, D1, ..., DN) then the shape of output
		    Tensor dense_values[j] will be (|serialized|, D0, D1, ..., DN):
		    The dense outputs are just the inputs row-stacked by batch.
		    This works for dense_shapes[j] = (-1, D1, ..., DN).  In this case
		    the shape of the output Tensor dense_values[j] will be
		    (|serialized|, M, D1, .., DN), where M is the maximum number of blocks
		    of elements of length D1 * .... * DN, across all minibatch entries
		    in the input.  Any minibatch entry with less than M blocks of elements of
		    length D1 * ... * DN will be padded with the corresponding default_value
		    scalar element along the second dimension.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (sparse_indices, sparse_values, sparse_shapes, dense_values, ragged_values, ragged_row_splits).
		
		  sparse_indices: A list of `num_sparse` `Tensor` objects with type `int64`.
		  sparse_values: A list of `Tensor` objects of type `sparse_types`.
		  sparse_shapes: A list of `num_sparse` `Tensor` objects with type `int64`.
		  dense_values: A list of `Tensor` objects. Has the same type as `dense_defaults`.
		  ragged_values: A list of `Tensor` objects of type `ragged_value_types`.
		  ragged_row_splits: A list of `Tensor` objects of type `ragged_split_types`.
	**/
	static public function ParseExampleV2(serialized:Dynamic, names:Dynamic, sparse_keys:Dynamic, dense_keys:Dynamic, ragged_keys:Dynamic, dense_defaults:Dynamic, num_sparse:Dynamic, sparse_types:Dynamic, ragged_value_types:Dynamic, ragged_split_types:Dynamic, dense_shapes:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Transforms a vector of brain.SequenceExample protos (as strings) into typed tensors.
		
		Args:
		  serialized: A `Tensor` of type `string`.
		    A vector containing binary serialized SequenceExample protos.
		  debug_name: A `Tensor` of type `string`.
		    A vector containing the names of the serialized protos.
		    May contain, for example, table key (descriptive) name for the
		    corresponding serialized proto.  This is purely useful for debugging
		    purposes, and the presence of values here has no effect on the output.
		    May also be an empty vector if no name is available.
		  context_dense_defaults: A list of `Tensor` objects with types from: `float32`, `int64`, `string`.
		    A list of Ncontext_dense Tensors (some may be empty).
		    context_dense_defaults[j] provides default values
		    when the SequenceExample's context map lacks context_dense_key[j].
		    If an empty Tensor is provided for context_dense_defaults[j],
		    then the Feature context_dense_keys[j] is required.
		    The input type is inferred from context_dense_defaults[j], even when it's
		    empty.  If context_dense_defaults[j] is not empty, its shape must match
		    context_dense_shapes[j].
		  feature_list_dense_missing_assumed_empty: A list of `strings`.
		    A vector listing the
		    FeatureList keys which may be missing from the SequenceExamples.  If the
		    associated FeatureList is missing, it is treated as empty.  By default,
		    any FeatureList not listed in this vector must exist in the SequenceExamples.
		  context_sparse_keys: A list of `strings`.
		    A list of Ncontext_sparse string Tensors (scalars).
		    The keys expected in the Examples' features associated with context_sparse
		    values.
		  context_dense_keys: A list of `strings`.
		    A list of Ncontext_dense string Tensors (scalars).
		    The keys expected in the SequenceExamples' context features associated with
		    dense values.
		  feature_list_sparse_keys: A list of `strings`.
		    A list of Nfeature_list_sparse string Tensors
		    (scalars).  The keys expected in the FeatureLists associated with sparse
		    values.
		  feature_list_dense_keys: A list of `strings`.
		    A list of Nfeature_list_dense string Tensors (scalars).
		    The keys expected in the SequenceExamples' feature_lists associated
		    with lists of dense values.
		  Ncontext_sparse: An optional `int` that is `>= 0`. Defaults to `0`.
		  Ncontext_dense: An optional `int` that is `>= 0`. Defaults to `0`.
		  Nfeature_list_sparse: An optional `int` that is `>= 0`. Defaults to `0`.
		  Nfeature_list_dense: An optional `int` that is `>= 0`. Defaults to `0`.
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
		  A tuple of `Tensor` objects (context_sparse_indices, context_sparse_values, context_sparse_shapes, context_dense_values, feature_list_sparse_indices, feature_list_sparse_values, feature_list_sparse_shapes, feature_list_dense_values, feature_list_dense_lengths).
		
		  context_sparse_indices: A list of `Ncontext_sparse` `Tensor` objects with type `int64`.
		  context_sparse_values: A list of `Tensor` objects of type `context_sparse_types`.
		  context_sparse_shapes: A list of `Ncontext_sparse` `Tensor` objects with type `int64`.
		  context_dense_values: A list of `Tensor` objects. Has the same type as `context_dense_defaults`.
		  feature_list_sparse_indices: A list of `Nfeature_list_sparse` `Tensor` objects with type `int64`.
		  feature_list_sparse_values: A list of `Tensor` objects of type `feature_list_sparse_types`.
		  feature_list_sparse_shapes: A list of `Nfeature_list_sparse` `Tensor` objects with type `int64`.
		  feature_list_dense_values: A list of `Tensor` objects of type `feature_list_dense_types`.
		  feature_list_dense_lengths: A list of `Nfeature_list_dense` `Tensor` objects with type `int64`.
	**/
	static public function ParseSequenceExample(serialized:Dynamic, debug_name:Dynamic, context_dense_defaults:Dynamic, feature_list_dense_missing_assumed_empty:Dynamic, context_sparse_keys:Dynamic, context_dense_keys:Dynamic, feature_list_sparse_keys:Dynamic, feature_list_dense_keys:Dynamic, ?Ncontext_sparse:Dynamic, ?Ncontext_dense:Dynamic, ?Nfeature_list_sparse:Dynamic, ?Nfeature_list_dense:Dynamic, ?context_sparse_types:Dynamic, ?feature_list_dense_types:Dynamic, ?context_dense_shapes:Dynamic, ?feature_list_sparse_types:Dynamic, ?feature_list_dense_shapes:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Transforms a vector of tf.io.SequenceExample protos (as strings) into
		typed tensors.
		
		  Args:
		    serialized: A `Tensor` of type `string`.
		      A scalar or vector containing binary serialized SequenceExample protos.
		    debug_name: A `Tensor` of type `string`.
		      A scalar or vector containing the names of the serialized protos.
		      May contain, for example, table key (descriptive) name for the
		      corresponding serialized proto.  This is purely useful for debugging
		      purposes, and the presence of values here has no effect on the output.
		      May also be an empty vector if no name is available.
		    context_sparse_keys: A `Tensor` of type `string`.
		      The keys expected in the Examples' features associated with context_sparse
		      values.
		    context_dense_keys: A `Tensor` of type `string`.
		      The keys expected in the SequenceExamples' context features associated with
		      dense values.
		    context_ragged_keys: A `Tensor` of type `string`.
		      The keys expected in the Examples' features associated with context_ragged
		      values.
		    feature_list_sparse_keys: A `Tensor` of type `string`.
		      The keys expected in the FeatureLists associated with sparse values.
		    feature_list_dense_keys: A `Tensor` of type `string`.
		      The keys expected in the SequenceExamples' feature_lists associated
		      with lists of dense values.
		    feature_list_ragged_keys: A `Tensor` of type `string`.
		      The keys expected in the FeatureLists associated with ragged values.
		    feature_list_dense_missing_assumed_empty: A `Tensor` of type `bool`.
		      A vector corresponding 1:1 with feature_list_dense_keys, indicating which
		      features may be missing from the SequenceExamples.  If the associated
		      FeatureList is missing, it is treated as empty.
		    context_dense_defaults: A list of `Tensor` objects with types from: `float32`, `int64`, `string`.
		      A list of Ncontext_dense Tensors (some may be empty).
		      context_dense_defaults[j] provides default values
		      when the SequenceExample's context map lacks context_dense_key[j].
		      If an empty Tensor is provided for context_dense_defaults[j],
		      then the Feature context_dense_keys[j] is required.
		      The input type is inferred from context_dense_defaults[j], even when it's
		      empty.  If context_dense_defaults[j] is not empty, its shape must match
		      context_dense_shapes[j].
		    Ncontext_sparse: An optional `int` that is `>= 0`. Defaults to `0`.
		    context_sparse_types: An optional list of `tf.DTypes` from: `tf.float32, tf.int64, tf.string`. Defaults to `[]`.
		      A list of Ncontext_sparse types; the data types of data in
		      each context Feature given in context_sparse_keys.
		      Currently the ParseSingleSequenceExample supports DT_FLOAT (FloatList),
		      DT_INT64 (Int64List), and DT_STRING (BytesList).
		    context_ragged_value_types: An optional list of `tf.DTypes` from: `tf.float32, tf.int64, tf.string`. Defaults to `[]`.
		      RaggedTensor.value dtypes for the ragged context features.
		    context_ragged_split_types: An optional list of `tf.DTypes` from: `tf.int32, tf.int64`. Defaults to `[]`.
		      RaggedTensor.row_split dtypes for the ragged context features.
		    context_dense_shapes: An optional list of shapes (each a `tf.TensorShape` or list of `ints`). Defaults to `[]`.
		      A list of Ncontext_dense shapes; the shapes of data in
		      each context Feature given in context_dense_keys.
		      The number of elements in the Feature corresponding to context_dense_key[j]
		      must always equal context_dense_shapes[j].NumEntries().
		      The shape of context_dense_values[j] will match context_dense_shapes[j].
		    Nfeature_list_sparse: An optional `int` that is `>= 0`. Defaults to `0`.
		    Nfeature_list_dense: An optional `int` that is `>= 0`. Defaults to `0`.
		    feature_list_dense_types: An optional list of `tf.DTypes` from: `tf.float32, tf.int64, tf.string`. Defaults to `[]`.
		    feature_list_sparse_types: An optional list of `tf.DTypes` from: `tf.float32, tf.int64, tf.string`. Defaults to `[]`.
		      A list of Nfeature_list_sparse types; the data types
		      of data in each FeatureList given in feature_list_sparse_keys.
		      Currently the ParseSingleSequenceExample supports DT_FLOAT (FloatList),
		      DT_INT64 (Int64List), and DT_STRING (BytesList).
		    feature_list_ragged_value_types: An optional list of `tf.DTypes` from: `tf.float32, tf.int64, tf.string`. Defaults to `[]`.
		      RaggedTensor.value dtypes for the ragged FeatureList features.
		    feature_list_ragged_split_types: An optional list of `tf.DTypes` from: `tf.int32, tf.int64`. Defaults to `[]`.
		      RaggedTensor.row_split dtypes for the ragged FeatureList features.
		    feature_list_dense_shapes: An optional list of shapes (each a `tf.TensorShape` or list of `ints`). Defaults to `[]`.
		      A list of Nfeature_list_dense shapes; the shapes of
		      data in each FeatureList given in feature_list_dense_keys.
		      The shape of each Feature in the FeatureList corresponding to
		      feature_list_dense_key[j] must always equal
		      feature_list_dense_shapes[j].NumEntries().
		    name: A name for the operation (optional).
		
		  Returns:
		    A tuple of `Tensor` objects (context_sparse_indices, context_sparse_values, context_sparse_shapes, context_dense_values, context_ragged_values, context_ragged_row_splits, feature_list_sparse_indices, feature_list_sparse_values, feature_list_sparse_shapes, feature_list_dense_values, feature_list_dense_lengths, feature_list_ragged_values, feature_list_ragged_outer_splits, feature_list_ragged_inner_splits).
		
		    context_sparse_indices: A list of `Ncontext_sparse` `Tensor` objects with type `int64`.
		    context_sparse_values: A list of `Tensor` objects of type `context_sparse_types`.
		    context_sparse_shapes: A list of `Ncontext_sparse` `Tensor` objects with type `int64`.
		    context_dense_values: A list of `Tensor` objects. Has the same type as `context_dense_defaults`.
		    context_ragged_values: A list of `Tensor` objects of type `context_ragged_value_types`.
		    context_ragged_row_splits: A list of `Tensor` objects of type `context_ragged_split_types`.
		    feature_list_sparse_indices: A list of `Nfeature_list_sparse` `Tensor` objects with type `int64`.
		    feature_list_sparse_values: A list of `Tensor` objects of type `feature_list_sparse_types`.
		    feature_list_sparse_shapes: A list of `Nfeature_list_sparse` `Tensor` objects with type `int64`.
		    feature_list_dense_values: A list of `Tensor` objects of type `feature_list_dense_types`.
		    feature_list_dense_lengths: A list of `Nfeature_list_dense` `Tensor` objects with type `int64`.
		    feature_list_ragged_values: A list of `Tensor` objects of type `feature_list_ragged_value_types`.
		    feature_list_ragged_outer_splits: A list of `Tensor` objects of type `feature_list_ragged_split_types`.
		    feature_list_ragged_inner_splits: A list of `Tensor` objects of type `feature_list_ragged_split_types`.
		  
	**/
	static public function ParseSequenceExampleV2(serialized:Dynamic, debug_name:Dynamic, context_sparse_keys:Dynamic, context_dense_keys:Dynamic, context_ragged_keys:Dynamic, feature_list_sparse_keys:Dynamic, feature_list_dense_keys:Dynamic, feature_list_ragged_keys:Dynamic, feature_list_dense_missing_assumed_empty:Dynamic, context_dense_defaults:Dynamic, ?Ncontext_sparse:Dynamic, ?context_sparse_types:Dynamic, ?context_ragged_value_types:Dynamic, ?context_ragged_split_types:Dynamic, ?context_dense_shapes:Dynamic, ?Nfeature_list_sparse:Dynamic, ?Nfeature_list_dense:Dynamic, ?feature_list_dense_types:Dynamic, ?feature_list_sparse_types:Dynamic, ?feature_list_ragged_value_types:Dynamic, ?feature_list_ragged_split_types:Dynamic, ?feature_list_dense_shapes:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Transforms a tf.Example proto (as a string) into typed tensors.
		
		Args:
		  serialized: A `Tensor` of type `string`.
		    A vector containing a batch of binary serialized Example protos.
		  dense_defaults: A list of `Tensor` objects with types from: `float32`, `int64`, `string`.
		    A list of Tensors (some may be empty), whose length matches
		    the length of `dense_keys`. dense_defaults[j] provides default values
		    when the example's feature_map lacks dense_key[j].  If an empty Tensor is
		    provided for dense_defaults[j], then the Feature dense_keys[j] is required.
		    The input type is inferred from dense_defaults[j], even when it's empty.
		    If dense_defaults[j] is not empty, and dense_shapes[j] is fully defined,
		    then the shape of dense_defaults[j] must match that of dense_shapes[j].
		    If dense_shapes[j] has an undefined major dimension (variable strides dense
		    feature), dense_defaults[j] must contain a single element:
		    the padding element.
		  num_sparse: An `int` that is `>= 0`.
		    The number of sparse features to be parsed from the example. This
		    must match the lengths of `sparse_keys` and `sparse_types`.
		  sparse_keys: A list of `strings`. A list of `num_sparse` strings.
		    The keys expected in the Examples' features associated with sparse values.
		  dense_keys: A list of `strings`.
		    The keys expected in the Examples' features associated with dense
		    values.
		  sparse_types: A list of `tf.DTypes` from: `tf.float32, tf.int64, tf.string`.
		    A list of `num_sparse` types; the data types of data in each
		    Feature given in sparse_keys.
		    Currently the ParseSingleExample op supports DT_FLOAT (FloatList),
		    DT_INT64 (Int64List), and DT_STRING (BytesList).
		  dense_shapes: A list of shapes (each a `tf.TensorShape` or list of `ints`).
		    The shapes of data in each Feature given in dense_keys.
		    The length of this list must match the length of `dense_keys`.  The
		    number of elements in the Feature corresponding to dense_key[j] must
		    always equal dense_shapes[j].NumEntries().  If dense_shapes[j] ==
		    (D0, D1, ..., DN) then the shape of output Tensor dense_values[j]
		    will be (D0, D1, ..., DN): In the case dense_shapes[j] = (-1, D1,
		    ..., DN), the shape of the output Tensor dense_values[j] will be (M,
		    D1, .., DN), where M is the number of blocks of elements of length
		    D1 * .... * DN, in the input.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (sparse_indices, sparse_values, sparse_shapes, dense_values).
		
		  sparse_indices: A list of `num_sparse` `Tensor` objects with type `int64`.
		  sparse_values: A list of `Tensor` objects of type `sparse_types`.
		  sparse_shapes: A list of `num_sparse` `Tensor` objects with type `int64`.
		  dense_values: A list of `Tensor` objects. Has the same type as `dense_defaults`.
	**/
	static public function ParseSingleExample(serialized:Dynamic, dense_defaults:Dynamic, num_sparse:Dynamic, sparse_keys:Dynamic, dense_keys:Dynamic, sparse_types:Dynamic, dense_shapes:Dynamic, ?name:Dynamic):Dynamic;
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
		  context_sparse_keys: A list of `Tensor` objects with type `string`.
		    A list of Ncontext_sparse string Tensors (scalars).
		    The keys expected in the Examples' features associated with context_sparse
		    values.
		  context_dense_keys: A list of `Tensor` objects with type `string`.
		    A list of Ncontext_dense string Tensors (scalars).
		    The keys expected in the SequenceExamples' context features associated with
		    dense values.
		  feature_list_sparse_keys: A list of `Tensor` objects with type `string`.
		    A list of Nfeature_list_sparse string Tensors
		    (scalars).  The keys expected in the FeatureLists associated with sparse
		    values.
		  feature_list_dense_keys: A list of `Tensor` objects with type `string`.
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
		
		  context_sparse_indices: A list with the same length as `context_sparse_keys` of `Tensor` objects with type `int64`.
		  context_sparse_values: A list of `Tensor` objects of type `context_sparse_types`.
		  context_sparse_shapes: A list with the same length as `context_sparse_keys` of `Tensor` objects with type `int64`.
		  context_dense_values: A list of `Tensor` objects. Has the same type as `context_dense_defaults`.
		  feature_list_sparse_indices: A list with the same length as `feature_list_sparse_keys` of `Tensor` objects with type `int64`.
		  feature_list_sparse_values: A list of `Tensor` objects of type `feature_list_sparse_types`.
		  feature_list_sparse_shapes: A list with the same length as `feature_list_sparse_keys` of `Tensor` objects with type `int64`.
		  feature_list_dense_values: A list of `Tensor` objects of type `feature_list_dense_types`.
	**/
	static public function ParseSingleSequenceExample(serialized:Dynamic, feature_list_dense_missing_assumed_empty:Dynamic, context_sparse_keys:Dynamic, context_dense_keys:Dynamic, feature_list_sparse_keys:Dynamic, feature_list_dense_keys:Dynamic, context_dense_defaults:Dynamic, debug_name:Dynamic, ?context_sparse_types:Dynamic, ?feature_list_dense_types:Dynamic, ?context_dense_shapes:Dynamic, ?feature_list_sparse_types:Dynamic, ?feature_list_dense_shapes:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Transforms a serialized tensorflow.TensorProto proto into a Tensor.
		
		Args:
		  serialized: A `Tensor` of type `string`.
		    A scalar string containing a serialized TensorProto proto.
		  out_type: A `tf.DType`.
		    The type of the serialized tensor.  The provided type must match the
		    type of the serialized tensor and no implicit conversion will take place.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `out_type`.
	**/
	static public function ParseTensor(serialized:Dynamic, out_type:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Transforms a Tensor into a serialized TensorProto proto.
		
		Args:
		  tensor: A `Tensor`. A Tensor of type `T`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `string`.
	**/
	static public function SerializeTensor(tensor:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Converts each string in the input Tensor to the specified numeric type.
		
		(Note that int32 overflow results in an error while float overflow
		results in a rounded value.)
		
		Example:
		
		>>> strings = ["5.0", "3.0", "7.0"]
		>>> tf.strings.to_number(strings)
		<tf.Tensor: shape=(3,), dtype=float32, numpy=array([5., 3., 7.], dtype=float32)>
		
		Args:
		  string_tensor: A `Tensor` of type `string`.
		  out_type: An optional `tf.DType` from: `tf.float32, tf.float64, tf.int32, tf.int64`. Defaults to `tf.float32`.
		    The numeric type to interpret each string in `string_tensor` as.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `out_type`.
	**/
	static public function StringToNumber(string_tensor:Dynamic, ?out_type:Dynamic, ?name:Dynamic):Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Asserts that `value` is scalar, and returns `value`.
	**/
	static public function _assert_scalar(value:Dynamic, name:Dynamic):Dynamic;
	/**
		Creates tensors for SparseFeatures and RaggedFeatures.
		
		Constructs new dict based on `tensor_dict`.
		
		For each key in `features` whose value is a `SparseFeature`:
		
		  * Looks up that SparseFeature's value_key and index_keys in tensor_dict.
		  * Uses those tensors to construct a single SparseTensor.
		  * Stores that SparseTensor in the output dict under the same key.
		
		For each key in `features` whose value is a `RaggedFeature`:
		
		  * Looks up that RaggedFeature's value_key and partition keys in tensor_dict.
		  * Uses those tensors to construct a single RaggedTensor.
		  * Stores that RaggedTensor in the output dict under the same key.
		
		For any other key in `features`:
		
		  * Copies that key and its value from tensor_dict to the output dictionary.
		
		Args:
		  features: A `dict` mapping feature keys to `SparseFeature` or
		    `RaggedFeature` values.  Values of other types will be ignored.
		  tensor_dict: A `dict` mapping feature keys to `Tensor`, `SparseTensor`, and
		    `RaggedTensor` values.  Expected to contain keys of the `SparseFeature`s'
		    `index_key`s and `value_key`s and mapping them to `SparseTensor`s.
		
		Returns:
		  A `dict` mapping feature keys to `Tensor`, `SparseTensor`, and
		  `RaggedTensor` values. Similar to `tensor_dict` except each `SparseFeature`
		  in `features` results in a single `SparseTensor`; and each `RaggedFeature`
		  in `features` results in a single `RaggedTensor`.
	**/
	static public function _construct_sparse_tensors_for_sparse_features(features:Dynamic, tensor_dict:Dynamic):Dynamic;
	/**
		Creates tensors for SparseFeatures and RaggedFeatures.
		
		Constructs new dict based on `tensor_dict`.
		
		For each key in `features` whose value is a `SparseFeature`:
		
		  * Looks up that SparseFeature's value_key and index_keys in tensor_dict.
		  * Uses those tensors to construct a single SparseTensor.
		  * Stores that SparseTensor in the output dict under the same key.
		
		For each key in `features` whose value is a `RaggedFeature`:
		
		  * Looks up that RaggedFeature's value_key and partition keys in tensor_dict.
		  * Uses those tensors to construct a single RaggedTensor.
		  * Stores that RaggedTensor in the output dict under the same key.
		
		For any other key in `features`:
		
		  * Copies that key and its value from tensor_dict to the output dictionary.
		
		Args:
		  features: A `dict` mapping feature keys to `SparseFeature` or
		    `RaggedFeature` values.  Values of other types will be ignored.
		  tensor_dict: A `dict` mapping feature keys to `Tensor`, `SparseTensor`, and
		    `RaggedTensor` values.  Expected to contain keys of the `SparseFeature`s'
		    `index_key`s and `value_key`s and mapping them to `SparseTensor`s.
		
		Returns:
		  A `dict` mapping feature keys to `Tensor`, `SparseTensor`, and
		  `RaggedTensor` values. Similar to `tensor_dict` except each `SparseFeature`
		  in `features` results in a single `SparseTensor`; and each `RaggedFeature`
		  in `features` results in a single `RaggedTensor`.
	**/
	static public function _construct_tensors_for_composite_features(features:Dynamic, tensor_dict:Dynamic):Dynamic;
	/**
		Parses `Example` protos.
		
		Args:
		  serialized: A vector (1-D Tensor) of strings, a batch of binary
		    serialized `Example` protos.
		  names: A vector (1-D Tensor) of strings (optional), the names of
		    the serialized protos.
		  params: A `ParseOpParams` containing the parameters for the parse op.
		  name: A name for this operation (optional).
		
		Returns:
		  A `dict` mapping keys to `Tensor`s and `SparseTensor`s and `RaggedTensor`s.
	**/
	static public function _parse_example_raw(serialized:Dynamic, names:Dynamic, params:Dynamic, name:Dynamic):Dynamic;
	/**
		Parses a vector of `SequenceExample` protos.
		
		Args:
		  serialized: A vector (1-D Tensor) of type string, containing binary
		    serialized `SequenceExample` protos.
		  debug_name: A vector (1-D Tensor) of strings (optional), the names of the
		    serialized protos.
		  context: A `ParseOpParams` containing the parameters for the parse
		    op for the context features.
		  feature_list: A `ParseOpParams` containing the parameters for the
		    parse op for the feature_list features.
		  name: A name for this operation (optional).
		
		Returns:
		  A tuple of three `dict`s, each mapping keys to `Tensor`s, `SparseTensor`s,
		  and `RaggedTensor`s. The first dict contains the context key/values, the
		  second dict contains the feature_list key/values, and the final dict
		  contains the lengths of any dense feature_list features.
		
		Raises:
		  TypeError: if feature_list.dense_defaults is not either None or a dict.
	**/
	static public function _parse_sequence_example_raw(serialized:Dynamic, debug_name:Dynamic, context:Dynamic, feature_list:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Parses a single `SequenceExample` proto.
		
		Args:
		  serialized: A scalar (0-D Tensor) of type string, a single binary serialized
		    `SequenceExample` proto.
		  context: A `ParseOpParams` containing the parameters for the parse op for
		    the context features.
		  feature_list: A `ParseOpParams` containing the parameters for the parse op
		    for the feature_list features.
		  debug_name: A scalar (0-D Tensor) of strings (optional), the name of the
		    serialized proto.
		  name: A name for this operation (optional).
		
		Returns:
		  A tuple of two `dict`s, each mapping keys to `Tensor`s and `SparseTensor`s.
		  The first dict contains the context key/values.
		  The second dict contains the feature_list key/values.
		
		Raises:
		  TypeError: if feature_list.dense_defaults is not either None or a dict.
	**/
	static public function _parse_single_sequence_example_raw(serialized:Dynamic, context:Dynamic, feature_list:Dynamic, debug_name:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns a copy of features with adjusted FixedLenSequenceFeature shapes.
	**/
	static public function _prepend_none_dimension(features:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Decompress strings.
		
		This op decompresses each element of the `bytes` input `Tensor`, which
		is assumed to be compressed using the given `compression_type`.
		
		The `output` is a string `Tensor` of the same shape as `bytes`,
		each element containing the decompressed data from the corresponding
		element in `bytes`.
		
		Args:
		  bytes: A `Tensor` of type `string`.
		    A Tensor of string which is compressed.
		  compression_type: An optional `string`. Defaults to `""`.
		    A scalar containing either (i) the empty string (no
		    compression), (ii) "ZLIB", or (iii) "GZIP".
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `string`.
	**/
	static public function decode_compressed(bytes:Dynamic, ?compression_type:Dynamic, ?name:Dynamic):Dynamic;
	static public function decode_compressed_eager_fallback(bytes:Dynamic, compression_type:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Convert CSV records to tensors. Each column maps to one tensor.
		
		RFC 4180 format is expected for the CSV records.
		(https://tools.ietf.org/html/rfc4180)
		Note that we allow leading and trailing spaces with int or float field.
		
		Args:
		  records: A `Tensor` of type `string`.
		    Each string is a record/row in the csv and all records should have
		    the same format.
		  record_defaults: A list of `Tensor` objects with specific types.
		    Acceptable types are `float32`, `float64`, `int32`, `int64`, `string`.
		    One tensor per column of the input record, with either a
		    scalar default value for that column or an empty vector if the column is
		    required.
		  field_delim: An optional `string`. Defaults to `","`.
		    char delimiter to separate fields in a record.
		  use_quote_delim: An optional `bool`. Defaults to `True`.
		    If false, treats double quotation marks as regular
		    characters inside of the string fields (ignoring RFC 4180, Section 2,
		    Bullet 5).
		  name: A name for the operation (optional).
		  na_value: Additional string to recognize as NA/NaN.
		  select_cols: Optional sorted list of column indices to select. If specified,
		    only this subset of columns will be parsed and returned.
		
		Returns:
		  A list of `Tensor` objects. Has the same type as `record_defaults`.
		  Each tensor will have the same shape as records.
		
		Raises:
		  ValueError: If any of the arguments is malformed.
	**/
	static public function decode_csv(records:Dynamic, record_defaults:Dynamic, ?field_delim:Dynamic, ?use_quote_delim:Dynamic, ?name:Dynamic, ?na_value:Dynamic, ?select_cols:Dynamic):Dynamic;
	static public function decode_csv_eager_fallback(records:Dynamic, record_defaults:Dynamic, field_delim:Dynamic, use_quote_delim:Dynamic, na_value:Dynamic, select_cols:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Convert CSV records to tensors. Each column maps to one tensor.
		
		RFC 4180 format is expected for the CSV records.
		(https://tools.ietf.org/html/rfc4180)
		Note that we allow leading and trailing spaces with int or float field.
		
		Args:
		  records: A `Tensor` of type `string`.
		    Each string is a record/row in the csv and all records should have
		    the same format.
		  record_defaults: A list of `Tensor` objects with specific types.
		    Acceptable types are `float32`, `float64`, `int32`, `int64`, `string`.
		    One tensor per column of the input record, with either a
		    scalar default value for that column or an empty vector if the column is
		    required.
		  field_delim: An optional `string`. Defaults to `","`.
		    char delimiter to separate fields in a record.
		  use_quote_delim: An optional `bool`. Defaults to `True`.
		    If false, treats double quotation marks as regular
		    characters inside of the string fields (ignoring RFC 4180, Section 2,
		    Bullet 5).
		  na_value: Additional string to recognize as NA/NaN.
		  select_cols: Optional sorted list of column indices to select. If specified,
		    only this subset of columns will be parsed and returned.
		  name: A name for the operation (optional).
		
		Returns:
		  A list of `Tensor` objects. Has the same type as `record_defaults`.
		  Each tensor will have the same shape as records.
		
		Raises:
		  ValueError: If any of the arguments is malformed.
	**/
	static public function decode_csv_v2(records:Dynamic, record_defaults:Dynamic, ?field_delim:Dynamic, ?use_quote_delim:Dynamic, ?na_value:Dynamic, ?select_cols:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Convert JSON-encoded Example records to binary protocol buffer strings.
		
		Note: This is **not** a general purpose JSON parsing op.
		
		This op converts JSON-serialized `tf.train.Example` (maybe created with
		`json_format.MessageToJson`, following the
		[standard JSON mapping](
		https://developers.google.com/protocol-buffers/docs/proto3#json))
		to a binary-serialized `tf.train.Example` (equivalent to
		`Example.SerializeToString()`) suitable for conversion to tensors with
		`tf.io.parse_example`.
		
		Here is a `tf.train.Example` proto:
		
		>>> example = tf.train.Example(
		...   features=tf.train.Features(
		...       feature={
		...           "a": tf.train.Feature(
		...               int64_list=tf.train.Int64List(
		...                   value=[1, 1, 3]))}))
		
		Here it is converted to JSON:
		
		>>> from google.protobuf import json_format
		>>> example_json = json_format.MessageToJson(example)
		>>> print(example_json)
		{
		  "features": {
		    "feature": {
		      "a": {
		        "int64List": {
		          "value": [
		            "1",
		            "1",
		            "3"
		          ]
		        }
		      }
		    }
		  }
		}
		
		This op converts the above json string to a binary proto:
		
		>>> example_binary = tf.io.decode_json_example(example_json)
		>>> example_binary.numpy()
		b'\n\x0f\n\r\n\x01a\x12\x08\x1a\x06\x08\x01\x08\x01\x08\x03'
		
		The OP works on string tensors of andy shape:
		
		>>> tf.io.decode_json_example([
		...     [example_json, example_json],
		...     [example_json, example_json]]).shape.as_list()
		[2, 2]
		
		This resulting binary-string is equivalent to `Example.SerializeToString()`,
		and can be converted to Tensors using `tf.io.parse_example` and related
		functions:
		
		>>> tf.io.parse_example(
		...   serialized=[example_binary.numpy(),
		...              example.SerializeToString()],
		...   features = {'a': tf.io.FixedLenFeature(shape=[3], dtype=tf.int64)})
		{'a': <tf.Tensor: shape=(2, 3), dtype=int64, numpy=
		 array([[1, 1, 3],
		        [1, 1, 3]])>}
		
		Args:
		  json_examples: A string tensor containing json-serialized `tf.Example`
		    protos.
		  name: A name for the op.
		
		Returns:
		  A string Tensor containing the binary-serialized `tf.Example` protos.
		
		Raises:
		   `tf.errors.InvalidArgumentError`: If the JSON could not be converted to a
		   `tf.Example`
	**/
	static public function decode_json_example(json_examples:Dynamic, ?name:Dynamic):Dynamic;
	static public function decode_json_example_eager_fallback(json_examples:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Reinterpret the bytes of a string as a vector of numbers.
		
		Args:
		  input_bytes: A `Tensor` of type `string`. Tensor of string to be decoded.
		  fixed_length: A `Tensor` of type `int32`.
		    Length in bytes for each element of the decoded output. Must be a multiple
		    of the size of the output type.
		  out_type: A `tf.DType` from: `tf.half, tf.float32, tf.float64, tf.int32, tf.uint16, tf.uint8, tf.int16, tf.int8, tf.int64, tf.bfloat16`.
		  little_endian: An optional `bool`. Defaults to `True`.
		    Whether the input `input_bytes` is in little-endian order. Ignored for
		    `out_type` values that are stored in a single byte, like `uint8`
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `out_type`.
	**/
	static public function decode_padded_raw(input_bytes:Dynamic, fixed_length:Dynamic, out_type:Dynamic, ?little_endian:Dynamic, ?name:Dynamic):Dynamic;
	static public function decode_padded_raw_eager_fallback(input_bytes:Dynamic, fixed_length:Dynamic, out_type:Dynamic, little_endian:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Convert raw bytes from input tensor into numeric tensors.
		
		Every component of the input tensor is interpreted as a sequence of bytes.
		These bytes are then decoded as numbers in the format specified by `out_type`.
		
		>>> tf.io.decode_raw(tf.constant("1"), tf.uint8)
		<tf.Tensor: shape=(1,), dtype=uint8, numpy=array([49], dtype=uint8)>
		>>> tf.io.decode_raw(tf.constant("1,2"), tf.uint8)
		<tf.Tensor: shape=(3,), dtype=uint8, numpy=array([49, 44, 50], dtype=uint8)>
		
		Note that the rank of the output tensor is always one more than the input one:
		
		>>> tf.io.decode_raw(tf.constant(["1","2"]), tf.uint8).shape
		TensorShape([2, 1])
		>>> tf.io.decode_raw(tf.constant([["1"],["2"]]), tf.uint8).shape
		TensorShape([2, 1, 1])
		
		This is because each byte in the input is converted to a new value on the
		output (if output type is `uint8` or `int8`, otherwise chunks of inputs get
		coverted to a new value):
		
		>>> tf.io.decode_raw(tf.constant("123"), tf.uint8)
		<tf.Tensor: shape=(3,), dtype=uint8, numpy=array([49, 50, 51], dtype=uint8)>
		>>> tf.io.decode_raw(tf.constant("1234"), tf.uint8)
		<tf.Tensor: shape=(4,), dtype=uint8, numpy=array([49, 50, 51, 52], ...
		>>> # chuncked output
		>>> tf.io.decode_raw(tf.constant("12"), tf.uint16)
		<tf.Tensor: shape=(1,), dtype=uint16, numpy=array([12849], dtype=uint16)>
		>>> tf.io.decode_raw(tf.constant("1234"), tf.uint16)
		<tf.Tensor: shape=(2,), dtype=uint16, numpy=array([12849, 13363], ...
		>>> # int64 output
		>>> tf.io.decode_raw(tf.constant("12345678"), tf.int64)
		<tf.Tensor: ... numpy=array([4050765991979987505])>
		>>> tf.io.decode_raw(tf.constant("1234567887654321"), tf.int64)
		<tf.Tensor: ... numpy=array([4050765991979987505, 3544952156018063160])>
		
		The operation allows specifying endianness via the `little_endian` parameter.
		
		>>> tf.io.decode_raw(tf.constant("\x0a\x0b"), tf.int16)
		<tf.Tensor: shape=(1,), dtype=int16, numpy=array([2826], dtype=int16)>
		>>> hex(2826)
		'0xb0a'
		>>> tf.io.decode_raw(tf.constant("\x0a\x0b"), tf.int16, little_endian=False)
		<tf.Tensor: shape=(1,), dtype=int16, numpy=array([2571], dtype=int16)>
		>>> hex(2571)
		'0xa0b'
		
		If the elements of `input_bytes` are of different length, you must specify
		`fixed_length`:
		
		>>> tf.io.decode_raw(tf.constant([["1"],["23"]]), tf.uint8, fixed_length=4)
		<tf.Tensor: shape=(2, 1, 4), dtype=uint8, numpy=
		array([[[49,  0,  0,  0]],
		       [[50, 51,  0,  0]]], dtype=uint8)>
		
		If the `fixed_length` value is larger that the length of the `out_type` dtype,
		multiple values are generated:
		
		>>> tf.io.decode_raw(tf.constant(["1212"]), tf.uint16, fixed_length=4)
		<tf.Tensor: shape=(1, 2), dtype=uint16, numpy=array([[12849, 12849]], ...
		
		If the input value is larger than `fixed_length`, it is truncated:
		
		>>> x=''.join([chr(1), chr(2), chr(3), chr(4)])
		>>> tf.io.decode_raw(x, tf.uint16, fixed_length=2)
		<tf.Tensor: shape=(1,), dtype=uint16, numpy=array([513], dtype=uint16)>
		>>> hex(513)
		'0x201'
		
		If `little_endian` and `fixed_length` are specified, truncation to the fixed
		length occurs before endianness conversion:
		
		>>> x=''.join([chr(1), chr(2), chr(3), chr(4)])
		>>> tf.io.decode_raw(x, tf.uint16, fixed_length=2, little_endian=False)
		<tf.Tensor: shape=(1,), dtype=uint16, numpy=array([258], dtype=uint16)>
		>>> hex(258)
		'0x102'
		
		If input values all have the same length, then specifying `fixed_length`
		equal to the size of the strings should not change output:
		
		>>> x = ["12345678", "87654321"]
		>>> tf.io.decode_raw(x, tf.int16)
		<tf.Tensor: shape=(2, 4), dtype=int16, numpy=
		array([[12849, 13363, 13877, 14391],
		       [14136, 13622, 13108, 12594]], dtype=int16)>
		>>> tf.io.decode_raw(x, tf.int16, fixed_length=len(x[0]))
		<tf.Tensor: shape=(2, 4), dtype=int16, numpy=
		array([[12849, 13363, 13877, 14391],
		       [14136, 13622, 13108, 12594]], dtype=int16)>
		
		Args:
		  input_bytes:
		    Each element of the input Tensor is converted to an array of bytes.
		
		    Currently, this must be a tensor of strings (bytes), although semantically
		    the operation should support any input.
		  out_type:
		    `DType` of the output. Acceptable types are `half`, `float`, `double`,
		    `int32`, `uint16`, `uint8`, `int16`, `int8`, `int64`.
		  little_endian:
		    Whether the `input_bytes` data is in little-endian format. Data will be
		    converted into host byte order if necessary.
		  fixed_length:
		    If set, the first `fixed_length` bytes of each element will be converted.
		    Data will be zero-padded or truncated to the specified length.
		
		    `fixed_length` must be a multiple of the size of `out_type`.
		
		    `fixed_length` must be specified if the elements of `input_bytes` are of
		    variable length.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` object storing the decoded bytes.
	**/
	static public function decode_raw(input_bytes:Dynamic, out_type:Dynamic, ?little_endian:Dynamic, ?fixed_length:Dynamic, ?name:Dynamic):Dynamic;
	static public function decode_raw_eager_fallback(bytes:Dynamic, out_type:Dynamic, little_endian:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Convert raw byte strings into tensors. (deprecated arguments)
		
		Warning: SOME ARGUMENTS ARE DEPRECATED: `(bytes)`. They will be removed in a future version.
		Instructions for updating:
		bytes is deprecated, use input_bytes instead
		
		Args:
		  input_bytes:
		    Each element of the input Tensor is converted to an array of bytes.
		  out_type:
		    `DType` of the output. Acceptable types are `half`, `float`, `double`,
		    `int32`, `uint16`, `uint8`, `int16`, `int8`, `int64`.
		  little_endian:
		    Whether the `input_bytes` data is in little-endian format. Data will be
		    converted into host byte order if necessary.
		  name: A name for the operation (optional).
		  bytes: Deprecated parameter. Use `input_bytes` instead.
		
		Returns:
		  A `Tensor` object storing the decoded bytes.
	**/
	static public function decode_raw_v1(?input_bytes:Dynamic, ?out_type:Dynamic, ?little_endian:Dynamic, ?name:Dynamic, ?bytes:Dynamic):Dynamic;
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
	static public var division : Dynamic;
	/**
		Parses `Example` protos into a `dict` of tensors.
		
		Parses a number of serialized [`Example`](https://www.tensorflow.org/code/tensorflow/core/example/example.proto)
		protos given in `serialized`. We refer to `serialized` as a batch with
		`batch_size` many entries of individual `Example` protos.
		
		`example_names` may contain descriptive names for the corresponding serialized
		protos. These may be useful for debugging purposes, but they have no effect on
		the output. If not `None`, `example_names` must be the same length as
		`serialized`.
		
		This op parses serialized examples into a dictionary mapping keys to `Tensor`
		`SparseTensor`, and `RaggedTensor` objects. `features` is a dict from keys to
		`VarLenFeature`, `SparseFeature`, `RaggedFeature`, and `FixedLenFeature`
		objects. Each `VarLenFeature` and `SparseFeature` is mapped to a
		`SparseTensor`; each `FixedLenFeature` is mapped to a `Tensor`; and each
		`RaggedFeature` is mapped to a `RaggedTensor`.
		
		Each `VarLenFeature` maps to a `SparseTensor` of the specified type
		representing a ragged matrix. Its indices are `[batch, index]` where `batch`
		identifies the example in `serialized`, and `index` is the value's index in
		the list of values associated with that feature and example.
		
		Each `SparseFeature` maps to a `SparseTensor` of the specified type
		representing a Tensor of `dense_shape` `[batch_size] + SparseFeature.size`.
		Its `values` come from the feature in the examples with key `value_key`.
		A `values[i]` comes from a position `k` in the feature of an example at batch
		entry `batch`. This positional information is recorded in `indices[i]` as
		`[batch, index_0, index_1, ...]` where `index_j` is the `k-th` value of
		the feature in the example at with key `SparseFeature.index_key[j]`.
		In other words, we split the indices (except the first index indicating the
		batch entry) of a `SparseTensor` by dimension into different features of the
		`Example`. Due to its complexity a `VarLenFeature` should be preferred over a
		`SparseFeature` whenever possible.
		
		Each `FixedLenFeature` `df` maps to a `Tensor` of the specified type (or
		`tf.float32` if not specified) and shape `(serialized.size(),) + df.shape`.
		
		`FixedLenFeature` entries with a `default_value` are optional. With no default
		value, we will fail if that `Feature` is missing from any example in
		`serialized`.
		
		Each `FixedLenSequenceFeature` `df` maps to a `Tensor` of the specified type
		(or `tf.float32` if not specified) and shape
		`(serialized.size(), None) + df.shape`.
		All examples in `serialized` will be padded with `default_value` along the
		second dimension.
		
		Each `RaggedFeature` maps to a `RaggedTensor` of the specified type.  It
		is formed by stacking the `RaggedTensor` for each example, where the
		`RaggedTensor` for each individual example is constructed using the tensors
		specified by `RaggedTensor.values_key` and `RaggedTensor.partition`.  See
		the `tf.io.RaggedFeature` documentation for details and examples.
		
		Examples:
		
		For example, if one expects a `tf.float32` `VarLenFeature` `ft` and three
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
		
		```python
		{"ft": SparseTensor(indices=[[0, 0], [0, 1], [2, 0]],
		                    values=[1.0, 2.0, 3.0],
		                    dense_shape=(3, 2)) }
		```
		
		If instead a `FixedLenSequenceFeature` with `default_value = -1.0` and
		`shape=[]` is used then the output will look like:
		
		```python
		{"ft": [[1.0, 2.0], [3.0, -1.0]]}
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
		      dense_shape=[2, 2]),
		  "dank": SparseTensor(
		      indices=[[1, 0]],
		      values=[42],
		      dense_shape=[2, 1]),
		  "gps": SparseTensor(
		      indices=[],
		      values=[],
		      dense_shape=[2, 0]),
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
		
		An alternative to `VarLenFeature` to obtain a `SparseTensor` is
		`SparseFeature`. For example, given two `Example` input protos in
		`serialized`:
		
		```
		[
		  features {
		    feature { key: "val" value { float_list { value: [ 0.5, -1.0 ] } } }
		    feature { key: "ix" value { int64_list { value: [ 3, 20 ] } } }
		  },
		  features {
		    feature { key: "val" value { float_list { value: [ 0.0 ] } } }
		    feature { key: "ix" value { int64_list { value: [ 42 ] } } }
		  }
		]
		```
		
		And arguments
		
		```
		example_names: ["input0", "input1"],
		features: {
		    "sparse": SparseFeature(
		        index_key="ix", value_key="val", dtype=tf.float32, size=100),
		}
		```
		
		Then the output is a dictionary:
		
		```python
		{
		  "sparse": SparseTensor(
		      indices=[[0, 3], [0, 20], [1, 42]],
		      values=[0.5, -1.0, 0.0]
		      dense_shape=[2, 100]),
		}
		```
		
		See the `tf.io.RaggedFeature` documentation for examples showing how
		`RaggedFeature` can be used to obtain `RaggedTensor`s.
		
		Args:
		  serialized: A vector (1-D Tensor) of strings, a batch of binary
		    serialized `Example` protos.
		  features: A `dict` mapping feature keys to `FixedLenFeature`,
		    `VarLenFeature`, `SparseFeature`, and `RaggedFeature` values.
		  example_names: A vector (1-D Tensor) of strings (optional), the names of
		    the serialized protos in the batch.
		  name: A name for this operation (optional).
		
		Returns:
		  A `dict` mapping feature keys to `Tensor`, `SparseTensor`, and
		  `RaggedTensor` values.
		
		Raises:
		  ValueError: if any feature is invalid.
	**/
	static public function parse_example(serialized:Dynamic, features:Dynamic, ?name:Dynamic, ?example_names:Dynamic):Dynamic;
	static public function parse_example_eager_fallback(serialized:Dynamic, names:Dynamic, sparse_keys:Dynamic, dense_keys:Dynamic, dense_defaults:Dynamic, sparse_types:Dynamic, dense_shapes:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Parses `Example` protos into a `dict` of tensors.
		
		Parses a number of serialized [`Example`](https://www.tensorflow.org/code/tensorflow/core/example/example.proto)
		protos given in `serialized`. We refer to `serialized` as a batch with
		`batch_size` many entries of individual `Example` protos.
		
		`example_names` may contain descriptive names for the corresponding serialized
		protos. These may be useful for debugging purposes, but they have no effect on
		the output. If not `None`, `example_names` must be the same length as
		`serialized`.
		
		This op parses serialized examples into a dictionary mapping keys to `Tensor`
		`SparseTensor`, and `RaggedTensor` objects. `features` is a dict from keys to
		`VarLenFeature`, `SparseFeature`, `RaggedFeature`, and `FixedLenFeature`
		objects. Each `VarLenFeature` and `SparseFeature` is mapped to a
		`SparseTensor`; each `FixedLenFeature` is mapped to a `Tensor`; and each
		`RaggedFeature` is mapped to a `RaggedTensor`.
		
		Each `VarLenFeature` maps to a `SparseTensor` of the specified type
		representing a ragged matrix. Its indices are `[batch, index]` where `batch`
		identifies the example in `serialized`, and `index` is the value's index in
		the list of values associated with that feature and example.
		
		Each `SparseFeature` maps to a `SparseTensor` of the specified type
		representing a Tensor of `dense_shape` `[batch_size] + SparseFeature.size`.
		Its `values` come from the feature in the examples with key `value_key`.
		A `values[i]` comes from a position `k` in the feature of an example at batch
		entry `batch`. This positional information is recorded in `indices[i]` as
		`[batch, index_0, index_1, ...]` where `index_j` is the `k-th` value of
		the feature in the example at with key `SparseFeature.index_key[j]`.
		In other words, we split the indices (except the first index indicating the
		batch entry) of a `SparseTensor` by dimension into different features of the
		`Example`. Due to its complexity a `VarLenFeature` should be preferred over a
		`SparseFeature` whenever possible.
		
		Each `FixedLenFeature` `df` maps to a `Tensor` of the specified type (or
		`tf.float32` if not specified) and shape `(serialized.size(),) + df.shape`.
		
		`FixedLenFeature` entries with a `default_value` are optional. With no default
		value, we will fail if that `Feature` is missing from any example in
		`serialized`.
		
		Each `FixedLenSequenceFeature` `df` maps to a `Tensor` of the specified type
		(or `tf.float32` if not specified) and shape
		`(serialized.size(), None) + df.shape`.
		All examples in `serialized` will be padded with `default_value` along the
		second dimension.
		
		Each `RaggedFeature` maps to a `RaggedTensor` of the specified type.  It
		is formed by stacking the `RaggedTensor` for each example, where the
		`RaggedTensor` for each individual example is constructed using the tensors
		specified by `RaggedTensor.values_key` and `RaggedTensor.partition`.  See
		the `tf.io.RaggedFeature` documentation for details and examples.
		
		Examples:
		
		For example, if one expects a `tf.float32` `VarLenFeature` `ft` and three
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
		
		```python
		{"ft": SparseTensor(indices=[[0, 0], [0, 1], [2, 0]],
		                    values=[1.0, 2.0, 3.0],
		                    dense_shape=(3, 2)) }
		```
		
		If instead a `FixedLenSequenceFeature` with `default_value = -1.0` and
		`shape=[]` is used then the output will look like:
		
		```python
		{"ft": [[1.0, 2.0], [3.0, -1.0]]}
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
		      dense_shape=[2, 2]),
		  "dank": SparseTensor(
		      indices=[[1, 0]],
		      values=[42],
		      dense_shape=[2, 1]),
		  "gps": SparseTensor(
		      indices=[],
		      values=[],
		      dense_shape=[2, 0]),
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
		
		An alternative to `VarLenFeature` to obtain a `SparseTensor` is
		`SparseFeature`. For example, given two `Example` input protos in
		`serialized`:
		
		```
		[
		  features {
		    feature { key: "val" value { float_list { value: [ 0.5, -1.0 ] } } }
		    feature { key: "ix" value { int64_list { value: [ 3, 20 ] } } }
		  },
		  features {
		    feature { key: "val" value { float_list { value: [ 0.0 ] } } }
		    feature { key: "ix" value { int64_list { value: [ 42 ] } } }
		  }
		]
		```
		
		And arguments
		
		```
		example_names: ["input0", "input1"],
		features: {
		    "sparse": SparseFeature(
		        index_key="ix", value_key="val", dtype=tf.float32, size=100),
		}
		```
		
		Then the output is a dictionary:
		
		```python
		{
		  "sparse": SparseTensor(
		      indices=[[0, 3], [0, 20], [1, 42]],
		      values=[0.5, -1.0, 0.0]
		      dense_shape=[2, 100]),
		}
		```
		
		See the `tf.io.RaggedFeature` documentation for examples showing how
		`RaggedFeature` can be used to obtain `RaggedTensor`s.
		
		Args:
		  serialized: A vector (1-D Tensor) of strings, a batch of binary
		    serialized `Example` protos.
		  features: A `dict` mapping feature keys to `FixedLenFeature`,
		    `VarLenFeature`, `SparseFeature`, and `RaggedFeature` values.
		  example_names: A vector (1-D Tensor) of strings (optional), the names of
		    the serialized protos in the batch.
		  name: A name for this operation (optional).
		
		Returns:
		  A `dict` mapping feature keys to `Tensor`, `SparseTensor`, and
		  `RaggedTensor` values.
		
		Raises:
		  ValueError: if any feature is invalid.
	**/
	static public function parse_example_v2(serialized:Dynamic, features:Dynamic, ?example_names:Dynamic, ?name:Dynamic):Dynamic;
	static public function parse_example_v2_eager_fallback(serialized:Dynamic, names:Dynamic, sparse_keys:Dynamic, dense_keys:Dynamic, ragged_keys:Dynamic, dense_defaults:Dynamic, num_sparse:Dynamic, sparse_types:Dynamic, ragged_value_types:Dynamic, ragged_split_types:Dynamic, dense_shapes:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Parses a batch of `SequenceExample` protos.
		
		Parses a vector of serialized
		[`SequenceExample`](https://www.tensorflow.org/code/tensorflow/core/example/example.proto)
		protos given in `serialized`.
		
		This op parses serialized sequence examples into a tuple of dictionaries,
		each mapping keys to `Tensor` and `SparseTensor` objects.
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
		
		`context_features` contains `VarLenFeature`, `RaggedFeature`, and
		`FixedLenFeature`  objects. Each `VarLenFeature` is mapped to a
		`SparseTensor`; each `RaggedFeature` is  mapped to a `RaggedTensor`; and each
		`FixedLenFeature` is mapped to a `Tensor`, of the specified type, shape, and
		default value.
		
		`sequence_features` contains `VarLenFeature`, `RaggedFeature`, and
		`FixedLenSequenceFeature` objects. Each `VarLenFeature` is mapped to a
		`SparseTensor`; each `RaggedFeature` is mapped to a `RaggedTensor`; and
		each `FixedLenSequenceFeature` is mapped to a `Tensor`, each of the specified
		type. The shape will be `(B,T,) + df.dense_shape` for
		`FixedLenSequenceFeature` `df`, where `B` is the batch size, and `T` is the
		length of the associated `FeatureList` in the `SequenceExample`. For instance,
		`FixedLenSequenceFeature([])` yields a scalar 2-D `Tensor` of static shape
		`[None, None]` and dynamic shape `[B, T]`, while
		`FixedLenSequenceFeature([k])` (for `int k >= 1`) yields a 3-D matrix `Tensor`
		of static shape `[None, None, k]` and dynamic shape `[B, T, k]`.
		
		Like the input, the resulting output tensors have a batch dimension. This
		means that the original per-example shapes of `VarLenFeature`s and
		`FixedLenSequenceFeature`s can be lost. To handle that situation, this op also
		provides dicts of shape tensors as part of the output. There is one dict for
		the context features, and one for the feature_list features. Context features
		of type `FixedLenFeature`s will not be present, since their shapes are already
		known by the caller. In situations where the input `FixedLenSequenceFeature`s
		are of different sequence lengths across examples, the shorter examples will
		be padded with default datatype values: 0 for numeric types, and the empty
		string for string types.
		
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
		  serialized: A vector (1-D Tensor) of type string containing binary
		    serialized `SequenceExample` protos.
		  context_features: A `dict` mapping feature keys to `FixedLenFeature` or
		    `VarLenFeature` or `RaggedFeature` values. These features are associated
		    with a `SequenceExample` as a whole.
		  sequence_features: A `dict` mapping feature keys to
		    `FixedLenSequenceFeature` or `VarLenFeature` or `RaggedFeature` values.
		    These features are associated with data within the `FeatureList` section
		    of the `SequenceExample` proto.
		  example_names: A vector (1-D Tensor) of strings (optional), the name of the
		    serialized protos.
		  name: A name for this operation (optional).
		
		Returns:
		  A tuple of three `dict`s, each mapping keys to `Tensor`s,
		  `SparseTensor`s, and `RaggedTensor`. The first dict contains the context
		  key/values, the second dict contains the feature_list key/values, and the
		  final dict contains the lengths of any dense feature_list features.
		
		Raises:
		  ValueError: if any feature is invalid.
	**/
	static public function parse_sequence_example(serialized:Dynamic, ?context_features:Dynamic, ?sequence_features:Dynamic, ?example_names:Dynamic, ?name:Dynamic):Dynamic;
	static public function parse_sequence_example_eager_fallback(serialized:Dynamic, debug_name:Dynamic, context_dense_defaults:Dynamic, feature_list_dense_missing_assumed_empty:Dynamic, context_sparse_keys:Dynamic, context_dense_keys:Dynamic, feature_list_sparse_keys:Dynamic, feature_list_dense_keys:Dynamic, Ncontext_sparse:Dynamic, Ncontext_dense:Dynamic, Nfeature_list_sparse:Dynamic, Nfeature_list_dense:Dynamic, context_sparse_types:Dynamic, feature_list_dense_types:Dynamic, context_dense_shapes:Dynamic, feature_list_sparse_types:Dynamic, feature_list_dense_shapes:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Transforms a vector of tf.io.SequenceExample protos (as strings) into
		typed tensors.
		
		  Args:
		    serialized: A `Tensor` of type `string`.
		      A scalar or vector containing binary serialized SequenceExample protos.
		    debug_name: A `Tensor` of type `string`.
		      A scalar or vector containing the names of the serialized protos.
		      May contain, for example, table key (descriptive) name for the
		      corresponding serialized proto.  This is purely useful for debugging
		      purposes, and the presence of values here has no effect on the output.
		      May also be an empty vector if no name is available.
		    context_sparse_keys: A `Tensor` of type `string`.
		      The keys expected in the Examples' features associated with context_sparse
		      values.
		    context_dense_keys: A `Tensor` of type `string`.
		      The keys expected in the SequenceExamples' context features associated with
		      dense values.
		    context_ragged_keys: A `Tensor` of type `string`.
		      The keys expected in the Examples' features associated with context_ragged
		      values.
		    feature_list_sparse_keys: A `Tensor` of type `string`.
		      The keys expected in the FeatureLists associated with sparse values.
		    feature_list_dense_keys: A `Tensor` of type `string`.
		      The keys expected in the SequenceExamples' feature_lists associated
		      with lists of dense values.
		    feature_list_ragged_keys: A `Tensor` of type `string`.
		      The keys expected in the FeatureLists associated with ragged values.
		    feature_list_dense_missing_assumed_empty: A `Tensor` of type `bool`.
		      A vector corresponding 1:1 with feature_list_dense_keys, indicating which
		      features may be missing from the SequenceExamples.  If the associated
		      FeatureList is missing, it is treated as empty.
		    context_dense_defaults: A list of `Tensor` objects with types from: `float32`, `int64`, `string`.
		      A list of Ncontext_dense Tensors (some may be empty).
		      context_dense_defaults[j] provides default values
		      when the SequenceExample's context map lacks context_dense_key[j].
		      If an empty Tensor is provided for context_dense_defaults[j],
		      then the Feature context_dense_keys[j] is required.
		      The input type is inferred from context_dense_defaults[j], even when it's
		      empty.  If context_dense_defaults[j] is not empty, its shape must match
		      context_dense_shapes[j].
		    Ncontext_sparse: An optional `int` that is `>= 0`. Defaults to `0`.
		    context_sparse_types: An optional list of `tf.DTypes` from: `tf.float32, tf.int64, tf.string`. Defaults to `[]`.
		      A list of Ncontext_sparse types; the data types of data in
		      each context Feature given in context_sparse_keys.
		      Currently the ParseSingleSequenceExample supports DT_FLOAT (FloatList),
		      DT_INT64 (Int64List), and DT_STRING (BytesList).
		    context_ragged_value_types: An optional list of `tf.DTypes` from: `tf.float32, tf.int64, tf.string`. Defaults to `[]`.
		      RaggedTensor.value dtypes for the ragged context features.
		    context_ragged_split_types: An optional list of `tf.DTypes` from: `tf.int32, tf.int64`. Defaults to `[]`.
		      RaggedTensor.row_split dtypes for the ragged context features.
		    context_dense_shapes: An optional list of shapes (each a `tf.TensorShape` or list of `ints`). Defaults to `[]`.
		      A list of Ncontext_dense shapes; the shapes of data in
		      each context Feature given in context_dense_keys.
		      The number of elements in the Feature corresponding to context_dense_key[j]
		      must always equal context_dense_shapes[j].NumEntries().
		      The shape of context_dense_values[j] will match context_dense_shapes[j].
		    Nfeature_list_sparse: An optional `int` that is `>= 0`. Defaults to `0`.
		    Nfeature_list_dense: An optional `int` that is `>= 0`. Defaults to `0`.
		    feature_list_dense_types: An optional list of `tf.DTypes` from: `tf.float32, tf.int64, tf.string`. Defaults to `[]`.
		    feature_list_sparse_types: An optional list of `tf.DTypes` from: `tf.float32, tf.int64, tf.string`. Defaults to `[]`.
		      A list of Nfeature_list_sparse types; the data types
		      of data in each FeatureList given in feature_list_sparse_keys.
		      Currently the ParseSingleSequenceExample supports DT_FLOAT (FloatList),
		      DT_INT64 (Int64List), and DT_STRING (BytesList).
		    feature_list_ragged_value_types: An optional list of `tf.DTypes` from: `tf.float32, tf.int64, tf.string`. Defaults to `[]`.
		      RaggedTensor.value dtypes for the ragged FeatureList features.
		    feature_list_ragged_split_types: An optional list of `tf.DTypes` from: `tf.int32, tf.int64`. Defaults to `[]`.
		      RaggedTensor.row_split dtypes for the ragged FeatureList features.
		    feature_list_dense_shapes: An optional list of shapes (each a `tf.TensorShape` or list of `ints`). Defaults to `[]`.
		      A list of Nfeature_list_dense shapes; the shapes of
		      data in each FeatureList given in feature_list_dense_keys.
		      The shape of each Feature in the FeatureList corresponding to
		      feature_list_dense_key[j] must always equal
		      feature_list_dense_shapes[j].NumEntries().
		    name: A name for the operation (optional).
		
		  Returns:
		    A tuple of `Tensor` objects (context_sparse_indices, context_sparse_values, context_sparse_shapes, context_dense_values, context_ragged_values, context_ragged_row_splits, feature_list_sparse_indices, feature_list_sparse_values, feature_list_sparse_shapes, feature_list_dense_values, feature_list_dense_lengths, feature_list_ragged_values, feature_list_ragged_outer_splits, feature_list_ragged_inner_splits).
		
		    context_sparse_indices: A list of `Ncontext_sparse` `Tensor` objects with type `int64`.
		    context_sparse_values: A list of `Tensor` objects of type `context_sparse_types`.
		    context_sparse_shapes: A list of `Ncontext_sparse` `Tensor` objects with type `int64`.
		    context_dense_values: A list of `Tensor` objects. Has the same type as `context_dense_defaults`.
		    context_ragged_values: A list of `Tensor` objects of type `context_ragged_value_types`.
		    context_ragged_row_splits: A list of `Tensor` objects of type `context_ragged_split_types`.
		    feature_list_sparse_indices: A list of `Nfeature_list_sparse` `Tensor` objects with type `int64`.
		    feature_list_sparse_values: A list of `Tensor` objects of type `feature_list_sparse_types`.
		    feature_list_sparse_shapes: A list of `Nfeature_list_sparse` `Tensor` objects with type `int64`.
		    feature_list_dense_values: A list of `Tensor` objects of type `feature_list_dense_types`.
		    feature_list_dense_lengths: A list of `Nfeature_list_dense` `Tensor` objects with type `int64`.
		    feature_list_ragged_values: A list of `Tensor` objects of type `feature_list_ragged_value_types`.
		    feature_list_ragged_outer_splits: A list of `Tensor` objects of type `feature_list_ragged_split_types`.
		    feature_list_ragged_inner_splits: A list of `Tensor` objects of type `feature_list_ragged_split_types`.
		  
	**/
	static public function parse_sequence_example_v2(serialized:Dynamic, debug_name:Dynamic, context_sparse_keys:Dynamic, context_dense_keys:Dynamic, context_ragged_keys:Dynamic, feature_list_sparse_keys:Dynamic, feature_list_dense_keys:Dynamic, feature_list_ragged_keys:Dynamic, feature_list_dense_missing_assumed_empty:Dynamic, context_dense_defaults:Dynamic, ?Ncontext_sparse:Dynamic, ?context_sparse_types:Dynamic, ?context_ragged_value_types:Dynamic, ?context_ragged_split_types:Dynamic, ?context_dense_shapes:Dynamic, ?Nfeature_list_sparse:Dynamic, ?Nfeature_list_dense:Dynamic, ?feature_list_dense_types:Dynamic, ?feature_list_sparse_types:Dynamic, ?feature_list_ragged_value_types:Dynamic, ?feature_list_ragged_split_types:Dynamic, ?feature_list_dense_shapes:Dynamic, ?name:Dynamic):Dynamic;
	static public function parse_sequence_example_v2_eager_fallback(serialized:Dynamic, debug_name:Dynamic, context_sparse_keys:Dynamic, context_dense_keys:Dynamic, context_ragged_keys:Dynamic, feature_list_sparse_keys:Dynamic, feature_list_dense_keys:Dynamic, feature_list_ragged_keys:Dynamic, feature_list_dense_missing_assumed_empty:Dynamic, context_dense_defaults:Dynamic, Ncontext_sparse:Dynamic, context_sparse_types:Dynamic, context_ragged_value_types:Dynamic, context_ragged_split_types:Dynamic, context_dense_shapes:Dynamic, Nfeature_list_sparse:Dynamic, Nfeature_list_dense:Dynamic, feature_list_dense_types:Dynamic, feature_list_sparse_types:Dynamic, feature_list_ragged_value_types:Dynamic, feature_list_ragged_split_types:Dynamic, feature_list_dense_shapes:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
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
		
		One might see performance advantages by batching `Example` protos with
		`parse_example` instead of using this function directly.
		
		Args:
		  serialized: A scalar string Tensor, a single serialized Example.
		  features: A `dict` mapping feature keys to `FixedLenFeature` or
		    `VarLenFeature` values.
		  name: A name for this operation (optional).
		  example_names: (Optional) A scalar string Tensor, the associated name.
		
		Returns:
		  A `dict` mapping feature keys to `Tensor` and `SparseTensor` values.
		
		Raises:
		  ValueError: if any feature is invalid.
	**/
	static public function parse_single_example(serialized:Dynamic, features:Dynamic, ?name:Dynamic, ?example_names:Dynamic):Dynamic;
	static public function parse_single_example_eager_fallback(serialized:Dynamic, dense_defaults:Dynamic, num_sparse:Dynamic, sparse_keys:Dynamic, dense_keys:Dynamic, sparse_types:Dynamic, dense_shapes:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
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
		
		One might see performance advantages by batching `Example` protos with
		`parse_example` instead of using this function directly.
		
		Args:
		  serialized: A scalar string Tensor, a single serialized Example.
		  features: A `dict` mapping feature keys to `FixedLenFeature` or
		    `VarLenFeature` values.
		  example_names: (Optional) A scalar string Tensor, the associated name.
		  name: A name for this operation (optional).
		
		Returns:
		  A `dict` mapping feature keys to `Tensor` and `SparseTensor` values.
		
		Raises:
		  ValueError: if any feature is invalid.
	**/
	static public function parse_single_example_v2(serialized:Dynamic, features:Dynamic, ?example_names:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Parses a single `SequenceExample` proto.
		
		Parses a single serialized [`SequenceExample`](https://www.tensorflow.org/code/tensorflow/core/example/example.proto)
		proto given in `serialized`.
		
		This op parses a serialized sequence example into a tuple of dictionaries,
		each mapping keys to `Tensor` and `SparseTensor` objects.
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
		
		`context_features` contains `VarLenFeature`, `RaggedFeature`, and
		`FixedLenFeature` objects. Each `VarLenFeature` is mapped to a `SparseTensor`;
		each `RaggedFeature` is mapped to a `RaggedTensor`; and each `FixedLenFeature`
		is mapped to a `Tensor`, of the specified type, shape, and default value.
		
		`sequence_features` contains `VarLenFeature`, `RaggedFeature`, and
		`FixedLenSequenceFeature` objects. Each `VarLenFeature` is mapped to a
		`SparseTensor`; each `RaggedFeature` is mapped to a `RaggedTensor`; and each
		`FixedLenSequenceFeature` is mapped to a `Tensor`, each of the specified type.
		The shape will be `(T,) + df.dense_shape` for `FixedLenSequenceFeature` `df`,
		where `T` is the length of the associated `FeatureList` in the
		`SequenceExample`. For instance, `FixedLenSequenceFeature([])` yields a scalar
		1-D `Tensor` of static shape `[None]` and dynamic shape `[T]`, while
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
		
		Note that the batch version of this function, `tf.parse_sequence_example`,
		is written for better memory efficiency and will be faster on large
		`SequenceExample`s.
		
		Args:
		  serialized: A scalar (0-D Tensor) of type string, a single binary
		    serialized `SequenceExample` proto.
		  context_features: A `dict` mapping feature keys to `FixedLenFeature` or
		    `VarLenFeature` or `RaggedFeature` values. These features are associated
		    with a `SequenceExample` as a whole.
		  sequence_features: A `dict` mapping feature keys to
		    `FixedLenSequenceFeature` or `VarLenFeature` or `RaggedFeature` values.
		    These features are associated with data within the `FeatureList` section
		    of the `SequenceExample` proto.
		  example_name: A scalar (0-D Tensor) of strings (optional), the name of
		    the serialized proto.
		  name: A name for this operation (optional).
		
		Returns:
		  A tuple of two `dict`s, each mapping keys to `Tensor`s and `SparseTensor`s
		  and `RaggedTensor`s.
		
		  * The first dict contains the context key/values.
		  * The second dict contains the feature_list key/values.
		
		Raises:
		  ValueError: if any feature is invalid.
	**/
	static public function parse_single_sequence_example(serialized:Dynamic, ?context_features:Dynamic, ?sequence_features:Dynamic, ?example_name:Dynamic, ?name:Dynamic):Dynamic;
	static public function parse_single_sequence_example_eager_fallback(serialized:Dynamic, feature_list_dense_missing_assumed_empty:Dynamic, context_sparse_keys:Dynamic, context_dense_keys:Dynamic, feature_list_sparse_keys:Dynamic, feature_list_dense_keys:Dynamic, context_dense_defaults:Dynamic, debug_name:Dynamic, context_sparse_types:Dynamic, feature_list_dense_types:Dynamic, context_dense_shapes:Dynamic, feature_list_sparse_types:Dynamic, feature_list_dense_shapes:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Transforms a serialized tensorflow.TensorProto proto into a Tensor.
		
		Args:
		  serialized: A `Tensor` of type `string`.
		    A scalar string containing a serialized TensorProto proto.
		  out_type: A `tf.DType`.
		    The type of the serialized tensor.  The provided type must match the
		    type of the serialized tensor and no implicit conversion will take place.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `out_type`.
	**/
	static public function parse_tensor(serialized:Dynamic, out_type:Dynamic, ?name:Dynamic):Dynamic;
	static public function parse_tensor_eager_fallback(serialized:Dynamic, out_type:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Transforms a Tensor into a serialized TensorProto proto.
		
		Args:
		  tensor: A `Tensor`. A Tensor of type `T`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `string`.
	**/
	static public function serialize_tensor(tensor:Dynamic, ?name:Dynamic):Dynamic;
	static public function serialize_tensor_eager_fallback(tensor:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Converts each string in the input Tensor to the specified numeric type.
		
		(Note that int32 overflow results in an error while float overflow
		results in a rounded value.)
		
		Example:
		
		>>> strings = ["5.0", "3.0", "7.0"]
		>>> tf.strings.to_number(strings)
		<tf.Tensor: shape=(3,), dtype=float32, numpy=array([5., 3., 7.], dtype=float32)>
		
		Args:
		  string_tensor: A `Tensor` of type `string`.
		  out_type: An optional `tf.DType` from: `tf.float32, tf.float64, tf.int32, tf.int64`. Defaults to `tf.float32`.
		    The numeric type to interpret each string in `string_tensor` as.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `out_type`.
	**/
	static public function string_to_number(string_tensor:Dynamic, ?out_type:Dynamic, ?name:Dynamic):Dynamic;
	static public function string_to_number_eager_fallback(string_tensor:Dynamic, out_type:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}