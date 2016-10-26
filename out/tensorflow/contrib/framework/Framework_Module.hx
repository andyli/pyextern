/* This file is generated, do not edit! */
package tensorflow.contrib.framework;
@:pythonImport("tensorflow.contrib.framework") extern class Framework_Module {
	static public var __all__ : Dynamic;
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
		    a dictionary containg the current scope. When list_ops_or_scope is a dict,
		    kwargs must be empty. When list_ops_or_scope is a list or tuple, then
		    every op in it need to be decorated with @add_arg_scope to work.
		  **kwargs: keyword=value that will define the defaults for each op in
		            list_ops. All the ops need to accept the given set of arguments.
		
		Yields:
		  the current_scope, which is a dictionary of {op: {arg: value}}
		Raises:
		  TypeError: if list_ops is not a list or a tuple.
		  ValueError: if any op in list_ops has not be decorated with @add_arg_scope.
	**/
	static public function arg_scope(list_ops_or_scope:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Returns the list kwargs that arg_scope can set for a func.
		
		Args:
		  func: function which has been decorated with @add_arg_scope.
		
		Returns:
		  a list of kwargs names.
	**/
	static public function arg_scoped_arguments(func:Dynamic):Dynamic;
	/**
		Asserts `global_step_tensor` is a scalar int `Variable` or `Tensor`.
		
		Args:
		  global_step_tensor: `Tensor` to test.
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
		Validate and return float type based on `tensors` and `dtype`.
		
		For ops such as matrix multiplication, inputs and weights must be of the
		same float type. This function validates that all `tensors` are the same type,
		validates that type is `dtype` (if supplied), and returns the type. Type must
		be `dtypes.float32` or `dtypes.float64`. If neither `tensors` nor
		`dtype` is supplied, default to `dtypes.float32`.
		
		Args:
		  tensors: Tensors of input values. Can include `None` elements, which will be
		      ignored.
		  dtype: Expected type.
		Returns:
		  Validated type.
		Raises:
		  ValueError: if neither `tensors` nor `dtype` is supplied, or result is not
		      float.
	**/
	static public function assert_same_float_dtype(?tensors:Dynamic, ?dtype:Dynamic):Dynamic;
	/**
		Assert `tensor` is 0-D, of type `tf.int32` or `tf.int64`.
		
		Args:
		  tensor: Tensor to test.
		Returns:
		  `tensor`, for chaining.
		Raises:
		  ValueError: if `tensor` is not 0-D, of type `tf.int32` or `tf.int64`.
	**/
	static public function assert_scalar_int(tensor:Dynamic):Dynamic;
	/**
		Creates an operation to assign specific variables from a checkpoint.
		
		Args:
		  model_path: The full path to the model checkpoint. To get latest checkpoint
		      use `model_path = tf.train.latest_checkpoint(checkpoint_dir)`
		  var_list: A list of `Variable` objects or a dictionary mapping names in the
		      checkpoint to the correspoing variables to initialize. If empty or None,
		      it would return  no_op(), None.
		
		Returns:
		  the restore_op and the feed_dict that need to be run to restore var_list.
		
		Raises:
		  ValueError: If the checkpoint specified at `model_path` is missing one of
		    the variables in `var_list`.
	**/
	static public function assign_from_checkpoint(model_path:Dynamic, var_list:Dynamic):Dynamic;
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
		Converts value to a `SparseTensor` or `Tensor`.
		
		Args:
		  value: A `SparseTensor`, `SparseTensorValue`, or an object whose type has a
		    registered `Tensor` conversion function.
		  dtype: Optional element type for the returned tensor. If missing, the
		    type is inferred from the type of `value`.
		  name: Optional name to use if a new `Tensor` is created.
		  as_ref: True if we want the result as a ref tensor. Only used if a new
		    `Tensor` is created.
		
		Returns:
		  A `SparseTensor` or `Tensor` based on `value`.
		
		Raises:
		  RuntimeError: If result type is incompatible with `dtype`.
	**/
	static public function convert_to_tensor_or_sparse_tensor(value:Dynamic, ?dtype:Dynamic, ?name:Dynamic, ?as_ref:Dynamic):Dynamic;
	/**
		Create global step tensor in graph.
		
		Args:
		  graph: The graph in which to create the global step. If missing, use default
		      graph.
		
		Returns:
		  Global step tensor.
		
		Raises:
		  ValueError: if global step key is already defined.
	**/
	static public function create_global_step(?graph:Dynamic):Dynamic;
	/**
		Decorator for marking functions or methods deprecated.
		
		This decorator logs a deprecation warning whenever the decorated function is
		called. It has the following format:
		
		  <function> (from <module>) is deprecated and will be removed after <date>.
		  Instructions for updating:
		  <instructions>
		
		<function> will include the class name if it is a method.
		
		It also edits the docstring of the function: ' (deprecated)' is appended
		to the first line of the docstring and a deprecation notice is prepended
		to the rest of the docstring.
		
		Args:
		  date: String. The date the function is scheduled to be removed. Must be
		    ISO 8601 (YYYY-MM-DD).
		  instructions: String. Instructions on how to update code using the
		    deprecated function.
		
		Returns:
		  Decorated function or method.
		
		Raises:
		  ValueError: If date is not in ISO 8601 format, or instructions are empty.
	**/
	static public function deprecated(date:Dynamic, instructions:Dynamic):Dynamic;
	/**
		Decorator for marking specific function argument values as deprecated.
		
		This decorator logs a deprecation warning whenever the decorated function is
		called with the deprecated argument values. It has the following format:
		
		  Calling <function> (from <module>) with <arg>=<value> is deprecated and
		  will be removed after <date>. Instructions for updating:
		    <instructions>
		
		<function> will include the class name if it is a method.
		
		It also edits the docstring of the function: ' (deprecated arguments)' is
		appended to the first line of the docstring and a deprecation notice is
		prepended to the rest of the docstring.
		
		Args:
		  date: String. The date the function is scheduled to be removed. Must be
		    ISO 8601 (YYYY-MM-DD).
		  instructions: String. Instructions on how to update code using the
		    deprecated function.
		  **deprecated_kwargs: The deprecated argument values.
		
		Returns:
		  Decorated function or method.
		
		Raises:
		  ValueError: If date is not in ISO 8601 format, or instructions are empty.
	**/
	static public function deprecated_arg_values(date:Dynamic, instructions:Dynamic, ?deprecated_kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var division : Dynamic;
	/**
		Get the global step tensor.
		
		The global step tensor must be an integer variable. We first try to find it
		in the collection `GLOBAL_STEP`, or by name `global_step:0`.
		
		Args:
		  graph: The graph to find the global step in. If missing, use default graph.
		
		Returns:
		  The global step variable, or `None` if none was found.
		
		Raises:
		  TypeError: If the global step tensor has a non-integer type, or if it is not
		    a `Variable`.
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
		Gets the list of model variables, filtered by scope and/or suffix.
		
		Args:
		  scope: an optional scope for filtering the variables to return.
		  suffix: an optional suffix for filtering the variables to return.
		
		Returns:
		  a list of variables in colelction with scope and suffix.
	**/
	static public function get_local_variables(?scope:Dynamic, ?suffix:Dynamic):Dynamic;
	/**
		Gets the list of model variables, filtered by scope and/or suffix.
		
		Args:
		  scope: an optional scope for filtering the variables to return.
		  suffix: an optional suffix for filtering the variables to return.
		
		Returns:
		  a list of variables in colelction with scope and suffix.
	**/
	static public function get_model_variables(?scope:Dynamic, ?suffix:Dynamic):Dynamic;
	/**
		Returns and create (if necessary) the global step variable.
		
		Args:
		  graph: The graph in which to create the global step. If missing, use default
		      graph.
		
		Returns:
		  the tensor representing the global step variable.
	**/
	static public function get_or_create_global_step(?graph:Dynamic):Dynamic;
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
		Gets the list of variables, filtered by scope and/or suffix.
		
		Args:
		  scope: an optional scope for filtering the variables to return.
		  suffix: an optional suffix for filtering the variables to return.
		  collection: in which collection search for. Defaults to GraphKeys.VARIABLES.
		
		Returns:
		  a list of variables in colelction with scope and suffix.
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
		Checks whether a func has been decorated with @add_arg_scope or not.
		
		Args:
		  func: function to check.
		
		Returns:
		  a boolean.
	**/
	static public function has_arg_scope(func:Dynamic):Dynamic;
	/**
		Using assingment map initializes current variables with loaded tensors.
		
		Note: This overrides default initialization ops of specified variables and
		redefines dtype.
		
		Assignment map supports following syntax:
		  `'checkpoint_scope_name/': 'scope_name/'` - will load all variables in
		    current `scope_name` from `checkpoint_scope_name` with matching variable
		    names.
		  `'checkpoint_scope_name/some_other_variable': 'scope_name/variable_name'` -
		    will initalize `scope_name/variable_name` variable
		    from `checkpoint_scope_name/some_other_variable`.
		  `'scope_variable_name': variable` - will initialize given `tf.Variable`
		    object with variable from the checkpoint.
		  `'scope_variable_name': list(variable)` - will initialize list of
		    partitioned variables with variable from the checkpoint.
		  `'scope_name/': '/'` - will load all variables in current `scope_name` from
		    checkpoint's root (e.g. no scope).
		
		Supports loading into partitioned variables, which are represented as
		'<variable>/part_<part #>'.
		
		Example:
		```python
		  # Create variables.
		  with tf.variable_scope('test'):
		    m = tf.get_variable('my_var')
		  with tf.variable_scope('test2'):
		    var2 = tf.get_variable('my_var')
		  var3 = tf.get_variable(name="my1", shape=[100, 100],
		                         partitioner=lambda shape, dtype: [5, 1])
		  ...
		  # Specify which variables to intialize from checkpoint.
		  init_from_checkpoint(checkpoint_dir, {
		    'some_var': 'test/my_var',
		    'some_scope/': 'test2/'})
		  ...
		  # Or use `Variable` objects to identify what to initialize.
		  init_from_checkpoint(checkpoint_dir, {
		    'some_scope/var2': var2,
		  })
		  # Initialize partitioned variables
		  init_from_checkpoint(checkpoint_dir, {
		    'some_var_from_ckpt': 'part_var',
		  })
		  # Or specifying the list of `Variable` objects.
		  init_from_checkpoint(checkpoint_dir, {
		    'some_var_from_ckpt': var3._get_variable_list(),
		  })
		  ...
		  # Initialize variables as usual.
		  session.run(tf.get_all_variables())
		```
		
		Args:
		  checkpoint_dir: Directory with checkpoints file or path to checkpoint.
		  assignment_map: Dict, where keys are names of the variables in the
		    checkpoint and values are current variables or names of current variables
		    (in default graph).
		
		Raises:
		  tf.errors.OpError: If missing checkpoints or tensors in checkpoints.
		  ValueError: If missing variables in current graph.
	**/
	static public function init_from_checkpoint(checkpoint_dir:Dynamic, assignment_map:Dynamic):Dynamic;
	/**
		Check for tensor types.
		Check whether an object is a tensor. Equivalent to
		`isinstance(x, [tf.Tensor, tf.SparseTensor, tf.Variable])`.
		
		Args:
		  x: An python object to check.
		
		Returns:
		  `True` if `x` is a tensor, `False` if not.
	**/
	static public function is_tensor(x:Dynamic):Dynamic;
	/**
		Returns list of all variables in the latest checkpoint.
		
		Args:
		  checkpoint_dir: Directory with checkpoints file or path to checkpoint.
		
		Returns:
		  List of tuples `(name, shape)`.
	**/
	static public function list_variables(checkpoint_dir:Dynamic):Dynamic;
	/**
		Returns CheckpointReader for latest checkpoint.
		
		Args:
		  filepattern: Directory with checkpoints file or path to checkpoint.
		
		Returns:
		  `CheckpointReader` object.
		
		Raises:
		  ValueError: if checkpoint_dir doesn't have 'checkpoint' file or checkpoints.
	**/
	static public function load_checkpoint(filepattern:Dynamic):Dynamic;
	/**
		Returns a Tensor with the contents of the given variable in the checkpoint.
		
		Args:
		  checkpoint_dir: Directory with checkpoints file or path to checkpoint.
		  name: Name of the tensor to return.
		
		Returns:
		  `Tensor` object.
	**/
	static public function load_variable(checkpoint_dir:Dynamic, name:Dynamic):Dynamic;
	/**
		Create variable and add it to `GraphKeys.LOCAL_VARIABLES` collection.
		
		Args:
		  initial_value: See variables.Variable.__init__.
		  validate_shape: See variables.Variable.__init__.
		  name: See variables.Variable.__init__.
		Returns:
		  New variable.
	**/
	static public function local_variable(initial_value:Dynamic, ?validate_shape:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Generate `__all__` from the docstring of one or more modules.
		
		Usage: `make_all(__name__)` or
		`make_all(__name__, [sys.modules(__name__), other_module])`. The doc string
		modules must each a docstring, and `__all__` will contain all symbols with
		`@@` references, where that symbol currently exists in the module named
		`module_name`.
		
		Args:
		  module_name: The name of the module (usually `__name__`).
		  doc_string_modules: a list of modules from which to take docstring.
		  If None, then a list containing only the module named `module_name` is used.
		
		Returns:
		  A list suitable for use as `__all__`.
	**/
	static public function make_all(module_name:Dynamic, ?doc_string_modules:Dynamic):Dynamic;
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
		    `GraphKeys.TRAINABLE_VARIABLES` (see tf.Variable).
		  collections: A list of collection names to which the Variable will be added.
		    Note that the variable is always also added to the `GraphKeys.VARIABLES`
		    and `GraphKeys.MODEL_VARIABLES` collections.
		  caching_device: Optional device string or function describing where the
		      Variable should be cached for reading.  Defaults to the Variable's
		      device.
		  device: Optional device to place the variable. It can be an string or a
		    function that is called to get the device for the variable.
		
		Returns:
		  The created or existing variable.
	**/
	static public function model_variable(name:Dynamic, ?shape:Dynamic, ?dtype:Dynamic, ?initializer:Dynamic, ?regularizer:Dynamic, ?trainable:Dynamic, ?collections:Dynamic, ?caching_device:Dynamic, ?device:Dynamic):Dynamic;
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
		Reduce tensors to a scalar sum.
		
		This reduces each tensor in `tensors` to a scalar via `tf.reduce_sum`, then
		adds them via `tf.add_n`.
		
		Args:
		  tensors: List of tensors, all of the same numeric type.
		  name: Tensor name, and scope for all other ops.
		
		Returns:
		  Total loss tensor, or None if no losses have been configured.
		
		Raises:
		  ValueError: if `losses` is missing or empty.
	**/
	static public function reduce_sum_n(tensors:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Lookup embedding results, accounting for invalid IDs and empty features. (deprecated)
		
		THIS FUNCTION IS DEPRECATED. It will be removed after 2016-09-01.
		Instructions for updating:
		Please use tf.contrib.layers.safe_embedding_lookup_sparse.
		
		  The partitioned embedding in `embedding_weights` must all be the same shape
		  except for the first dimension. The first dimension is allowed to vary as the
		  vocabulary size is not necessarily a multiple of `P`.
		
		  Invalid IDs (< 0) are pruned from input IDs and weights, as well as any IDs
		  with non-positive weight. For an entry with no features, the embedding vector
		  for `default_id` is returned, or the 0-vector if `default_id` is not supplied.
		
		  The ids and weights may be multi-dimensional. Embeddings are always aggregated
		  along the last dimension.
		
		  Args:
		    embedding_weights:  A list of `P` float tensors or values representing
		        partitioned embedding tensors.  The total unpartitioned shape should be
		        `[e_0, e_1, ..., e_m]`, where `e_0` represents the vocab size and
		        `e_1, ..., e_m` are the embedding dimensions.
		    sparse_ids: `SparseTensor` of shape `[d_0, d_1, ..., d_n]` containing the
		        ids. `d_0` is typically batch size.
		    sparse_weights: `SparseTensor` of same shape as `sparse_ids`, containing
		        float weights corresponding to `sparse_ids`, or `None` if all weights
		        are be assumed to be 1.0.
		    combiner: A string specifying how to combine embedding results for each
		        entry. Currently "mean", "sqrtn" and "sum" are supported, with "mean"
		        the default.
		    default_id: The id to use for an entry with no features.
		    name: A name for this operation (optional).
		    partition_strategy: A string specifying the partitioning strategy.
		        Currently `"div"` and `"mod"` are supported. Default is `"div"`.
		
		
		  Returns:
		    Dense tensor of shape `[d_0, d_1, ..., d_{n-1}, e_1, ..., e_m]`.
		
		  Raises:
		    ValueError: if `embedding_weights` is empty.
		  
	**/
	static public function safe_embedding_lookup_sparse(embedding_weights:Dynamic, sparse_ids:Dynamic, ?sparse_weights:Dynamic, ?combiner:Dynamic, ?default_id:Dynamic, ?name:Dynamic, ?partition_strategy:Dynamic):Dynamic;
	/**
		Stochastically creates batches based on per-class probabilities.
		
		This method discards examples. Internally, it creates one queue to amortize
		the cost of disk reads, and one queue to hold the properly-proportioned
		batch. See `stratified_sample_unknown_dist` for a function that performs
		stratified sampling with one queue per class and doesn't require knowing the
		class data-distribution ahead of time.
		
		Args:
		  tensors: List of tensors for data. All tensors are either one item or a
		      batch, according to enqueue_many.
		  labels: Tensor for label of data. Label is a single integer or a batch,
		      depending on enqueue_many. It is not a one-hot vector.
		  target_probs: Target class proportions in batch. An object whose type has a
		      registered Tensor conversion function.
		  batch_size: Size of batch to be returned.
		  init_probs: Class proportions in the data. An object whose type has a
		      registered Tensor conversion function, or `None` for estimating the
		      initial distribution.
		  enqueue_many: Bool. If true, interpret input tensors as having a batch
		      dimension.
		  queue_capacity: Capacity of the large queue that holds input examples.
		  threads_per_queue: Number of threads for the large queue that holds input
		      examples and for the final queue with the proper class proportions.
		  name: Optional prefix for ops created by this function.
		Raises:
		  ValueError: enqueue_many is True and labels doesn't have a batch
		      dimension, or if enqueue_many is False and labels isn't a scalar.
		  ValueError: enqueue_many is True, and batch dimension on data and labels
		      don't match.
		  ValueError: if probs don't sum to one.
		  ValueError: if a zero initial probability class has a nonzero target
		      probability.
		  TFAssertion: if labels aren't integers in [0, num classes).
		Returns:
		  (data_batch, label_batch), where data_batch is a list of tensors of the same
		      length as `tensors`
		
		Example:
		  # Get tensor for a single data and label example.
		  data, label = data_provider.Get(['data', 'label'])
		
		  # Get stratified batch according to per-class probabilities.
		  target_probs = [...distribution you want...]
		  [data_batch], labels = tf.contrib.framework.sampling_ops.stratified_sample(
		      [data], label, target_probs)
		
		  # Run batch through network.
		  ...
	**/
	static public function stratified_sample(tensors:Dynamic, labels:Dynamic, target_probs:Dynamic, batch_size:Dynamic, ?init_probs:Dynamic, ?enqueue_many:Dynamic, ?queue_capacity:Dynamic, ?threads_per_queue:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Stochastically creates batches based on per-class probabilities.
		
		**NOTICE** This sampler can be significantly slower than `stratified_sample`
		due to each thread discarding all examples not in its assigned class.
		
		This uses a number of threads proportional to the number of classes. See
		`stratified_sample` for an implementation that discards fewer examples and
		uses a fixed number of threads. This function's only advantage over
		`stratified_sample` is that the class data-distribution doesn't need to be
		known ahead of time.
		
		Args:
		  tensors: List of tensors for data. All tensors are either one item or a
		      batch, according to enqueue_many.
		  labels: Tensor for label of data. Label is a single integer or a batch,
		      depending on enqueue_many. It is not a one-hot vector.
		  probs: Target class probabilities. An object whose type has a registered
		      Tensor conversion function.
		  batch_size: Size of batch to be returned.
		  enqueue_many: Bool. If true, interpret input tensors as having a batch
		      dimension.
		  queue_capacity: Capacity of each per-class queue.
		  threads_per_queue: Number of threads for each per-class queue.
		  name: Optional prefix for ops created by this function.
		Raises:
		  ValueError: enqueue_many is True and labels doesn't have a batch
		      dimension, or if enqueue_many is False and labels isn't a scalar.
		  ValueError: enqueue_many is True, and batch dimension of data and labels
		      don't match.
		  ValueError: if probs don't sum to one.
		  TFAssertion: if labels aren't integers in [0, num classes).
		Returns:
		  (data_batch, label_batch), where data_batch is a list of tensors of the same
		      length as `tensors`
		
		Example:
		  # Get tensor for a single data and label example.
		  data, label = data_provider.Get(['data', 'label'])
		
		  # Get stratified batch according to per-class probabilities.
		  init_probs = [1.0/NUM_CLASSES for _ in range(NUM_CLASSES)]
		  [data_batch], labels = (
		      tf.contrib.framework.sampling_ops.stratified_sample_unknown_dist(
		          [data], label, init_probs, 16))
		
		  # Run batch through network.
		  ...
	**/
	static public function stratified_sample_unknown_dist(tensors:Dynamic, labels:Dynamic, probs:Dynamic, batch_size:Dynamic, ?enqueue_many:Dynamic, ?queue_capacity:Dynamic, ?threads_per_queue:Dynamic, ?name:Dynamic):Dynamic;
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
		    `GraphKeys.TRAINABLE_VARIABLES` (see tf.Variable).
		  collections: A list of collection names to which the Variable will be added.
		    If None it would default to tf.GraphKeys.VARIABLES.
		  caching_device: Optional device string or function describing where the
		      Variable should be cached for reading.  Defaults to the Variable's
		      device.
		  device: Optional device to place the variable. It can be an string or a
		    function that is called to get the device for the variable.
		
		Returns:
		  The created or existing variable.
	**/
	static public function variable(name:Dynamic, ?shape:Dynamic, ?dtype:Dynamic, ?initializer:Dynamic, ?regularizer:Dynamic, ?trainable:Dynamic, ?collections:Dynamic, ?caching_device:Dynamic, ?device:Dynamic):Dynamic;
	/**
		Assert tensors are the same shape, from the same graph.
		
		Args:
		  expected_tensor: Tensor with expected shape.
		  tensor: Tensor of actual values.
		Returns:
		  Tuple of (actual_tensor, label_tensor), possibly with assert ops added.
	**/
	static public function with_same_shape(expected_tensor:Dynamic, tensor:Dynamic):Dynamic;
	/**
		Asserts tensor has expected shape.
		
		If tensor shape and expected_shape, are fully defined, assert they match.
		Otherwise, add assert op that will validate the shape when tensor is
		evaluated, and set shape on tensor.
		
		Args:
		  expected_shape: Expected shape to assert, as a 1D array of ints, or tensor
		      of same.
		  tensor: Tensor whose shape we're validating.
		Returns:
		  tensor, perhaps with a dependent assert operation.
		Raises:
		  ValueError: if tensor has an invalid shape.
	**/
	static public function with_shape(expected_shape:Dynamic, tensor:Dynamic):Dynamic;
}