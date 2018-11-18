/* This file is generated, do not edit! */
package tensorflow.contrib.framework.python.ops;
@:pythonImport("tensorflow.contrib.framework.python.ops") extern class Ops_Module {
	static public var CRITICAL_SECTIONS : Dynamic;
	static public var CRITICAL_SECTION_EXECUTIONS : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __path__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Decorates a function with args so it can be used within an arg_scope.
		
		Args:
		  func: function to decorate.
		
		Returns:
		  A tuple with the decorated function func_with_args().
	**/
	static public function add_arg_scope(func:Dynamic):Dynamic;
	/**
		Adds a variable to the `GraphKeys.MODEL_VARIABLES` collection.
		
		Args:
		  var: a variable.
	**/
	static public function add_model_variable(_var:Dynamic):Dynamic;
	/**
		Stores the default arguments for the given set of list_ops.
		
		For usage, please see examples at top of the file.
		
		Args:
		  list_ops_or_scope: List or tuple of operations to set argument scope for or
		    a dictionary containing the current scope. When list_ops_or_scope is a
		    dict, kwargs must be empty. When list_ops_or_scope is a list or tuple,
		    then every op in it need to be decorated with @add_arg_scope to work.
		  **kwargs: keyword=value that will define the defaults for each op in
		            list_ops. All the ops need to accept the given set of arguments.
		
		Yields:
		  the current_scope, which is a dictionary of {op: {arg: value}}
		Raises:
		  TypeError: if list_ops is not a list or a tuple.
		  ValueError: if any op in list_ops has not be decorated with @add_arg_scope.
	**/
	static public function arg_scope(list_ops_or_scope:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function arg_scope_func_key(op:Dynamic):Dynamic;
	/**
		Returns the list kwargs that arg_scope can set for a func.
		
		Args:
		  func: function which has been decorated with @add_arg_scope.
		
		Returns:
		  a list of kwargs names.
	**/
	static public function arg_scoped_arguments(func:Dynamic):Dynamic;
	/**
		Returns the indices of a tensor that give its sorted order along an axis.
		
		For a 1D tensor, `tf.gather(values, tf.argsort(values))` is equivalent to
		`tf.sort(values)`. For higher dimensions, the output has the same shape as
		`values`, but along the given axis, values represent the index of the sorted
		element in that slice of the tensor at the given position.
		
		Args:
		  values: 1-D or higher numeric `Tensor`.
		  axis: The axis along which to sort. The default is -1, which sorts the last
		      axis.
		  direction: The direction in which to sort the values (`'ASCENDING'` or
		      `'DESCENDING'`).
		  stable: If True, equal elements in the original tensor will not be
		      re-ordered in the returned order. Unstable sort is not yet implemented,
		      but will eventually be the default for performance reasons. If you
		      require a stable order, pass `stable=True` for forwards compatibility.
		  name: Optional name for the operation.
		
		Returns:
		  An int32 `Tensor` with the same shape as `values`. The indices that would
		      sort each slice of the given `values` along the given `axis`.
		
		Raises:
		  ValueError: If axis is not a constant scalar, or the direction is invalid.
	**/
	static public function argsort(values:Dynamic, ?axis:Dynamic, ?direction:Dynamic, ?stable:Dynamic, ?name:Dynamic):Dynamic;
	/**
		DEPRECATED FUNCTION
		
		THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Please switch to tf.train.assert_global_step
	**/
	static public function assert_global_step(global_step_tensor:Dynamic):Dynamic;
	/**
		Verifies that a global step tensor is valid or gets one if None is given.
		
		If `global_step_tensor` is not None, check that it is a valid global step
		tensor (using `assert_global_step`). Otherwise find a global step tensor using
		`get_global_step` and return it.
		
		Args:
		  graph: The graph to find the global step tensor for.
		  global_step_tensor: The tensor to check for suitability as a global step.
		    If None is given (the default), find a global step tensor.
		
		Returns:
		  A tensor suitable as a global step, or `None` if none was provided and none
		  was found.
	**/
	static public function assert_or_get_global_step(?graph:Dynamic, ?global_step_tensor:Dynamic):Dynamic;
	/**
		Creates an operation to assign specific variables from a checkpoint.
		
		Args:
		  model_path: The full path to the model checkpoint. To get latest checkpoint
		      use `model_path = tf.train.latest_checkpoint(checkpoint_dir)`
		  var_list: A list of (possibly partitioned) `Variable` objects
		      or a dictionary mapping names in the checkpoint to the
		      corresponding variables or list of variables to initialize
		      from that checkpoint value. For partitioned Variables, the
		      name in the checkpoint must be the full variable, not the
		      name of the partitioned variable, eg. "my_var" rather than
		      "my_var/part_4". If empty, returns no_op(), {}.
		  ignore_missing_vars: Boolean, if True ignore variables missing in the
		      checkpoint with a warning instead of failing.
		
		Returns:
		  the restore_op and the feed_dict that need to be run to restore var_list.
		
		Raises:
		  ValueError: If `ignore_missing_vars` is False and the checkpoint specified
		      at `model_path` is missing one of the variables in `var_list`.
	**/
	static public function assign_from_checkpoint(model_path:Dynamic, var_list:Dynamic, ?ignore_missing_vars:Dynamic):Dynamic;
	/**
		Returns a function that assigns specific variables from a checkpoint.
		
		If ignore_missing_vars is True and no variables are found in the checkpoint
		it returns None.
		
		Args:
		  model_path: The full path to the model checkpoint. To get latest checkpoint
		      use `model_path = tf.train.latest_checkpoint(checkpoint_dir)`
		  var_list: A list of `Variable` objects or a dictionary mapping names in the
		      checkpoint to the corresponding variables to initialize. If empty or
		      `None`, it would return `no_op(), None`.
		  ignore_missing_vars: Boolean, if True it would ignore variables missing in
		      the checkpoint with a warning instead of failing.
		  reshape_variables: Boolean, if True it would automatically reshape variables
		      which are of different shape then the ones stored in the checkpoint but
		      which have the same number of elements.
		
		Returns:
		  A function that takes a single argument, a `tf.Session`, that applies the
		  assignment operation. If no matching variables were found in the checkpoint
		  then `None` is returned.
		
		Raises:
		  ValueError: If var_list is empty.
	**/
	static public function assign_from_checkpoint_fn(model_path:Dynamic, var_list:Dynamic, ?ignore_missing_vars:Dynamic, ?reshape_variables:Dynamic):Dynamic;
	/**
		Creates an assignment operation from a given mapping.
		
		This function provides a mechanism for performing assignment of variables
		to values in a way that does not fill the graph with large assignment values.
		
		Args:
		  var_names_to_values: A map from variable names to values.
		
		Returns:
		  assign_op: An `Operation` that assigns each of the given variables to the
		    requested values.
		  feed_dict: The feed dictionary to use when evaluating `assign_op`.
		
		Raises:
		  ValueError: if any of the given variable names were not found.
	**/
	static public function assign_from_values(var_names_to_values:Dynamic):Dynamic;
	/**
		Returns a function that assigns specific variables from the given values.
		
		This function provides a mechanism for performing assignment of variables
		to values in a way that does not fill the graph with large assignment values.
		
		Args:
		  var_names_to_values: A map from variable names to values.
		
		Returns:
		  A function that takes a single argument, a `tf.Session`, that applies the
		  assignment operation.
		
		Raises:
		  ValueError: if any of the given variable names were not found.
	**/
	static public function assign_from_values_fn(var_names_to_values:Dynamic):Dynamic;
	/**
		Create global step tensor in graph. (deprecated)
		
		THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Please switch to tf.train.create_global_step
		
		This API is deprecated. Use core framework training version instead.
		
		Args:
		  graph: The graph in which to create the global step tensor. If missing,
		    use default graph.
		
		Returns:
		  Global step tensor.
		
		Raises:
		  ValueError: if global step tensor is already defined.
	**/
	static public function create_global_step(?graph:Dynamic):Dynamic;
	static public function current_arg_scope():Dynamic;
	static public var division : Dynamic;
	/**
		Filter a list of variables using regular expressions.
		
		First includes variables according to the list of include_patterns.
		Afterwards, eliminates variables according to the list of exclude_patterns.
		
		For example, one can obtain a list of variables with the weights of all
		convolutional layers (depending on the network definition) by:
		
		```python
		variables = tf.contrib.framework.get_model_variables()
		conv_weight_variables = tf.contrib.framework.filter_variables(
		    variables,
		    include_patterns=['Conv'],
		    exclude_patterns=['biases', 'Logits'])
		```
		
		Args:
		  var_list: list of variables.
		  include_patterns: list of regular expressions to include. Defaults to None,
		      which means all variables are selected according to the include rules.
		      A variable is included if it matches any of the include_patterns.
		  exclude_patterns: list of regular expressions to exclude. Defaults to None,
		      which means all variables are selected according to the exclude rules.
		      A variable is excluded if it matches any of the exclude_patterns.
		  reg_search: boolean. If True (default), performs re.search to find matches
		      (i.e. pattern can match any substring of the variable name). If False,
		      performs re.match (i.e. regexp should match from the beginning of the
		      variable name).
		
		Returns:
		  filtered list of variables.
	**/
	static public function filter_variables(var_list:Dynamic, ?include_patterns:Dynamic, ?exclude_patterns:Dynamic, ?reg_search:Dynamic):Dynamic;
	/**
		DEPRECATED FUNCTION
		
		THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Please switch to tf.train.get_global_step
	**/
	static public function get_global_step(?graph:Dynamic):Dynamic;
	/**
		Returns the appropriate graph to use for the given inputs.
		
		1. If `graph` is provided, we validate that all inputs in `op_input_list` are
		   from the same graph.
		2. Otherwise, we attempt to select a graph from the first Operation- or
		   Tensor-valued input in `op_input_list`, and validate that all other
		   such inputs are in the same graph.
		3. If the graph was not specified and it could not be inferred from
		   `op_input_list`, we attempt to use the default graph.
		
		Args:
		  op_input_list: A list of inputs to an operation, which may include `Tensor`,
		    `Operation`, and other objects that may be converted to a graph element.
		  graph: (Optional) The explicit graph to use.
		
		Raises:
		  TypeError: If `op_input_list` is not a list or tuple, or if graph is not a
		    Graph.
		  ValueError: If a graph is explicitly passed and not all inputs are from it,
		    or if the inputs are from multiple graphs, or we could not find a graph
		    and there was no default graph.
		
		Returns:
		  The appropriate graph to use for the given inputs.
	**/
	static public function get_graph_from_inputs(op_input_list:Dynamic, ?graph:Dynamic):Dynamic;
	/**
		Gets the list of local variables, filtered by scope and/or suffix.
		
		Args:
		  scope: an optional scope for filtering the variables to return.
		  suffix: an optional suffix for filtering the variables to return.
		
		Returns:
		  a list of variables in collection with scope and suffix.
	**/
	static public function get_local_variables(?scope:Dynamic, ?suffix:Dynamic):Dynamic;
	/**
		Gets the list of model variables, filtered by scope and/or suffix.
		
		Args:
		  scope: an optional scope for filtering the variables to return.
		  suffix: an optional suffix for filtering the variables to return.
		
		Returns:
		  a list of variables in collection with scope and suffix.
	**/
	static public function get_model_variables(?scope:Dynamic, ?suffix:Dynamic):Dynamic;
	/**
		Returns the current name scope of the default graph.
		
		For example:
		
		  ```python
		  with tf.name_scope('scope1'):
		    with tf.name_scope('scope2'):
		      print(tf.contrib.framework.get_name_scope())
		  ```
		  would print the string `scope1/scope2`.
		
		Returns:
		  A string representing the current name scope.
	**/
	static public function get_name_scope():Dynamic;
	/**
		Returns and create (if necessary) the global step tensor. (deprecated)
		
		THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Please switch to tf.train.get_or_create_global_step
		
		Args:
		  graph: The graph in which to create the global step tensor. If missing, use
		    default graph.
		
		Returns:
		  The global step tensor.
	**/
	static public function get_or_create_global_step(?graph:Dynamic):Dynamic;
	/**
		Gets the list of trainable variables, filtered by scope and/or suffix.
		
		Args:
		  scope: an optional scope for filtering the variables to return.
		  suffix: an optional suffix for filtering the variables to return.
		
		Returns:
		  a list of variables in the trainable collection with scope and suffix.
	**/
	static public function get_trainable_variables(?scope:Dynamic, ?suffix:Dynamic):Dynamic;
	/**
		Gets the variable uniquely identified by that var_op_name.
		
		Args:
		  var_op_name: the full name of the variable op, including the scope.
		
		Returns:
		  a tensorflow variable.
		
		Raises:
		  ValueError: if no variable uniquely identified by the name exists.
	**/
	static public function get_unique_variable(var_op_name:Dynamic):Dynamic;
	/**
		Returns the full name of a variable.
		
		For normal Variables, this is the same as the var.op.name.  For
		sliced or PartitionedVariables, this name is the same for all the
		slices/partitions. In both cases, this is normally the name used in
		a checkpoint file.
		
		Args:
		  var: A `Variable` object.
		
		Returns:
		  A string that is the full name.
	**/
	static public function get_variable_full_name(_var:Dynamic):Dynamic;
	/**
		Gets the list of variables, filtered by scope and/or suffix.
		
		Args:
		  scope: an optional scope for filtering the variables to return. Can be a
		    variable scope or a string.
		  suffix: an optional suffix for filtering the variables to return.
		  collection: in which collection search for. Defaults to
		    `GraphKeys.GLOBAL_VARIABLES`.
		
		Returns:
		  a list of variables in collection with scope and suffix.
	**/
	static public function get_variables(?scope:Dynamic, ?suffix:Dynamic, ?collection:Dynamic):Dynamic;
	/**
		Gets the list of variables that were given that name.
		
		Args:
		  given_name: name given to the variable without any scope.
		  scope: an optional scope for filtering the variables to return.
		
		Returns:
		  a copied list of variables with the given name and scope.
	**/
	static public function get_variables_by_name(given_name:Dynamic, ?scope:Dynamic):Dynamic;
	/**
		Gets the list of variables that end with the given suffix.
		
		Args:
		  suffix: suffix for filtering the variables to return.
		  scope: an optional scope for filtering the variables to return.
		
		Returns:
		  a copied list of variables with the given name and prefix.
	**/
	static public function get_variables_by_suffix(suffix:Dynamic, ?scope:Dynamic):Dynamic;
	/**
		Gets the list of the variables to restore.
		
		Args:
		  include: an optional list/tuple of scope strings for filtering which
		    variables from the VARIABLES collection to include. None would include all
		    the variables.
		  exclude: an optional list/tuple of scope strings for filtering which
		    variables from the VARIABLES collection to exclude. None it would not
		    exclude any.
		
		Returns:
		  a list of variables to restore.
		
		Raises:
		  TypeError: include or exclude is provided but is not a list or a tuple.
	**/
	static public function get_variables_to_restore(?include:Dynamic, ?exclude:Dynamic):Dynamic;
	/**
		Create a variable with a value and add it to `GraphKeys.GLOBAL_VARIABLES`.
		
		Args:
		  initial_value: See variables.Variable.__init__.
		  validate_shape: See variables.Variable.__init__.
		  name: See variables.Variable.__init__.
		  use_resource: If `True` use a ResourceVariable instead of a Variable.
		Returns:
		  New variable.
	**/
	static public function global_variable(initial_value:Dynamic, ?validate_shape:Dynamic, ?name:Dynamic, ?use_resource:Dynamic):Dynamic;
	/**
		Checks whether a func has been decorated with @add_arg_scope or not.
		
		Args:
		  func: function to check.
		
		Returns:
		  a boolean.
	**/
	static public function has_arg_scope(func:Dynamic):Dynamic;
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
	/**
		Create a variable with a value and add it to `GraphKeys.LOCAL_VARIABLES`.
		
		Args:
		  initial_value: See variables.Variable.__init__.
		  validate_shape: See variables.Variable.__init__.
		  name: See variables.Variable.__init__.
		  use_resource: If `True` use a ResourceVariable instead of a Variable.
		Returns:
		  New variable.
	**/
	static public function local_variable(initial_value:Dynamic, ?validate_shape:Dynamic, ?name:Dynamic, ?use_resource:Dynamic):Dynamic;
	/**
		Gets an existing model variable with these parameters or creates a new one.
		
		Args:
		  name: the name of the new or existing variable.
		  shape: shape of the new or existing variable.
		  dtype: type of the new or existing variable (defaults to `DT_FLOAT`).
		  initializer: initializer for the variable if one is created.
		  regularizer: a (Tensor -> Tensor or None) function; the result of
		      applying it on a newly created variable will be added to the collection
		      GraphKeys.REGULARIZATION_LOSSES and can be used for regularization.
		  trainable: If `True` also add the variable to the graph collection
		    `GraphKeys.TRAINABLE_VARIABLES` (see `tf.Variable`).
		  collections: A list of collection names to which the Variable will be added.
		    Note that the variable is always also added to the
		    `GraphKeys.GLOBAL_VARIABLES` and `GraphKeys.MODEL_VARIABLES` collections.
		  caching_device: Optional device string or function describing where the
		      Variable should be cached for reading.  Defaults to the Variable's
		      device.
		  device: Optional device to place the variable. It can be an string or a
		    function that is called to get the device for the variable.
		  partitioner: Optional callable that accepts a fully defined `TensorShape`
		    and dtype of the `Variable` to be created, and returns a list of
		    partitions for each axis (currently only one axis can be partitioned).
		  custom_getter: Callable that allows overwriting the internal
		    get_variable method and has to have the same signature.
		  use_resource: If `True` use a ResourceVariable instead of a Variable.
		  synchronization: Indicates when a distributed a variable will be
		    aggregated. Accepted values are constants defined in the class
		    `tf.VariableSynchronization`. By default the synchronization is set to
		    `AUTO` and the current `DistributionStrategy` chooses
		    when to synchronize. If `synchronization` is set to `ON_READ`,
		    `trainable` must not be set to `True`.
		  aggregation: Indicates how a distributed variable will be aggregated.
		    Accepted values are constants defined in the class
		    `tf.VariableAggregation`.
		
		Returns:
		  The created or existing variable.
	**/
	static public function model_variable(name:Dynamic, ?shape:Dynamic, ?dtype:Dynamic, ?initializer:Dynamic, ?regularizer:Dynamic, ?trainable:Dynamic, ?collections:Dynamic, ?caching_device:Dynamic, ?device:Dynamic, ?partitioner:Dynamic, ?custom_getter:Dynamic, ?use_resource:Dynamic, ?synchronization:Dynamic, ?aggregation:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Creates a print op that will print when a tensor is accessed.
		
		Wraps the tensor passed in so that whenever that tensor is accessed,
		the message `message` is printed, along with the current value of the
		tensor `t` and an optional list of other tensors.
		
		Args:
		  input_: A Tensor/SparseTensor/TensorArray to print when it is evaluated.
		  data: A list of other tensors to print.
		  message: A string message to print as a prefix.
		  first_n: Only log `first_n` number of times. Negative numbers log always;
		           this is the default.
		  summarize: Print this number of elements in the tensor.
		  print_tensor_name: Print the tensor name.
		  print_tensor_type: Print the tensor type.
		  print_shape: Print the tensor's shape.
		  summarize_indicator_vector: Whether to print the index of the first true
		    value in an indicator vector (a Boolean tensor).
		  name: The name to give this op.
		
		Returns:
		  A Print op. The Print op returns `input_`.
		
		Raises:
		  ValueError: If the tensor `input_` is not a Tensor, SparseTensor or
		    TensorArray.
	**/
	static public function print_op(input_:Dynamic, ?data:Dynamic, ?message:Dynamic, ?first_n:Dynamic, ?summarize:Dynamic, ?print_tensor_name:Dynamic, ?print_tensor_type:Dynamic, ?print_shape:Dynamic, ?summarize_indicator_vector:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Wraps a python function and uses it as a TensorFlow op.
		
		This function is a wrapper around `tf.py_func` and improve it with kwargs
		and output_shapes. Further it changed some argument names.
		
		Given a python function `func`, which takes numpy arrays as its
		inputs and returns numpy arrays as its outputs, wrap this function as an
		operation in a TensorFlow graph. The following snippet constructs a simple
		TensorFlow graph that invokes the `np.sinh()` NumPy function as a operation
		in the graph:
		
		```python
		def my_func(x):
		  # x will be a numpy array with the contents of the placeholder below
		  return np.sinh(x)
		inp = tf.placeholder(tf.float32)
		y = tf.py_func(my_func, [inp], tf.float32)
		```
		
		
		**N.B.** The `tf.py_func()` operation has the following known limitations:
		
		* The body of the function (i.e. `func`) will not be serialized in a
		  `GraphDef`. Therefore, you should not use this function if you need to
		  serialize your model and restore it in a different environment.
		
		* The operation must run in the same address space as the Python program
		  that calls `tf.py_func()`. If you are using distributed TensorFlow, you
		  must run a `tf.train.Server` in the same process as the program that calls
		  `tf.py_func()` and you must pin the created operation to a device in that
		  server (e.g. using `with tf.device():`).
		
		Args:
		  func: A Python function, which accepts a list of NumPy `ndarray` objects
		    having element types that match the corresponding `tf.Tensor` objects
		    in `inp`, and returns a list of `ndarray` objects (or a single `ndarray`)
		    having element types that match the corresponding values in `Tout`.
		  args: A list of `Tensor` objects.
		  kwargs: A dict with `Tensor` objects as values.
		  output_types: A nested structure of tensorflow data types or a single
		    tensorflow data type if there is only one, indicating what `func` returns.
		  output_shapes: Same as output_types, except the types are replaces with
		    shapes (optional).
		  stateful: (Boolean.) If True, the function should be considered stateful.
		    If a function is stateless, when given the same input it will return the
		    same output and have no observable side effects. Optimizations such as
		    common subexpression elimination are only performed on stateless
		    operations.
		  name: A name for the operation (optional).
		
		Returns:
		  Tensorflow op that wraps the input python function.
	**/
	static public function py_func(func:Dynamic, ?args:Dynamic, ?kwargs:Dynamic, ?output_types:Dynamic, ?output_shapes:Dynamic, ?stateful:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Sorts a tensor.
		
		Args:
		  values: 1-D or higher numeric `Tensor`.
		  axis: The axis along which to sort. The default is -1, which sorts the last
		      axis.
		  direction: The direction in which to sort the values (`'ASCENDING'` or
		      `'DESCENDING'`).
		  name: Optional name for the operation.
		
		Returns:
		  A `Tensor` with the same dtype and shape as `values`, with the elements
		      sorted along the given `axis`.
		
		Raises:
		  ValueError: If axis is not a constant scalar, or the direction is invalid.
	**/
	static public function sort(values:Dynamic, ?axis:Dynamic, ?direction:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Gets an existing variable with these parameters or creates a new one.
		
		Args:
		  name: the name of the new or existing variable.
		  shape: shape of the new or existing variable.
		  dtype: type of the new or existing variable (defaults to `DT_FLOAT`).
		  initializer: initializer for the variable if one is created.
		  regularizer: a (Tensor -> Tensor or None) function; the result of
		      applying it on a newly created variable will be added to the collection
		      GraphKeys.REGULARIZATION_LOSSES and can be used for regularization.
		  trainable: If `True` also add the variable to the graph collection
		    `GraphKeys.TRAINABLE_VARIABLES` (see `tf.Variable`).
		  collections: A list of collection names to which the Variable will be added.
		    If None it would default to `tf.GraphKeys.GLOBAL_VARIABLES`.
		  caching_device: Optional device string or function describing where the
		      Variable should be cached for reading.  Defaults to the Variable's
		      device.
		  device: Optional device to place the variable. It can be an string or a
		    function that is called to get the device for the variable.
		  partitioner: Optional callable that accepts a fully defined `TensorShape`
		    and dtype of the `Variable` to be created, and returns a list of
		    partitions for each axis (currently only one axis can be partitioned).
		  custom_getter: Callable that allows overwriting the internal
		    get_variable method and has to have the same signature.
		  use_resource: If `True` use a ResourceVariable instead of a Variable.
		  synchronization: Indicates when a distributed a variable will be
		    aggregated. Accepted values are constants defined in the class
		    `tf.VariableSynchronization`. By default the synchronization is set to
		    `AUTO` and the current `DistributionStrategy` chooses
		    when to synchronize. If `synchronization` is set to `ON_READ`,
		    `trainable` must not be set to `True`.
		  aggregation: Indicates how a distributed variable will be aggregated.
		    Accepted values are constants defined in the class
		    `tf.VariableAggregation`.
		
		Returns:
		  The created or existing variable.
	**/
	static public function variable(name:Dynamic, ?shape:Dynamic, ?dtype:Dynamic, ?initializer:Dynamic, ?regularizer:Dynamic, ?trainable:Dynamic, ?collections:Dynamic, ?caching_device:Dynamic, ?device:Dynamic, ?partitioner:Dynamic, ?custom_getter:Dynamic, ?use_resource:Dynamic, ?synchronization:Dynamic, ?aggregation:Dynamic):Dynamic;
	/**
		Initialize 'ref' with all zeros, ref tensor should be uninitialized.
		If already initialized, you will get ValueError. This op is intended to
		save memory during initialization.
		Args:
		  ref: ref of the tensor need to be zero initialized.
		  name: optional name for this operation.
		Returns:
		  ref that initialized.
		Raises:
		  ValueError: If ref tensor is initialized.
	**/
	static public function zero_initializer(ref:Dynamic, ?use_locking:Dynamic, ?name:Dynamic):Dynamic;
}