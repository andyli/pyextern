/* This file is generated, do not edit! */
package tensorflow.contrib.framework.python.ops.checkpoint_ops;
@:pythonImport("tensorflow.contrib.framework.python.ops.checkpoint_ops") extern class Checkpoint_ops_Module {
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
		Returns a var initializer for loading and remapping a 2-D (matrix) tensor.
		
		The returned initializer loads a 2-D (matrix) `Tensor` with name
		`old_tensor_name` from the checkpoint at `ckpt_path`. It will reorder the
		rows/columns according to the specified vocab files and append additional
		out-of-vocabulary rows/columns according to the number of OOV buckets.
		
		The format of the file at the `{old,new}_{row,col}_vocab_file` path should be
		a text file, with each line containing a single entity within the vocabulary.
		Let the function `line_of(f, "x")` return the 0-indexed line number of the
		entity "x" in file f, and the function `entity_at(f, i)` return the entity at
		line i of file f. Then, row i of the new output matrix will be taken from row
		`line_of(old_row_vocab_file, entity_at(new_row_vocab_file, i))` of the old
		matrix. If any entity in `new_row_vocab_file` is not found in
		`old_row_vocab_file`, that row is considered a "missing" row, and its values
		will be initialized using the `initializer` arg. The same logic also applies
		for the columns.
		
		For example, assuming that:
		
		* `old_row_vocab_file` contains "mercury\nvenus\nmars"
		* `new_row_vocab_file` contains "venus\njupiter\nmercury"
		* `old_col_vocab_file` contains "good\nbetter\nbest"
		* `new_col_vocab_file` contains "good\nbest\nfantastic"
		* `initializer` returns the natural numbers `[1, 2, 3, 4, ...]`
		* `w(i, j)` represents the value from row i, column j of the old matrix
		
		Then the new output matrix will look like:
		
		`[[w(1, 0), w(1, 2), 1],
		  [2,       3,       4],
		  [w(0, 0), w(0, 2), 5]]`
		
		If we further specify that:
		
		* `num_row_oov_buckets` == 2
		* `num_col_oov_buckets` == 1
		
		Then the new output matrix will look like:
		
		`[[w(1, 0), w(1, 2), 1,  12],
		  [2,       3,       4,  13],
		  [w(0, 0), w(0, 2), 5,  14],
		  [6,       7,       8,  15],
		  [9,       10,      11, 16]]`
		
		If `{old,new}_row_vocab_file` are None, we assume that the old and new row
		vocab files are the same, and no row remapping is done. If
		`{old,new}_col_vocab_file` are None, we assume that the old and new column
		vocab files are the same, and no column remapping is done.
		
		The returned initializer only supports div-partitioning along the row axis. It
		does not support partitioning along the column axis (as this is not common in
		practice) or mod-partitioning.
		
		NOTE: When this is used to warm-start variables, client code should use
		`tf.lookup.index_table_from_tensor()` like
		contrib/layers/python/layers/feature_column.py does, as opposed to
		`tf.feature_to_id()` - in order to ensure the underlying lookup tables are the
		same.
		
		Args:
		  ckpt_path: Path to the TensorFlow checkpoint (version 2, `TensorBundle`)
		    from which the old matrix `Tensor` will be loaded.
		  old_tensor_name: Name of the 2-D `Tensor` to load from checkpoint.
		  new_row_vocab_size: `int` specifying the number of entries in
		    `new_row_vocab_file`. If no row remapping is needed (no row vocab
		    provided), this should be equal to the number of rows to load from the old
		    matrix (which can theoretically be smaller than the number of rows in the
		    old matrix).
		  new_col_vocab_size: `int` specifying the number of entries in
		    `new_col_vocab_file`. If no column remapping is needed (no column vocab
		    provided), this should be equal to the number of columns in the old
		    matrix.
		  old_row_vocab_size: The number of entries to consider in the old vocabulary.
		    With the default value of -1, the entire old row vocabulary file will be
		    used.  Otherwise, only the first `old_row_vocab_size` entries will be
		    considered for remapping.Must be smaller than the length of
		    `old_row_vocab_file`.  NOTE: we do not provide an equivalent
		    `old_col_vocab_size` for classes.
		  old_row_vocab_file: A scalar `Tensor` of type `string` containing the
		    path to the old row vocabulary file. Can be None, which represents no
		    remapping on the row axis.
		  new_row_vocab_file: A scalar `Tensor` of type `string` containing the path
		    to the new row vocabulary file. Can be None, which represents no remapping
		    on the row axis.
		  old_col_vocab_file: A scalar `Tensor` of type `string` containing the
		    path to the old column vocabulary file. Can be None, which represents no
		    remapping on the column axis.
		  new_col_vocab_file: A scalar `Tensor` of type `string` containing the path
		    to the new column vocabulary file. Can be None, which represents no
		    remapping on the column axis.
		  num_row_oov_buckets: `int` specifying the number of out-of-vocabulary rows
		    to append. Must be >= 0.
		  num_col_oov_buckets: `int` specifying the number of out-of-vocabulary
		    columns to append. Must be >= 0.
		  initializer: Initializer function to initialize missing values. Accepts a
		    1-D tensor as the arg to specify the shape of the returned tensor. If
		    `None`, defaults to using `zeros_initializer()`.
		  max_rows_in_memory: `int` specifying the maximum number of rows to load from
		    the checkpoint at once. If less than or equal to 0, the entire matrix will
		    be loaded into memory. Setting this arg trades increased disk reads for
		    lower memory usage.
		
		Returns:
		  A variable initializer function that should be used to initialize a
		  (potentially partitioned) `Variable` whose complete shape is
		  `[new_row_vocab_size + num_row_oov_buckets, new_col_vocab_size +
		  num_col_oov_buckets]`.
		
		Raises:
		  TypeError: If `initializer` is specified but not callable.
	**/
	static public function load_and_remap_matrix_initializer(ckpt_path:Dynamic, old_tensor_name:Dynamic, new_row_vocab_size:Dynamic, new_col_vocab_size:Dynamic, ?old_row_vocab_size:Dynamic, ?old_row_vocab_file:Dynamic, ?new_row_vocab_file:Dynamic, ?old_col_vocab_file:Dynamic, ?new_col_vocab_file:Dynamic, ?num_row_oov_buckets:Dynamic, ?num_col_oov_buckets:Dynamic, ?initializer:Dynamic, ?max_rows_in_memory:Dynamic):Dynamic;
	/**
		Returns a variable initializer for loading pre-trained embeddings.
		
		Wrapper around `load_and_remap_matrix_initializer()` specialized for loading
		embedding weights and remapping according to the provided vocab files. See
		docs for `load_and_remap_matrix_initializer()` for more details.
		
		NOTE: Only for use with div-partitioned variables / vocabularies.
		
		Args:
		  ckpt_path: Path to the TensorFlow checkpoint (version 2, `TensorBundle`)
		    from which the old matrix `Tensor` will be loaded.
		  embedding_tensor_name: Name of the 2-D `Tensor` to load from checkpoint.
		  new_vocab_size: Number of entries in the new vocab.
		  embedding_dim: `int` specifying the dimension of the embedding vectors from
		    the checkpoint. Must match the number of columns in the old embedding
		    matrix.
		  old_vocab_file: A scalar `Tensor` of type `string` containing the
		    path to the old vocabulary file.
		  new_vocab_file: A scalar `Tensor` of type `string` containing the
		    path to the new vocabulary file.
		  old_vocab_size: The number of entries to consider in the old vocabulary.
		    With the default value of -1, the entire old row vocabulary file will be
		    used.  Otherwise, only the first `old_vocab_size` entries will be
		    considered for remapping.Must be smaller than the length of
		    `old_row_vocab_file`.
		  num_oov_buckets: `int` specifying the number of out-of-vocabulary
		    buckets to use. Must be >= 0.
		  initializer: Initializer function that accepts a 1-D tensor as the arg to
		    specify the shape of the returned tensor. If `None`, defaults to using
		    `truncated_normal_initializer()`.
		  max_rows_in_memory: `int` specifying the maximum number of rows to load from
		    the checkpoint at once. If less than or equal to 0, the entire matrix will
		    be loaded into memory. Setting this arg trades increased disk reads for
		    lower memory usage.
		
		Returns:
		  A variable initializer function.
	**/
	static public function load_embedding_initializer(ckpt_path:Dynamic, embedding_tensor_name:Dynamic, new_vocab_size:Dynamic, embedding_dim:Dynamic, old_vocab_file:Dynamic, new_vocab_file:Dynamic, ?old_vocab_size:Dynamic, ?num_oov_buckets:Dynamic, ?initializer:Dynamic, ?max_rows_in_memory:Dynamic):Dynamic;
	/**
		Loads pre-trained multi-class biases for linear models from checkpoint.
		
		Wrapper around `load_and_remap_matrix_initializer()` specialized for loading
		multi-class bias and remapping according to the provided vocab files. See docs
		for `load_and_remap_matrix_initializer()` for more details. In this case, the
		provided row_vocab is the class vocabulary, and the expected shape is
		`[new_class_vocab_size, 1]`.
		
		Args:
		  ckpt_path: Path to the TensorFlow checkpoint (version 2, `TensorBundle`)
		    from which the old matrix `Tensor` will be loaded.
		  bias_tensor_name: Tensor name to load from in the checkpoints.
		  new_class_vocab_size: Number of entries in the new class vocab.
		  old_class_vocab_file: A scalar `Tensor` of type `string` containing the
		    path to the old class vocabulary file.
		  new_class_vocab_file: A scalar `Tensor` of type `string` containing the
		    path to the new class vocabulary file.
		  num_class_oov_buckets: `int` specifying the number of out-of-vocabulary
		    buckets to use for the classes. Must be >= 0.
		  initializer: Initializer function that accepts a 1-D tensor as the arg to
		    specify the shape of the returned tensor. If `None`, defaults to using
		    `zeros_initializer()`.
		  max_rows_in_memory: `int` specifying the maximum number of rows to load from
		    the checkpoint at once. If less than or equal to 0, the entire matrix will
		    be loaded into memory. Setting this arg trades increased disk reads for
		    lower memory usage.
		
		Returns:
		  A variable initializer function.
	**/
	static public function load_linear_multiclass_bias_initializer(ckpt_path:Dynamic, bias_tensor_name:Dynamic, new_class_vocab_size:Dynamic, old_class_vocab_file:Dynamic, new_class_vocab_file:Dynamic, ?num_class_oov_buckets:Dynamic, ?initializer:Dynamic, ?max_rows_in_memory:Dynamic):Dynamic;
	/**
		Loads pre-trained multi-class slots for linear models from checkpoint.
		
		Wrapper around `load_and_remap_matrix_initializer()` specialized for loading
		multi-class slots (such as optimizer accumulators) and remapping them
		according to the provided vocab files. See docs for
		`load_and_remap_matrix_initializer()` for more details.  Takes in a
		`variable_scope._PartitionInfo` representing the slot's primary `Variable`'s
		partitioning.  This is necessary since accumulator `Variable` creation ignores
		primary scoping and partitioning information.
		
		Args:
		  ckpt_path: Path to the TensorFlow checkpoint (version 2, `TensorBundle`)
		    from which the old matrix `Tensor` will be loaded.
		  old_tensor_name: Name of the 2-D `Tensor` to load from checkpoint.
		  primary_partition_info: A `variable_scope._PartitionInfo` containing this
		    slot's primary `Variable`'s partitioning information.  This is used to
		    calculate the offset and override the partition_info passed to the call to
		    _initialize.
		  new_row_vocab_size: `int` specifying the number of entries in
		    `new_row_vocab_file`. If no row remapping is needed (no row vocab
		    provided), this should be equal to the number of rows to load from the old
		    matrix (which can theoretically be smaller than the number of rows in the
		    old matrix).
		  new_col_vocab_size: `int` specifying the number of entries in
		    `new_col_vocab_file`. If no column remapping is needed (no column vocab
		    provided), this should be equal to the number of columns in the old
		    matrix.
		  old_row_vocab_file: A scalar `Tensor` of type `string` containing the
		    path to the old row vocabulary file. Can be None, which represents no
		    remapping on the row axis.
		  new_row_vocab_file: A scalar `Tensor` of type `string` containing the path
		    to the new row vocabulary file. Can be None, which represents no remapping
		    on the row axis.
		  old_col_vocab_file: A scalar `Tensor` of type `string` containing the
		    path to the old column vocabulary file. Can be None, which represents no
		    remapping on the column axis.
		  new_col_vocab_file: A scalar `Tensor` of type `string` containing the path
		    to the new column vocabulary file. Can be None, which represents no
		    remapping on the column axis.
		  num_row_oov_buckets: `int` specifying the number of out-of-vocabulary rows
		    to append. Must be >= 0.
		  num_col_oov_buckets: `int` specifying the number of out-of-vocabulary
		    columns to append. Must be >= 0.
		  initializer: Initializer function to initialize missing values. Accepts a
		    1-D tensor as the arg to specify the shape of the returned tensor. If
		    `None`, defaults to using `zeros_initializer()`.
		  max_rows_in_memory: `int` specifying the maximum number of rows to load from
		    the checkpoint at once. If less than or equal to 0, the entire matrix will
		    be loaded into memory. Setting this arg trades increased disk reads for
		    lower memory usage.
		
		Returns:
		  A variable initializer function that should be used to initialize a
		  (potentially partitioned) `Variable` whose complete shape is
		  `[new_row_vocab_size + num_row_oov_buckets, new_col_vocab_size +
		  num_col_oov_buckets]`.
		
		Raises:
		  TypeError: If `initializer` is specified but not callable.
	**/
	static public function load_variable_slot_initializer(ckpt_path:Dynamic, old_tensor_name:Dynamic, primary_partition_info:Dynamic, new_row_vocab_size:Dynamic, new_col_vocab_size:Dynamic, ?old_row_vocab_file:Dynamic, ?new_row_vocab_file:Dynamic, ?old_col_vocab_file:Dynamic, ?new_col_vocab_file:Dynamic, ?num_row_oov_buckets:Dynamic, ?num_col_oov_buckets:Dynamic, ?initializer:Dynamic, ?max_rows_in_memory:Dynamic):Dynamic;
	static public var print_function : Dynamic;
}