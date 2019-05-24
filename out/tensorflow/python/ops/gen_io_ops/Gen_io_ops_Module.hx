/* This file is generated, do not edit! */
package tensorflow.python.ops.gen_io_ops;
@:pythonImport("tensorflow.python.ops.gen_io_ops") extern class Gen_io_ops_Module {
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
	static public var _reader_read_outputs : Dynamic;
	static public var _reader_read_up_to_outputs : Dynamic;
	static public var _reader_read_up_to_v2_outputs : Dynamic;
	static public var _reader_read_v2_outputs : Dynamic;
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
		A Reader that outputs fixed-length records from a file.
		
		Args:
		  record_bytes: An `int`. Number of bytes in the record.
		  header_bytes: An optional `int`. Defaults to `0`.
		    Number of bytes in the header, defaults to 0.
		  footer_bytes: An optional `int`. Defaults to `0`.
		    Number of bytes in the footer, defaults to 0.
		  hop_bytes: An optional `int`. Defaults to `0`.
		    Number of bytes to hop before each read. Default of 0 means using
		    record_bytes.
		  container: An optional `string`. Defaults to `""`.
		    If non-empty, this reader is placed in the given container.
		    Otherwise, a default container is used.
		  shared_name: An optional `string`. Defaults to `""`.
		    If non-empty, this reader is named in the given bucket
		    with this shared_name. Otherwise, the node name is used instead.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type mutable `string`.
	**/
	static public function fixed_length_record_reader(record_bytes:Dynamic, ?header_bytes:Dynamic, ?footer_bytes:Dynamic, ?hop_bytes:Dynamic, ?container:Dynamic, ?shared_name:Dynamic, ?name:Dynamic):Dynamic;
	static public function fixed_length_record_reader_eager_fallback(record_bytes:Dynamic, ?header_bytes:Dynamic, ?footer_bytes:Dynamic, ?hop_bytes:Dynamic, ?container:Dynamic, ?shared_name:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		A Reader that outputs fixed-length records from a file.
		
		Args:
		  record_bytes: An `int`. Number of bytes in the record.
		  header_bytes: An optional `int`. Defaults to `0`.
		    Number of bytes in the header, defaults to 0.
		  footer_bytes: An optional `int`. Defaults to `0`.
		    Number of bytes in the footer, defaults to 0.
		  hop_bytes: An optional `int`. Defaults to `0`.
		    Number of bytes to hop before each read. Default of 0 means using
		    record_bytes.
		  container: An optional `string`. Defaults to `""`.
		    If non-empty, this reader is placed in the given container.
		    Otherwise, a default container is used.
		  shared_name: An optional `string`. Defaults to `""`.
		    If non-empty, this reader is named in the given bucket
		    with this shared_name. Otherwise, the node name is used instead.
		  encoding: An optional `string`. Defaults to `""`.
		    The type of encoding for the file. Currently ZLIB and GZIP
		    are supported. Defaults to none.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `resource`.
	**/
	static public function fixed_length_record_reader_v2(record_bytes:Dynamic, ?header_bytes:Dynamic, ?footer_bytes:Dynamic, ?hop_bytes:Dynamic, ?container:Dynamic, ?shared_name:Dynamic, ?encoding:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function fixed_length_record_reader_v2
	**/
	static public function fixed_length_record_reader_v2_eager_fallback(record_bytes:Dynamic, ?header_bytes:Dynamic, ?footer_bytes:Dynamic, ?hop_bytes:Dynamic, ?container:Dynamic, ?shared_name:Dynamic, ?encoding:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		A Reader that outputs the queued work as both the key and value.
		
		To use, enqueue strings in a Queue.  ReaderRead will take the front
		work string and output (work, work).
		
		Args:
		  container: An optional `string`. Defaults to `""`.
		    If non-empty, this reader is placed in the given container.
		    Otherwise, a default container is used.
		  shared_name: An optional `string`. Defaults to `""`.
		    If non-empty, this reader is named in the given bucket
		    with this shared_name. Otherwise, the node name is used instead.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type mutable `string`.
	**/
	static public function identity_reader(?container:Dynamic, ?shared_name:Dynamic, ?name:Dynamic):Dynamic;
	static public function identity_reader_eager_fallback(?container:Dynamic, ?shared_name:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		A Reader that outputs the queued work as both the key and value.
		
		To use, enqueue strings in a Queue.  ReaderRead will take the front
		work string and output (work, work).
		
		Args:
		  container: An optional `string`. Defaults to `""`.
		    If non-empty, this reader is placed in the given container.
		    Otherwise, a default container is used.
		  shared_name: An optional `string`. Defaults to `""`.
		    If non-empty, this reader is named in the given bucket
		    with this shared_name. Otherwise, the node name is used instead.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `resource`.
	**/
	static public function identity_reader_v2(?container:Dynamic, ?shared_name:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function identity_reader_v2
	**/
	static public function identity_reader_v2_eager_fallback(?container:Dynamic, ?shared_name:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		A Reader that outputs the records from a LMDB file.
		
		Args:
		  container: An optional `string`. Defaults to `""`.
		    If non-empty, this reader is placed in the given container.
		    Otherwise, a default container is used.
		  shared_name: An optional `string`. Defaults to `""`.
		    If non-empty, this reader is named in the given bucket
		    with this shared_name. Otherwise, the node name is used instead.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type mutable `string`.
	**/
	static public function lmdb_reader(?container:Dynamic, ?shared_name:Dynamic, ?name:Dynamic):Dynamic;
	static public function lmdb_reader_eager_fallback(?container:Dynamic, ?shared_name:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Returns the set of files matching one or more glob patterns.
		
		Note that this routine only supports wildcard characters in the
		basename portion of the pattern, not in the directory portion.
		Note also that the order of filenames returned can be non-deterministic.
		
		Args:
		  pattern: A `Tensor` of type `string`.
		    Shell wildcard pattern(s). Scalar or vector of type string.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `string`.
	**/
	static public function matching_files(pattern:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function matching_files
	**/
	static public function matching_files_eager_fallback(pattern:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		V2 format specific: merges the metadata files of sharded checkpoints.  The
		
		result is one logical checkpoint, with one physical metadata file and renamed
		data files.
		
		Intended for "grouping" multiple checkpoints in a sharded checkpoint setup.
		
		If delete_old_dirs is true, attempts to delete recursively the dirname of each
		path in the input checkpoint_prefixes.  This is useful when those paths are non
		user-facing temporary locations.
		
		Args:
		  checkpoint_prefixes: A `Tensor` of type `string`.
		    prefixes of V2 checkpoints to merge.
		  destination_prefix: A `Tensor` of type `string`.
		    scalar.  The desired final prefix.  Allowed to be the same
		    as one of the checkpoint_prefixes.
		  delete_old_dirs: An optional `bool`. Defaults to `True`. see above.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function merge_v2_checkpoints(checkpoint_prefixes:Dynamic, destination_prefix:Dynamic, ?delete_old_dirs:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function merge_v2_checkpoints
	**/
	static public function merge_v2_checkpoints_eager_fallback(checkpoint_prefixes:Dynamic, destination_prefix:Dynamic, ?delete_old_dirs:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Reads and outputs the entire contents of the input filename.
		
		Args:
		  filename: A `Tensor` of type `string`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `string`.
	**/
	static public function read_file(filename:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function read_file
	**/
	static public function read_file_eager_fallback(filename:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Returns the number of records this Reader has produced.
		
		This is the same as the number of ReaderRead executions that have
		succeeded.
		
		Args:
		  reader_handle: A `Tensor` of type mutable `string`. Handle to a Reader.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `int64`.
	**/
	static public function reader_num_records_produced(reader_handle:Dynamic, ?name:Dynamic):Dynamic;
	static public function reader_num_records_produced_eager_fallback(reader_handle:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Returns the number of records this Reader has produced.
		
		This is the same as the number of ReaderRead executions that have
		succeeded.
		
		Args:
		  reader_handle: A `Tensor` of type `resource`. Handle to a Reader.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `int64`.
	**/
	static public function reader_num_records_produced_v2(reader_handle:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function reader_num_records_produced_v2
	**/
	static public function reader_num_records_produced_v2_eager_fallback(reader_handle:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Returns the number of work units this Reader has finished processing.
		
		Args:
		  reader_handle: A `Tensor` of type mutable `string`. Handle to a Reader.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `int64`.
	**/
	static public function reader_num_work_units_completed(reader_handle:Dynamic, ?name:Dynamic):Dynamic;
	static public function reader_num_work_units_completed_eager_fallback(reader_handle:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Returns the number of work units this Reader has finished processing.
		
		Args:
		  reader_handle: A `Tensor` of type `resource`. Handle to a Reader.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `int64`.
	**/
	static public function reader_num_work_units_completed_v2(reader_handle:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function reader_num_work_units_completed_v2
	**/
	static public function reader_num_work_units_completed_v2_eager_fallback(reader_handle:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Returns the next record (key, value pair) produced by a Reader.
		
		Will dequeue from the input queue if necessary (e.g. when the
		Reader needs to start reading from a new file since it has finished
		with the previous file).
		
		Args:
		  reader_handle: A `Tensor` of type mutable `string`. Handle to a Reader.
		  queue_handle: A `Tensor` of type mutable `string`.
		    Handle to a Queue, with string work items.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (key, value).
		
		  key: A `Tensor` of type `string`.
		  value: A `Tensor` of type `string`.
	**/
	static public function reader_read(reader_handle:Dynamic, queue_handle:Dynamic, ?name:Dynamic):Dynamic;
	static public function reader_read_eager_fallback(reader_handle:Dynamic, queue_handle:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Returns up to `num_records` (key, value) pairs produced by a Reader.
		
		Will dequeue from the input queue if necessary (e.g. when the
		Reader needs to start reading from a new file since it has finished
		with the previous file).
		It may return less than `num_records` even before the last batch.
		
		Args:
		  reader_handle: A `Tensor` of type mutable `string`. Handle to a `Reader`.
		  queue_handle: A `Tensor` of type mutable `string`.
		    Handle to a `Queue`, with string work items.
		  num_records: A `Tensor` of type `int64`.
		    number of records to read from `Reader`.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (keys, values).
		
		  keys: A `Tensor` of type `string`.
		  values: A `Tensor` of type `string`.
	**/
	static public function reader_read_up_to(reader_handle:Dynamic, queue_handle:Dynamic, num_records:Dynamic, ?name:Dynamic):Dynamic;
	static public function reader_read_up_to_eager_fallback(reader_handle:Dynamic, queue_handle:Dynamic, num_records:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Returns up to `num_records` (key, value) pairs produced by a Reader.
		
		Will dequeue from the input queue if necessary (e.g. when the
		Reader needs to start reading from a new file since it has finished
		with the previous file).
		It may return less than `num_records` even before the last batch.
		
		Args:
		  reader_handle: A `Tensor` of type `resource`. Handle to a `Reader`.
		  queue_handle: A `Tensor` of type `resource`.
		    Handle to a `Queue`, with string work items.
		  num_records: A `Tensor` of type `int64`.
		    number of records to read from `Reader`.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (keys, values).
		
		  keys: A `Tensor` of type `string`.
		  values: A `Tensor` of type `string`.
	**/
	static public function reader_read_up_to_v2(reader_handle:Dynamic, queue_handle:Dynamic, num_records:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function reader_read_up_to_v2
	**/
	static public function reader_read_up_to_v2_eager_fallback(reader_handle:Dynamic, queue_handle:Dynamic, num_records:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Returns the next record (key, value pair) produced by a Reader.
		
		Will dequeue from the input queue if necessary (e.g. when the
		Reader needs to start reading from a new file since it has finished
		with the previous file).
		
		Args:
		  reader_handle: A `Tensor` of type `resource`. Handle to a Reader.
		  queue_handle: A `Tensor` of type `resource`.
		    Handle to a Queue, with string work items.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (key, value).
		
		  key: A `Tensor` of type `string`.
		  value: A `Tensor` of type `string`.
	**/
	static public function reader_read_v2(reader_handle:Dynamic, queue_handle:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function reader_read_v2
	**/
	static public function reader_read_v2_eager_fallback(reader_handle:Dynamic, queue_handle:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Restore a Reader to its initial clean state.
		
		Args:
		  reader_handle: A `Tensor` of type mutable `string`. Handle to a Reader.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function reader_reset(reader_handle:Dynamic, ?name:Dynamic):Dynamic;
	static public function reader_reset_eager_fallback(reader_handle:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Restore a Reader to its initial clean state.
		
		Args:
		  reader_handle: A `Tensor` of type `resource`. Handle to a Reader.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function reader_reset_v2(reader_handle:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function reader_reset_v2
	**/
	static public function reader_reset_v2_eager_fallback(reader_handle:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Restore a reader to a previously saved state.
		
		Not all Readers support being restored, so this can produce an
		Unimplemented error.
		
		Args:
		  reader_handle: A `Tensor` of type mutable `string`. Handle to a Reader.
		  state: A `Tensor` of type `string`.
		    Result of a ReaderSerializeState of a Reader with type
		    matching reader_handle.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function reader_restore_state(reader_handle:Dynamic, state:Dynamic, ?name:Dynamic):Dynamic;
	static public function reader_restore_state_eager_fallback(reader_handle:Dynamic, state:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Restore a reader to a previously saved state.
		
		Not all Readers support being restored, so this can produce an
		Unimplemented error.
		
		Args:
		  reader_handle: A `Tensor` of type `resource`. Handle to a Reader.
		  state: A `Tensor` of type `string`.
		    Result of a ReaderSerializeState of a Reader with type
		    matching reader_handle.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function reader_restore_state_v2(reader_handle:Dynamic, state:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function reader_restore_state_v2
	**/
	static public function reader_restore_state_v2_eager_fallback(reader_handle:Dynamic, state:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Produce a string tensor that encodes the state of a Reader.
		
		Not all Readers support being serialized, so this can produce an
		Unimplemented error.
		
		Args:
		  reader_handle: A `Tensor` of type mutable `string`. Handle to a Reader.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `string`.
	**/
	static public function reader_serialize_state(reader_handle:Dynamic, ?name:Dynamic):Dynamic;
	static public function reader_serialize_state_eager_fallback(reader_handle:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Produce a string tensor that encodes the state of a Reader.
		
		Not all Readers support being serialized, so this can produce an
		Unimplemented error.
		
		Args:
		  reader_handle: A `Tensor` of type `resource`. Handle to a Reader.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `string`.
	**/
	static public function reader_serialize_state_v2(reader_handle:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function reader_serialize_state_v2
	**/
	static public function reader_serialize_state_v2_eager_fallback(reader_handle:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Restores a tensor from checkpoint files.
		
		Reads a tensor stored in one or several files. If there are several files (for
		instance because a tensor was saved as slices), `file_pattern` may contain
		wildcard symbols (`*` and `?`) in the filename portion only, not in the
		directory portion.
		
		If a `file_pattern` matches several files, `preferred_shard` can be used to hint
		in which file the requested tensor is likely to be found. This op will first
		open the file at index `preferred_shard` in the list of matching files and try
		to restore tensors from that file.  Only if some tensors or tensor slices are
		not found in that first file, then the Op opens all the files. Setting
		`preferred_shard` to match the value passed as the `shard` input
		of a matching `Save` Op may speed up Restore.  This attribute only affects
		performance, not correctness.  The default value -1 means files are processed in
		order.
		
		See also `RestoreSlice`.
		
		Args:
		  file_pattern: A `Tensor` of type `string`.
		    Must have a single element. The pattern of the files from
		    which we read the tensor.
		  tensor_name: A `Tensor` of type `string`.
		    Must have a single element. The name of the tensor to be
		    restored.
		  dt: A `tf.DType`. The type of the tensor to be restored.
		  preferred_shard: An optional `int`. Defaults to `-1`.
		    Index of file to open first if multiple files match
		    `file_pattern`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `dt`.
	**/
	static public function restore(file_pattern:Dynamic, tensor_name:Dynamic, dt:Dynamic, ?preferred_shard:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function restore
	**/
	static public function restore_eager_fallback(file_pattern:Dynamic, tensor_name:Dynamic, dt:Dynamic, ?preferred_shard:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Restores a tensor from checkpoint files.
		
		This is like `Restore` except that restored tensor can be listed as filling
		only a slice of a larger tensor.  `shape_and_slice` specifies the shape of the
		larger tensor and the slice that the restored tensor covers.
		
		The `shape_and_slice` input has the same format as the
		elements of the `shapes_and_slices` input of the `SaveSlices` op.
		
		Args:
		  file_pattern: A `Tensor` of type `string`.
		    Must have a single element. The pattern of the files from
		    which we read the tensor.
		  tensor_name: A `Tensor` of type `string`.
		    Must have a single element. The name of the tensor to be
		    restored.
		  shape_and_slice: A `Tensor` of type `string`.
		    Scalar. The shapes and slice specifications to use when
		    restoring a tensors.
		  dt: A `tf.DType`. The type of the tensor to be restored.
		  preferred_shard: An optional `int`. Defaults to `-1`.
		    Index of file to open first if multiple files match
		    `file_pattern`. See the documentation for `Restore`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `dt`.
	**/
	static public function restore_slice(file_pattern:Dynamic, tensor_name:Dynamic, shape_and_slice:Dynamic, dt:Dynamic, ?preferred_shard:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function restore_slice
	**/
	static public function restore_slice_eager_fallback(file_pattern:Dynamic, tensor_name:Dynamic, shape_and_slice:Dynamic, dt:Dynamic, ?preferred_shard:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Restores tensors from a V2 checkpoint.
		
		For backward compatibility with the V1 format, this Op currently allows
		restoring from a V1 checkpoint as well:
		  - This Op first attempts to find the V2 index file pointed to by "prefix", and
		    if found proceed to read it as a V2 checkpoint;
		  - Otherwise the V1 read path is invoked.
		Relying on this behavior is not recommended, as the ability to fall back to read
		V1 might be deprecated and eventually removed.
		
		By default, restores the named tensors in full.  If the caller wishes to restore
		specific slices of stored tensors, "shape_and_slices" should be non-empty
		strings and correspondingly well-formed.
		
		Callers must ensure all the named tensors are indeed stored in the checkpoint.
		
		Args:
		  prefix: A `Tensor` of type `string`.
		    Must have a single element.  The prefix of a V2 checkpoint.
		  tensor_names: A `Tensor` of type `string`.
		    shape {N}.  The names of the tensors to be restored.
		  shape_and_slices: A `Tensor` of type `string`.
		    shape {N}.  The slice specs of the tensors to be restored.
		    Empty strings indicate that they are non-partitioned tensors.
		  dtypes: A list of `tf.DTypes` that has length `>= 1`.
		    shape {N}.  The list of expected dtype for the tensors.  Must match
		    those stored in the checkpoint.
		  name: A name for the operation (optional).
		
		Returns:
		  A list of `Tensor` objects of type `dtypes`.
	**/
	static public function restore_v2(prefix:Dynamic, tensor_names:Dynamic, shape_and_slices:Dynamic, dtypes:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function restore_v2
	**/
	static public function restore_v2_eager_fallback(prefix:Dynamic, tensor_names:Dynamic, shape_and_slices:Dynamic, dtypes:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Saves the input tensors to disk.
		
		The size of `tensor_names` must match the number of tensors in `data`. `data[i]`
		is written to `filename` with name `tensor_names[i]`.
		
		See also `SaveSlices`.
		
		Args:
		  filename: A `Tensor` of type `string`.
		    Must have a single element. The name of the file to which we write
		    the tensor.
		  tensor_names: A `Tensor` of type `string`.
		    Shape `[N]`. The names of the tensors to be saved.
		  data: A list of `Tensor` objects. `N` tensors to save.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function save(filename:Dynamic, tensor_names:Dynamic, data:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function save
	**/
	static public function save_eager_fallback(filename:Dynamic, tensor_names:Dynamic, data:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Saves input tensors slices to disk.
		
		This is like `Save` except that tensors can be listed in the saved file as being
		a slice of a larger tensor.  `shapes_and_slices` specifies the shape of the
		larger tensor and the slice that this tensor covers. `shapes_and_slices` must
		have as many elements as `tensor_names`.
		
		Elements of the `shapes_and_slices` input must either be:
		
		*  The empty string, in which case the corresponding tensor is
		   saved normally.
		*  A string of the form `dim0 dim1 ... dimN-1 slice-spec` where the
		   `dimI` are the dimensions of the larger tensor and `slice-spec`
		   specifies what part is covered by the tensor to save.
		
		`slice-spec` itself is a `:`-separated list: `slice0:slice1:...:sliceN-1`
		where each `sliceI` is either:
		
		*  The string `-` meaning that the slice covers all indices of this dimension
		*  `start,length` where `start` and `length` are integers.  In that
		   case the slice covers `length` indices starting at `start`.
		
		See also `Save`.
		
		Args:
		  filename: A `Tensor` of type `string`.
		    Must have a single element. The name of the file to which we write the
		    tensor.
		  tensor_names: A `Tensor` of type `string`.
		    Shape `[N]`. The names of the tensors to be saved.
		  shapes_and_slices: A `Tensor` of type `string`.
		    Shape `[N]`.  The shapes and slice specifications to use when
		    saving the tensors.
		  data: A list of `Tensor` objects. `N` tensors to save.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function save_slices(filename:Dynamic, tensor_names:Dynamic, shapes_and_slices:Dynamic, data:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function save_slices
	**/
	static public function save_slices_eager_fallback(filename:Dynamic, tensor_names:Dynamic, shapes_and_slices:Dynamic, data:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Saves tensors in V2 checkpoint format.
		
		By default, saves the named tensors in full.  If the caller wishes to save
		specific slices of full tensors, "shape_and_slices" should be non-empty strings
		and correspondingly well-formed.
		
		Args:
		  prefix: A `Tensor` of type `string`.
		    Must have a single element. The prefix of the V2 checkpoint to which we
		    write the tensors.
		  tensor_names: A `Tensor` of type `string`.
		    shape {N}. The names of the tensors to be saved.
		  shape_and_slices: A `Tensor` of type `string`.
		    shape {N}.  The slice specs of the tensors to be saved.
		    Empty strings indicate that they are non-partitioned tensors.
		  tensors: A list of `Tensor` objects. `N` tensors to save.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function save_v2(prefix:Dynamic, tensor_names:Dynamic, shape_and_slices:Dynamic, tensors:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function save_v2
	**/
	static public function save_v2_eager_fallback(prefix:Dynamic, tensor_names:Dynamic, shape_and_slices:Dynamic, tensors:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Generate a sharded filename. The filename is printf formatted as
		
		   %s-%05d-of-%05d, basename, shard, num_shards.
		
		Args:
		  basename: A `Tensor` of type `string`.
		  shard: A `Tensor` of type `int32`.
		  num_shards: A `Tensor` of type `int32`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `string`.
	**/
	static public function sharded_filename(basename:Dynamic, shard:Dynamic, num_shards:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function sharded_filename
	**/
	static public function sharded_filename_eager_fallback(basename:Dynamic, shard:Dynamic, num_shards:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Generate a glob pattern matching all sharded file names.
		
		Args:
		  basename: A `Tensor` of type `string`.
		  num_shards: A `Tensor` of type `int32`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `string`.
	**/
	static public function sharded_filespec(basename:Dynamic, num_shards:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function sharded_filespec
	**/
	static public function sharded_filespec_eager_fallback(basename:Dynamic, num_shards:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		A Reader that outputs the lines of a file delimited by '\n'.
		
		Args:
		  skip_header_lines: An optional `int`. Defaults to `0`.
		    Number of lines to skip from the beginning of every file.
		  container: An optional `string`. Defaults to `""`.
		    If non-empty, this reader is placed in the given container.
		    Otherwise, a default container is used.
		  shared_name: An optional `string`. Defaults to `""`.
		    If non-empty, this reader is named in the given bucket
		    with this shared_name. Otherwise, the node name is used instead.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type mutable `string`.
	**/
	static public function text_line_reader(?skip_header_lines:Dynamic, ?container:Dynamic, ?shared_name:Dynamic, ?name:Dynamic):Dynamic;
	static public function text_line_reader_eager_fallback(?skip_header_lines:Dynamic, ?container:Dynamic, ?shared_name:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		A Reader that outputs the lines of a file delimited by '\n'.
		
		Args:
		  skip_header_lines: An optional `int`. Defaults to `0`.
		    Number of lines to skip from the beginning of every file.
		  container: An optional `string`. Defaults to `""`.
		    If non-empty, this reader is placed in the given container.
		    Otherwise, a default container is used.
		  shared_name: An optional `string`. Defaults to `""`.
		    If non-empty, this reader is named in the given bucket
		    with this shared_name. Otherwise, the node name is used instead.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `resource`.
	**/
	static public function text_line_reader_v2(?skip_header_lines:Dynamic, ?container:Dynamic, ?shared_name:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function text_line_reader_v2
	**/
	static public function text_line_reader_v2_eager_fallback(?skip_header_lines:Dynamic, ?container:Dynamic, ?shared_name:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		A Reader that outputs the records from a TensorFlow Records file.
		
		Args:
		  container: An optional `string`. Defaults to `""`.
		    If non-empty, this reader is placed in the given container.
		    Otherwise, a default container is used.
		  shared_name: An optional `string`. Defaults to `""`.
		    If non-empty, this reader is named in the given bucket
		    with this shared_name. Otherwise, the node name is used instead.
		  compression_type: An optional `string`. Defaults to `""`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type mutable `string`.
	**/
	static public function tf_record_reader(?container:Dynamic, ?shared_name:Dynamic, ?compression_type:Dynamic, ?name:Dynamic):Dynamic;
	static public function tf_record_reader_eager_fallback(?container:Dynamic, ?shared_name:Dynamic, ?compression_type:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		A Reader that outputs the records from a TensorFlow Records file.
		
		Args:
		  container: An optional `string`. Defaults to `""`.
		    If non-empty, this reader is placed in the given container.
		    Otherwise, a default container is used.
		  shared_name: An optional `string`. Defaults to `""`.
		    If non-empty, this reader is named in the given bucket
		    with this shared_name. Otherwise, the node name is used instead.
		  compression_type: An optional `string`. Defaults to `""`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `resource`.
	**/
	static public function tf_record_reader_v2(?container:Dynamic, ?shared_name:Dynamic, ?compression_type:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function tf_record_reader_v2
	**/
	static public function tf_record_reader_v2_eager_fallback(?container:Dynamic, ?shared_name:Dynamic, ?compression_type:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		A Reader that outputs the entire contents of a file as a value.
		
		To use, enqueue filenames in a Queue.  The output of ReaderRead will
		be a filename (key) and the contents of that file (value).
		
		Args:
		  container: An optional `string`. Defaults to `""`.
		    If non-empty, this reader is placed in the given container.
		    Otherwise, a default container is used.
		  shared_name: An optional `string`. Defaults to `""`.
		    If non-empty, this reader is named in the given bucket
		    with this shared_name. Otherwise, the node name is used instead.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type mutable `string`.
	**/
	static public function whole_file_reader(?container:Dynamic, ?shared_name:Dynamic, ?name:Dynamic):Dynamic;
	static public function whole_file_reader_eager_fallback(?container:Dynamic, ?shared_name:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		A Reader that outputs the entire contents of a file as a value.
		
		To use, enqueue filenames in a Queue.  The output of ReaderRead will
		be a filename (key) and the contents of that file (value).
		
		Args:
		  container: An optional `string`. Defaults to `""`.
		    If non-empty, this reader is placed in the given container.
		    Otherwise, a default container is used.
		  shared_name: An optional `string`. Defaults to `""`.
		    If non-empty, this reader is named in the given bucket
		    with this shared_name. Otherwise, the node name is used instead.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `resource`.
	**/
	static public function whole_file_reader_v2(?container:Dynamic, ?shared_name:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function whole_file_reader_v2
	**/
	static public function whole_file_reader_v2_eager_fallback(?container:Dynamic, ?shared_name:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Writes contents to the file at input filename. Creates file and recursively
		
		creates directory if not existing.
		
		Args:
		  filename: A `Tensor` of type `string`.
		    scalar. The name of the file to which we write the contents.
		  contents: A `Tensor` of type `string`.
		    scalar. The content to be written to the output file.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function write_file(filename:Dynamic, contents:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function write_file
	**/
	static public function write_file_eager_fallback(filename:Dynamic, contents:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
}