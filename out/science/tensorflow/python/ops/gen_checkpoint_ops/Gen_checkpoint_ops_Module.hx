/* This file is generated, do not edit! */
package tensorflow.python.ops.gen_checkpoint_ops;
@:pythonImport("tensorflow.python.ops.gen_checkpoint_ops") extern class Gen_checkpoint_ops_Module {
	/**
		Given a path to new and old vocabulary files, returns a remapping Tensor of
		
		length `num_new_vocab`, where `remapping[i]` contains the row number in the old
		vocabulary that corresponds to row `i` in the new vocabulary (starting at line
		`new_vocab_offset` and up to `num_new_vocab` entities), or `-1` if entry `i`
		in the new vocabulary is not in the old vocabulary.  The old vocabulary is
		constrained to the first `old_vocab_size` entries if `old_vocab_size` is not the
		default value of -1.
		
		`num_vocab_offset` enables
		use in the partitioned variable case, and should generally be set through
		examining partitioning info.  The format of the files should be a text file,
		with each line containing a single entity within the vocabulary.
		
		For example, with `new_vocab_file` a text file containing each of the following
		elements on a single line: `[f0, f1, f2, f3]`, old_vocab_file = [f1, f0, f3],
		`num_new_vocab = 3, new_vocab_offset = 1`, the returned remapping would be
		`[0, -1, 2]`.
		
		The op also returns a count of how many entries in the new vocabulary
		were present in the old vocabulary, which is used to calculate the number of
		values to initialize in a weight matrix remapping
		
		This functionality can be used to remap both row vocabularies (typically,
		features) and column vocabularies (typically, classes) from TensorFlow
		checkpoints.  Note that the partitioning logic relies on contiguous vocabularies
		corresponding to div-partitioned variables.  Moreover, the underlying remapping
		uses an IndexTable (as opposed to an inexact CuckooTable), so client code should
		use the corresponding index_table_from_file() as the FeatureColumn framework
		does (as opposed to tf.feature_to_id(), which uses a CuckooTable).
		
		Args:
		  new_vocab_file: A `Tensor` of type `string`. Path to the new vocab file.
		  old_vocab_file: A `Tensor` of type `string`. Path to the old vocab file.
		  new_vocab_offset: An `int` that is `>= 0`.
		    How many entries into the new vocab file to start reading.
		  num_new_vocab: An `int` that is `>= 0`.
		    Number of entries in the new vocab file to remap.
		  old_vocab_size: An optional `int` that is `>= -1`. Defaults to `-1`.
		    Number of entries in the old vocab file to consider.  If -1,
		    use the entire old vocabulary.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (remapping, num_present).
		
		  remapping: A `Tensor` of type `int64`.
		  num_present: A `Tensor` of type `int32`.
	**/
	static public function GenerateVocabRemapping(new_vocab_file:Dynamic, old_vocab_file:Dynamic, new_vocab_offset:Dynamic, num_new_vocab:Dynamic, ?old_vocab_size:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Loads a 2-D (matrix) `Tensor` with name `old_tensor_name` from the checkpoint
		
		at `ckpt_path` and potentially reorders its rows and columns using the
		specified remappings.
		
		Most users should use one of the wrapper initializers (such as
		`tf.contrib.framework.load_and_remap_matrix_initializer`) instead of this
		function directly.
		
		The remappings are 1-D tensors with the following properties:
		
		* `row_remapping` must have exactly `num_rows` entries. Row `i` of the output
		  matrix will be initialized from the row corresponding to index
		  `row_remapping[i]` in the old `Tensor` from the checkpoint.
		* `col_remapping` must have either 0 entries (indicating that no column
		  reordering is needed) or `num_cols` entries. If specified, column `j` of the
		  output matrix will be initialized from the column corresponding to index
		  `col_remapping[j]` in the old `Tensor` from the checkpoint.
		* A value of -1 in either of the remappings signifies a "missing" entry. In that
		  case, values from the `initializing_values` tensor will be used to fill that
		  missing row or column. If `row_remapping` has `r` missing entries and
		  `col_remapping` has `c` missing entries, then the following condition must be
		  true:
		
		`(r * num_cols) + (c * num_rows) - (r * c) == len(initializing_values)`
		
		The remapping tensors can be generated using the GenerateVocabRemapping op.
		
		As an example, with row_remapping = [1, 0, -1], col_remapping = [0, 2, -1],
		initializing_values = [0.5, -0.5, 0.25, -0.25, 42], and w(i, j) representing
		the value from row i, column j of the old tensor in the checkpoint, the output
		matrix will look like the following:
		
		[[w(1, 0),  w(1, 2),  0.5],
		 [w(0, 0),  w(0, 2), -0.5],
		 [0.25,    -0.25,      42]]
		
		Args:
		  ckpt_path: A `Tensor` of type `string`.
		    Path to the TensorFlow checkpoint (version 2, `TensorBundle`) from
		    which the old matrix `Tensor` will be loaded.
		  old_tensor_name: A `Tensor` of type `string`.
		    Name of the 2-D `Tensor` to load from checkpoint.
		  row_remapping: A `Tensor` of type `int64`.
		    An int `Tensor` of row remappings (generally created by
		    `generate_vocab_remapping`).  Even if no row remapping is needed, this must
		    still be an index-valued Tensor (e.g. [0, 1, 2, ...]), or a shifted
		    index-valued `Tensor` (e.g. [8, 9, 10, ...], for partitioned `Variables`).
		  col_remapping: A `Tensor` of type `int64`.
		    An int `Tensor` of column remappings (generally created by
		    `generate_vocab_remapping`).  May be a size-0 `Tensor` if only row remapping
		    is to be done (e.g. column ordering is the same).
		  initializing_values: A `Tensor` of type `float32`.
		    A float `Tensor` containing  values to fill in for cells
		    in the output matrix that are not loaded from the checkpoint. Length must be
		    exactly the same as the number of missing / new cells.
		  num_rows: An `int` that is `>= 0`.
		    Number of rows (length of the 1st dimension) in the output matrix.
		  num_cols: An `int` that is `>= 1`.
		    Number of columns (length of the 2nd dimension) in the output matrix.
		  max_rows_in_memory: An optional `int`. Defaults to `-1`.
		    The maximum number of rows to load from the checkpoint at
		    once. If less than or equal to 0, the entire matrix will be loaded into
		    memory. Setting this arg trades increased disk reads for lower memory usage.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `float32`.
	**/
	static public function LoadAndRemapMatrix(ckpt_path:Dynamic, old_tensor_name:Dynamic, row_remapping:Dynamic, col_remapping:Dynamic, initializing_values:Dynamic, num_rows:Dynamic, num_cols:Dynamic, ?max_rows_in_memory:Dynamic, ?name:Dynamic):Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
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
		Given a path to new and old vocabulary files, returns a remapping Tensor of
		
		length `num_new_vocab`, where `remapping[i]` contains the row number in the old
		vocabulary that corresponds to row `i` in the new vocabulary (starting at line
		`new_vocab_offset` and up to `num_new_vocab` entities), or `-1` if entry `i`
		in the new vocabulary is not in the old vocabulary.  The old vocabulary is
		constrained to the first `old_vocab_size` entries if `old_vocab_size` is not the
		default value of -1.
		
		`num_vocab_offset` enables
		use in the partitioned variable case, and should generally be set through
		examining partitioning info.  The format of the files should be a text file,
		with each line containing a single entity within the vocabulary.
		
		For example, with `new_vocab_file` a text file containing each of the following
		elements on a single line: `[f0, f1, f2, f3]`, old_vocab_file = [f1, f0, f3],
		`num_new_vocab = 3, new_vocab_offset = 1`, the returned remapping would be
		`[0, -1, 2]`.
		
		The op also returns a count of how many entries in the new vocabulary
		were present in the old vocabulary, which is used to calculate the number of
		values to initialize in a weight matrix remapping
		
		This functionality can be used to remap both row vocabularies (typically,
		features) and column vocabularies (typically, classes) from TensorFlow
		checkpoints.  Note that the partitioning logic relies on contiguous vocabularies
		corresponding to div-partitioned variables.  Moreover, the underlying remapping
		uses an IndexTable (as opposed to an inexact CuckooTable), so client code should
		use the corresponding index_table_from_file() as the FeatureColumn framework
		does (as opposed to tf.feature_to_id(), which uses a CuckooTable).
		
		Args:
		  new_vocab_file: A `Tensor` of type `string`. Path to the new vocab file.
		  old_vocab_file: A `Tensor` of type `string`. Path to the old vocab file.
		  new_vocab_offset: An `int` that is `>= 0`.
		    How many entries into the new vocab file to start reading.
		  num_new_vocab: An `int` that is `>= 0`.
		    Number of entries in the new vocab file to remap.
		  old_vocab_size: An optional `int` that is `>= -1`. Defaults to `-1`.
		    Number of entries in the old vocab file to consider.  If -1,
		    use the entire old vocabulary.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (remapping, num_present).
		
		  remapping: A `Tensor` of type `int64`.
		  num_present: A `Tensor` of type `int32`.
	**/
	static public function generate_vocab_remapping(new_vocab_file:Dynamic, old_vocab_file:Dynamic, new_vocab_offset:Dynamic, num_new_vocab:Dynamic, ?old_vocab_size:Dynamic, ?name:Dynamic):Dynamic;
	static public function generate_vocab_remapping_eager_fallback(new_vocab_file:Dynamic, old_vocab_file:Dynamic, new_vocab_offset:Dynamic, num_new_vocab:Dynamic, old_vocab_size:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Loads a 2-D (matrix) `Tensor` with name `old_tensor_name` from the checkpoint
		
		at `ckpt_path` and potentially reorders its rows and columns using the
		specified remappings.
		
		Most users should use one of the wrapper initializers (such as
		`tf.contrib.framework.load_and_remap_matrix_initializer`) instead of this
		function directly.
		
		The remappings are 1-D tensors with the following properties:
		
		* `row_remapping` must have exactly `num_rows` entries. Row `i` of the output
		  matrix will be initialized from the row corresponding to index
		  `row_remapping[i]` in the old `Tensor` from the checkpoint.
		* `col_remapping` must have either 0 entries (indicating that no column
		  reordering is needed) or `num_cols` entries. If specified, column `j` of the
		  output matrix will be initialized from the column corresponding to index
		  `col_remapping[j]` in the old `Tensor` from the checkpoint.
		* A value of -1 in either of the remappings signifies a "missing" entry. In that
		  case, values from the `initializing_values` tensor will be used to fill that
		  missing row or column. If `row_remapping` has `r` missing entries and
		  `col_remapping` has `c` missing entries, then the following condition must be
		  true:
		
		`(r * num_cols) + (c * num_rows) - (r * c) == len(initializing_values)`
		
		The remapping tensors can be generated using the GenerateVocabRemapping op.
		
		As an example, with row_remapping = [1, 0, -1], col_remapping = [0, 2, -1],
		initializing_values = [0.5, -0.5, 0.25, -0.25, 42], and w(i, j) representing
		the value from row i, column j of the old tensor in the checkpoint, the output
		matrix will look like the following:
		
		[[w(1, 0),  w(1, 2),  0.5],
		 [w(0, 0),  w(0, 2), -0.5],
		 [0.25,    -0.25,      42]]
		
		Args:
		  ckpt_path: A `Tensor` of type `string`.
		    Path to the TensorFlow checkpoint (version 2, `TensorBundle`) from
		    which the old matrix `Tensor` will be loaded.
		  old_tensor_name: A `Tensor` of type `string`.
		    Name of the 2-D `Tensor` to load from checkpoint.
		  row_remapping: A `Tensor` of type `int64`.
		    An int `Tensor` of row remappings (generally created by
		    `generate_vocab_remapping`).  Even if no row remapping is needed, this must
		    still be an index-valued Tensor (e.g. [0, 1, 2, ...]), or a shifted
		    index-valued `Tensor` (e.g. [8, 9, 10, ...], for partitioned `Variables`).
		  col_remapping: A `Tensor` of type `int64`.
		    An int `Tensor` of column remappings (generally created by
		    `generate_vocab_remapping`).  May be a size-0 `Tensor` if only row remapping
		    is to be done (e.g. column ordering is the same).
		  initializing_values: A `Tensor` of type `float32`.
		    A float `Tensor` containing  values to fill in for cells
		    in the output matrix that are not loaded from the checkpoint. Length must be
		    exactly the same as the number of missing / new cells.
		  num_rows: An `int` that is `>= 0`.
		    Number of rows (length of the 1st dimension) in the output matrix.
		  num_cols: An `int` that is `>= 1`.
		    Number of columns (length of the 2nd dimension) in the output matrix.
		  max_rows_in_memory: An optional `int`. Defaults to `-1`.
		    The maximum number of rows to load from the checkpoint at
		    once. If less than or equal to 0, the entire matrix will be loaded into
		    memory. Setting this arg trades increased disk reads for lower memory usage.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `float32`.
	**/
	static public function load_and_remap_matrix(ckpt_path:Dynamic, old_tensor_name:Dynamic, row_remapping:Dynamic, col_remapping:Dynamic, initializing_values:Dynamic, num_rows:Dynamic, num_cols:Dynamic, ?max_rows_in_memory:Dynamic, ?name:Dynamic):Dynamic;
	static public function load_and_remap_matrix_eager_fallback(ckpt_path:Dynamic, old_tensor_name:Dynamic, row_remapping:Dynamic, col_remapping:Dynamic, initializing_values:Dynamic, num_rows:Dynamic, num_cols:Dynamic, max_rows_in_memory:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}