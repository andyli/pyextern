/* This file is generated, do not edit! */
package tensorflow.python.ops.gen_parsing_ops;
@:pythonImport("tensorflow.python.ops.gen_parsing_ops") extern class Gen_parsing_ops_Module {
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
		Dispatch(self: tensorflow.python.framework._pywrap_python_api_dispatcher.PythonAPIDispatcher, arg0: handle, arg1: handle) -> object
	**/
	static public function _dispatcher_for_decode_compressed(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Dispatch(self: tensorflow.python.framework._pywrap_python_api_dispatcher.PythonAPIDispatcher, arg0: handle, arg1: handle) -> object
	**/
	static public function _dispatcher_for_parse_tensor(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	static public function decode_csv(records:Dynamic, record_defaults:Dynamic, ?field_delim:Dynamic, ?use_quote_delim:Dynamic, ?na_value:Dynamic, ?select_cols:Dynamic, ?name:Dynamic):Dynamic;
	static public function decode_csv_eager_fallback(records:Dynamic, record_defaults:Dynamic, field_delim:Dynamic, use_quote_delim:Dynamic, na_value:Dynamic, select_cols:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
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
	static public function decode_raw(bytes:Dynamic, out_type:Dynamic, ?little_endian:Dynamic, ?name:Dynamic):Dynamic;
	static public function decode_raw_eager_fallback(bytes:Dynamic, out_type:Dynamic, little_endian:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
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
	static public function parse_example(serialized:Dynamic, names:Dynamic, sparse_keys:Dynamic, dense_keys:Dynamic, dense_defaults:Dynamic, sparse_types:Dynamic, dense_shapes:Dynamic, ?name:Dynamic):Dynamic;
	static public function parse_example_eager_fallback(serialized:Dynamic, names:Dynamic, sparse_keys:Dynamic, dense_keys:Dynamic, dense_defaults:Dynamic, sparse_types:Dynamic, dense_shapes:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
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
	static public function parse_example_v2(serialized:Dynamic, names:Dynamic, sparse_keys:Dynamic, dense_keys:Dynamic, ragged_keys:Dynamic, dense_defaults:Dynamic, num_sparse:Dynamic, sparse_types:Dynamic, ragged_value_types:Dynamic, ragged_split_types:Dynamic, dense_shapes:Dynamic, ?name:Dynamic):Dynamic;
	static public function parse_example_v2_eager_fallback(serialized:Dynamic, names:Dynamic, sparse_keys:Dynamic, dense_keys:Dynamic, ragged_keys:Dynamic, dense_defaults:Dynamic, num_sparse:Dynamic, sparse_types:Dynamic, ragged_value_types:Dynamic, ragged_split_types:Dynamic, dense_shapes:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
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
	static public function parse_sequence_example(serialized:Dynamic, debug_name:Dynamic, context_dense_defaults:Dynamic, feature_list_dense_missing_assumed_empty:Dynamic, context_sparse_keys:Dynamic, context_dense_keys:Dynamic, feature_list_sparse_keys:Dynamic, feature_list_dense_keys:Dynamic, ?Ncontext_sparse:Dynamic, ?Ncontext_dense:Dynamic, ?Nfeature_list_sparse:Dynamic, ?Nfeature_list_dense:Dynamic, ?context_sparse_types:Dynamic, ?feature_list_dense_types:Dynamic, ?context_dense_shapes:Dynamic, ?feature_list_sparse_types:Dynamic, ?feature_list_dense_shapes:Dynamic, ?name:Dynamic):Dynamic;
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
	static public function parse_single_example(serialized:Dynamic, dense_defaults:Dynamic, num_sparse:Dynamic, sparse_keys:Dynamic, dense_keys:Dynamic, sparse_types:Dynamic, dense_shapes:Dynamic, ?name:Dynamic):Dynamic;
	static public function parse_single_example_eager_fallback(serialized:Dynamic, dense_defaults:Dynamic, num_sparse:Dynamic, sparse_keys:Dynamic, dense_keys:Dynamic, sparse_types:Dynamic, dense_shapes:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
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
	static public function parse_single_sequence_example(serialized:Dynamic, feature_list_dense_missing_assumed_empty:Dynamic, context_sparse_keys:Dynamic, context_dense_keys:Dynamic, feature_list_sparse_keys:Dynamic, feature_list_dense_keys:Dynamic, context_dense_defaults:Dynamic, debug_name:Dynamic, ?context_sparse_types:Dynamic, ?feature_list_dense_types:Dynamic, ?context_dense_shapes:Dynamic, ?feature_list_sparse_types:Dynamic, ?feature_list_dense_shapes:Dynamic, ?name:Dynamic):Dynamic;
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