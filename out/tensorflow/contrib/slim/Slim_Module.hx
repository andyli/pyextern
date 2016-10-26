/* This file is generated, do not edit! */
package tensorflow.contrib.slim;
@:pythonImport("tensorflow.contrib.slim") extern class Slim_Module {
	static public var OPTIMIZER_CLS_NAMES : Dynamic;
	static public var OPTIMIZER_SUMMARIES : Dynamic;
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
		Returns the summed penalty by applying `regularizer` to the `weights_list`.
		
		Adding a regularization penalty over the layer weights and embedding weights
		can help prevent overfitting the training data. Regularization over layer
		biases is less common/useful, but assuming proper data preprocessing/mean
		subtraction, it usually shouldn't hurt much either.
		
		Args:
		  regularizer: A function that takes a single `Tensor` argument and returns
		    a scalar `Tensor` output.
		  weights_list: List of weights `Tensors` or `Variables` to apply
		    `regularizer` over. Defaults to the `GraphKeys.WEIGHTS` collection if
		    `None`.
		
		Returns:
		  A scalar representing the overall regularization penalty.
		
		Raises:
		  ValueError: If `regularizer` does not return a scalar output, or if we find
		      no weights.
	**/
	static public function apply_regularization(regularizer:Dynamic, ?weights_list:Dynamic):Dynamic;
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
	static public function assert_summary_tag_unique(tag:Dynamic):Dynamic;
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
		Adds a 2D average pooling op.
		
		It is assumed that the pooling is done per image but not in batch or channels.
		
		Args:
		  inputs: A `Tensor` of size [batch_size, height, width, channels].
		  kernel_size: A list of length 2: [kernel_height, kernel_width] of the
		    pooling kernel over which the op is computed. Can be an int if both
		    values are the same.
		  stride: A list of length 2: [stride_height, stride_width].
		    Can be an int if both strides are the same. Note that presently
		    both strides must have the same value.
		  padding: The padding method, either 'VALID' or 'SAME'.
		  outputs_collections: The collections to which the outputs are added.
		  scope: Optional scope for op_scope.
		
		Returns:
		  A `Tensor` representing the results of the pooling operation.
	**/
	static public function avg_pool2d(inputs:Dynamic, kernel_size:Dynamic, ?stride:Dynamic, ?padding:Dynamic, ?outputs_collections:Dynamic, ?scope:Dynamic):Dynamic;
	/**
		Adds a Batch Normalization layer from http://arxiv.org/abs/1502.03167.
		
		  "Batch Normalization: Accelerating Deep Network Training by Reducing
		  Internal Covariate Shift"
		
		  Sergey Ioffe, Christian Szegedy
		
		Can be used as a normalizer function for conv2d and fully_connected.
		
		Args:
		  inputs: a tensor of size `[batch_size, height, width, channels]`
		          or `[batch_size, channels]`.
		  decay: decay for the moving average.
		  center: If True, subtract `beta`. If False, `beta` is ignored.
		  scale: If True, multiply by `gamma`. If False, `gamma` is
		    not used. When the next layer is linear (also e.g. `nn.relu`), this can be
		    disabled since the scaling can be done by the next layer.
		  epsilon: small float added to variance to avoid dividing by zero.
		  activation_fn: Optional activation function.
		  updates_collections: collections to collect the update ops for computation.
		    If None, a control dependency would be added to make sure the updates are
		    computed.
		  is_training: whether or not the layer is in training mode. In training mode
		    it would accumulate the statistics of the moments into `moving_mean` and
		    `moving_variance` using an exponential moving average with the given
		    `decay`. When it is not in training mode then it would use the values of
		    the `moving_mean` and the `moving_variance`.
		  reuse: whether or not the layer and its variables should be reused. To be
		    able to reuse the layer scope must be given.
		  variables_collections: optional collections for the variables.
		  outputs_collections: collections to add the outputs.
		  trainable: If `True` also add variables to the graph collection
		    `GraphKeys.TRAINABLE_VARIABLES` (see tf.Variable).
		  scope: Optional scope for `variable_op_scope`.
		
		Returns:
		  A `Tensor` representing the output of the operation.
		
		Raises:
		  ValueError: if rank or last dimension of `inputs` is undefined.
	**/
	static public function batch_norm(inputs:Dynamic, ?decay:Dynamic, ?center:Dynamic, ?scale:Dynamic, ?epsilon:Dynamic, ?activation_fn:Dynamic, ?updates_collections:Dynamic, ?is_training:Dynamic, ?reuse:Dynamic, ?variables_collections:Dynamic, ?outputs_collections:Dynamic, ?trainable:Dynamic, ?scope:Dynamic):Dynamic;
	/**
		Adds a bias to the inputs.
		
		Can be used as a normalizer function for conv2d and fully_connected.
		
		Args:
		  inputs: a tensor of with at least rank 2 and value for the last dimension,
		    e.g. `[batch_size, depth]`, `[None, None, None, depth]`.
		  activation_fn: Optional activation function.
		  initializer: An initializer for the bias, defaults to 0.
		  regularizer: A regularizer like the result of
		    `l1_regularizer` or `l2_regularizer`.
		  reuse: whether or not the layer and its variables should be reused. To be
		    able to reuse the layer scope must be given.
		  variables_collections: optional collections for the variables.
		  outputs_collections: collections to add the outputs.
		  trainable: If `True` also add variables to the graph collection
		    `GraphKeys.TRAINABLE_VARIABLES` (see tf.Variable).
		  scope: Optional scope for variable_op_scope.
		
		Returns:
		  a tensor representing the result of adding biases to the inputs.
	**/
	static public function bias_add(inputs:Dynamic, ?activation_fn:Dynamic, ?initializer:Dynamic, ?regularizer:Dynamic, ?reuse:Dynamic, ?variables_collections:Dynamic, ?outputs_collections:Dynamic, ?trainable:Dynamic, ?scope:Dynamic):Dynamic;
	/**
		Creates a _TargetColumn for binary classification with SVMs.
		
		The target column uses binary hinge loss.
		
		Args:
		  label_name: String, name of the key in label dict. Can be null if label
		    is a tensor (single headed models).
		  weight_column_name: A string defining feature column name representing
		    weights. It is used to down weight or boost examples during training. It
		    will be multiplied by the loss of the example.
		
		Returns:
		  An instance of _TargetColumn.
	**/
	static public function binary_svm_target(?label_name:Dynamic, ?weight_column_name:Dynamic):Dynamic;
	/**
		Bucketizes input_tensor by given boundaries.
		
		See bucketize_op.cc for more details.
		
		Args:
		  input_tensor: A `Tensor` which will be bucketize.
		  boundaries: A list of floats gives the boundaries. It has to be sorted.
		  name: A name prefix for the returned tensors (optional).
		
		Returns:
		  A `Tensor` with type int32 which indicates the corresponding bucket for
		    each value in `input_tensor`.
		
		Raises:
		  TypeError: If boundaries is not a list.
	**/
	static public function bucketize(input_tensor:Dynamic, boundaries:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Creates a _BucketizedColumn.
		
		Args:
		  source_column: A _RealValuedColumn defining dense column.
		  boundaries: A list of floats specifying the boundaries. It has to be sorted.
		
		Returns:
		  A _BucketizedColumn.
		
		Raises:
		  ValueError: if 'boundaries' is empty or not sorted.
	**/
	static public function bucketized_column(source_column:Dynamic, boundaries:Dynamic):Dynamic;
	/**
		Checks the validity of the set of FeatureColumns.
		
		Args:
		  feature_columns: A set of instances or subclasses of FeatureColumn.
		
		Raises:
		  ValueError: If there are duplicate feature column keys.
	**/
	static public function check_feature_columns(feature_columns:Dynamic):Dynamic;
	/**
		Adds a 2D convolution followed by an optional batch_norm layer.
		
		`convolution2d` creates a variable called `weights`, representing the
		convolutional kernel, that is convolved with the `inputs` to produce a
		`Tensor` of activations. If a `normalizer_fn` is provided (such as
		`batch_norm`), it is then applied. Otherwise, if `normalizer_fn` is
		None and a `biases_initializer` is provided then a `biases` variable would be
		created and added the activations. Finally, if `activation_fn` is not `None`,
		it is applied to the activations as well.
		
		Performs a'trous convolution with input stride equal to rate if rate is
		greater than one.
		
		Args:
		  inputs: a 4-D tensor  `[batch_size, height, width, channels]`.
		  num_outputs: integer, the number of output filters.
		  kernel_size: a list of length 2 `[kernel_height, kernel_width]` of
		    of the filters. Can be an int if both values are the same.
		  stride: a list of length 2 `[stride_height, stride_width]`.
		    Can be an int if both strides are the same. Note that presently
		    both strides must have the same value.
		  padding: one of `VALID` or `SAME`.
		  rate: integer. If less than or equal to 1, a standard convolution is used.
		    If greater than 1, than the a'trous convolution is applied and `stride`
		    must be set to 1.
		  activation_fn: activation function.
		  normalizer_fn: normalization function to use instead of `biases`. If
		    `normalize_fn` is provided then `biases_initializer` and
		    `biases_regularizer` are ignored and `biases` are not created nor added.
		  normalizer_params: normalization function parameters.
		  weights_initializer: An initializer for the weights.
		  weights_regularizer: Optional regularizer for the weights.
		  biases_initializer: An initializer for the biases. If None skip biases.
		  biases_regularizer: Optional regularizer for the biases.
		  reuse: whether or not the layer and its variables should be reused. To be
		    able to reuse the layer scope must be given.
		  variables_collections: optional list of collections for all the variables or
		    a dictionay containing a different list of collection per variable.
		  outputs_collections: collection to add the outputs.
		  trainable: If `True` also add variables to the graph collection
		    `GraphKeys.TRAINABLE_VARIABLES` (see tf.Variable).
		  scope: Optional scope for `variable_op_scope`.
		
		Returns:
		  a tensor representing the output of the operation.
		
		Raises:
		  ValueError: if both 'rate' and `stride` are larger than one.
	**/
	static public function conv2d(inputs:Dynamic, num_outputs:Dynamic, kernel_size:Dynamic, ?stride:Dynamic, ?padding:Dynamic, ?rate:Dynamic, ?activation_fn:Dynamic, ?normalizer_fn:Dynamic, ?normalizer_params:Dynamic, ?weights_initializer:Dynamic, ?weights_regularizer:Dynamic, ?biases_initializer:Dynamic, ?biases_regularizer:Dynamic, ?reuse:Dynamic, ?variables_collections:Dynamic, ?outputs_collections:Dynamic, ?trainable:Dynamic, ?scope:Dynamic):Dynamic;
	/**
		Performs the same in-plane convolution to each channel independently.
		
		This is useful for performing various simple channel-independent convolution
		operations such as image gradients:
		
		  image = tf.constant(..., shape=(16, 240, 320, 3))
		  vert_gradients = layers.conv2d_in_plane(image,
		                                          kernel=[1, -1],
		                                          kernel_size=[2, 1])
		  horz_gradients = layers.conv2d_in_plane(image,
		                                          kernel=[1, -1],
		                                          kernel_size=[1, 2])
		
		Args:
		  inputs: a 4-D tensor with dimensions [batch_size, height, width, channels].
		  kernel_size: a list of length 2 holding the [kernel_height, kernel_width] of
		    of the pooling. Can be an int if both values are the same.
		  stride: a list of length 2 `[stride_height, stride_width]`.
		    Can be an int if both strides are the same. Note that presently
		    both strides must have the same value.
		  padding: the padding type to use, either 'SAME' or 'VALID'.
		  activation_fn: activation function.
		  normalizer_fn: normalization function to use instead of `biases`. If
		    `normalize_fn` is provided then `biases_initializer` and
		    `biases_regularizer` are ignored and `biases` are not created nor added.
		  normalizer_params: normalization function parameters.
		  weights_initializer: An initializer for the weights.
		  weights_regularizer: Optional regularizer for the weights.
		  biases_initializer: An initializer for the biases. If None skip biases.
		  biases_regularizer: Optional regularizer for the biases.
		  reuse: whether or not the layer and its variables should be reused. To be
		    able to reuse the layer scope must be given.
		  variables_collections: optional list of collections for all the variables or
		    a dictionay containing a different list of collection per variable.
		  outputs_collections: collection to add the outputs.
		  trainable: If `True` also add variables to the graph collection
		    `GraphKeys.TRAINABLE_VARIABLES` (see tf.Variable).
		  scope: Optional scope for `variable_op_scope`.
		
		Returns:
		  A `Tensor` representing the output of the operation.
	**/
	static public function conv2d_in_plane(inputs:Dynamic, kernel_size:Dynamic, ?stride:Dynamic, ?padding:Dynamic, ?activation_fn:Dynamic, ?normalizer_fn:Dynamic, ?normalizer_params:Dynamic, ?weights_initializer:Dynamic, ?weights_regularizer:Dynamic, ?biases_initializer:Dynamic, ?biases_regularizer:Dynamic, ?reuse:Dynamic, ?variables_collections:Dynamic, ?outputs_collections:Dynamic, ?trainable:Dynamic, ?scope:Dynamic):Dynamic;
	/**
		Adds a convolution2d_transpose with an optional batch normalization layer.
		
		The function creates a variable called `weights`, representing the
		kernel, that is convolved with the input. If `batch_norm_params` is `None`, a
		second variable called 'biases' is added to the result of the operation.
		
		Args:
		  inputs: a tensor of size [batch_size, height, width, channels].
		  num_outputs: integer, the number of output filters.
		  kernel_size: a list of length 2 holding the [kernel_height, kernel_width] of
		    of the filters. Can be an int if both values are the same.
		  stride: a list of length 2: [stride_height, stride_width].
		    Can be an int if both strides are the same.  Note that presently
		    both strides must have the same value.
		  padding: one of 'VALID' or 'SAME'.
		  activation_fn: activation function.
		  normalizer_fn: normalization function to use instead of `biases`. If
		    `normalize_fn` is provided then `biases_initializer` and
		    `biases_regularizer` are ignored and `biases` are not created nor added.
		  normalizer_params: normalization function parameters.
		  weights_initializer: An initializer for the weights.
		  weights_regularizer: Optional regularizer for the weights.
		  biases_initializer: An initializer for the biases. If None skip biases.
		  biases_regularizer: Optional regularizer for the biases.
		  reuse: whether or not the layer and its variables should be reused. To be
		    able to reuse the layer scope must be given.
		  variables_collections: optional list of collections for all the variables or
		    a dictionay containing a different list of collection per variable.
		  outputs_collections: collection to add the outputs.
		  trainable: whether or not the variables should be trainable or not.
		  scope: Optional scope for variable_op_scope.
		
		Returns:
		  a tensor representing the output of the operation.
		
		Raises:
		  ValueError: if 'kernel_size' is not a list of length 2.
	**/
	static public function conv2d_transpose(inputs:Dynamic, num_outputs:Dynamic, kernel_size:Dynamic, ?stride:Dynamic, ?padding:Dynamic, ?activation_fn:Dynamic, ?normalizer_fn:Dynamic, ?normalizer_params:Dynamic, ?weights_initializer:Dynamic, ?weights_regularizer:Dynamic, ?biases_initializer:Dynamic, ?biases_regularizer:Dynamic, ?reuse:Dynamic, ?variables_collections:Dynamic, ?outputs_collections:Dynamic, ?trainable:Dynamic, ?scope:Dynamic):Dynamic;
	/**
		Adds a 2D convolution followed by an optional batch_norm layer.
		
		`convolution2d` creates a variable called `weights`, representing the
		convolutional kernel, that is convolved with the `inputs` to produce a
		`Tensor` of activations. If a `normalizer_fn` is provided (such as
		`batch_norm`), it is then applied. Otherwise, if `normalizer_fn` is
		None and a `biases_initializer` is provided then a `biases` variable would be
		created and added the activations. Finally, if `activation_fn` is not `None`,
		it is applied to the activations as well.
		
		Performs a'trous convolution with input stride equal to rate if rate is
		greater than one.
		
		Args:
		  inputs: a 4-D tensor  `[batch_size, height, width, channels]`.
		  num_outputs: integer, the number of output filters.
		  kernel_size: a list of length 2 `[kernel_height, kernel_width]` of
		    of the filters. Can be an int if both values are the same.
		  stride: a list of length 2 `[stride_height, stride_width]`.
		    Can be an int if both strides are the same. Note that presently
		    both strides must have the same value.
		  padding: one of `VALID` or `SAME`.
		  rate: integer. If less than or equal to 1, a standard convolution is used.
		    If greater than 1, than the a'trous convolution is applied and `stride`
		    must be set to 1.
		  activation_fn: activation function.
		  normalizer_fn: normalization function to use instead of `biases`. If
		    `normalize_fn` is provided then `biases_initializer` and
		    `biases_regularizer` are ignored and `biases` are not created nor added.
		  normalizer_params: normalization function parameters.
		  weights_initializer: An initializer for the weights.
		  weights_regularizer: Optional regularizer for the weights.
		  biases_initializer: An initializer for the biases. If None skip biases.
		  biases_regularizer: Optional regularizer for the biases.
		  reuse: whether or not the layer and its variables should be reused. To be
		    able to reuse the layer scope must be given.
		  variables_collections: optional list of collections for all the variables or
		    a dictionay containing a different list of collection per variable.
		  outputs_collections: collection to add the outputs.
		  trainable: If `True` also add variables to the graph collection
		    `GraphKeys.TRAINABLE_VARIABLES` (see tf.Variable).
		  scope: Optional scope for `variable_op_scope`.
		
		Returns:
		  a tensor representing the output of the operation.
		
		Raises:
		  ValueError: if both 'rate' and `stride` are larger than one.
	**/
	static public function convolution2d(inputs:Dynamic, num_outputs:Dynamic, kernel_size:Dynamic, ?stride:Dynamic, ?padding:Dynamic, ?rate:Dynamic, ?activation_fn:Dynamic, ?normalizer_fn:Dynamic, ?normalizer_params:Dynamic, ?weights_initializer:Dynamic, ?weights_regularizer:Dynamic, ?biases_initializer:Dynamic, ?biases_regularizer:Dynamic, ?reuse:Dynamic, ?variables_collections:Dynamic, ?outputs_collections:Dynamic, ?trainable:Dynamic, ?scope:Dynamic):Dynamic;
	/**
		Performs the same in-plane convolution to each channel independently.
		
		This is useful for performing various simple channel-independent convolution
		operations such as image gradients:
		
		  image = tf.constant(..., shape=(16, 240, 320, 3))
		  vert_gradients = layers.conv2d_in_plane(image,
		                                          kernel=[1, -1],
		                                          kernel_size=[2, 1])
		  horz_gradients = layers.conv2d_in_plane(image,
		                                          kernel=[1, -1],
		                                          kernel_size=[1, 2])
		
		Args:
		  inputs: a 4-D tensor with dimensions [batch_size, height, width, channels].
		  kernel_size: a list of length 2 holding the [kernel_height, kernel_width] of
		    of the pooling. Can be an int if both values are the same.
		  stride: a list of length 2 `[stride_height, stride_width]`.
		    Can be an int if both strides are the same. Note that presently
		    both strides must have the same value.
		  padding: the padding type to use, either 'SAME' or 'VALID'.
		  activation_fn: activation function.
		  normalizer_fn: normalization function to use instead of `biases`. If
		    `normalize_fn` is provided then `biases_initializer` and
		    `biases_regularizer` are ignored and `biases` are not created nor added.
		  normalizer_params: normalization function parameters.
		  weights_initializer: An initializer for the weights.
		  weights_regularizer: Optional regularizer for the weights.
		  biases_initializer: An initializer for the biases. If None skip biases.
		  biases_regularizer: Optional regularizer for the biases.
		  reuse: whether or not the layer and its variables should be reused. To be
		    able to reuse the layer scope must be given.
		  variables_collections: optional list of collections for all the variables or
		    a dictionay containing a different list of collection per variable.
		  outputs_collections: collection to add the outputs.
		  trainable: If `True` also add variables to the graph collection
		    `GraphKeys.TRAINABLE_VARIABLES` (see tf.Variable).
		  scope: Optional scope for `variable_op_scope`.
		
		Returns:
		  A `Tensor` representing the output of the operation.
	**/
	static public function convolution2d_in_plane(inputs:Dynamic, kernel_size:Dynamic, ?stride:Dynamic, ?padding:Dynamic, ?activation_fn:Dynamic, ?normalizer_fn:Dynamic, ?normalizer_params:Dynamic, ?weights_initializer:Dynamic, ?weights_regularizer:Dynamic, ?biases_initializer:Dynamic, ?biases_regularizer:Dynamic, ?reuse:Dynamic, ?variables_collections:Dynamic, ?outputs_collections:Dynamic, ?trainable:Dynamic, ?scope:Dynamic):Dynamic;
	/**
		Adds a convolution2d_transpose with an optional batch normalization layer.
		
		The function creates a variable called `weights`, representing the
		kernel, that is convolved with the input. If `batch_norm_params` is `None`, a
		second variable called 'biases' is added to the result of the operation.
		
		Args:
		  inputs: a tensor of size [batch_size, height, width, channels].
		  num_outputs: integer, the number of output filters.
		  kernel_size: a list of length 2 holding the [kernel_height, kernel_width] of
		    of the filters. Can be an int if both values are the same.
		  stride: a list of length 2: [stride_height, stride_width].
		    Can be an int if both strides are the same.  Note that presently
		    both strides must have the same value.
		  padding: one of 'VALID' or 'SAME'.
		  activation_fn: activation function.
		  normalizer_fn: normalization function to use instead of `biases`. If
		    `normalize_fn` is provided then `biases_initializer` and
		    `biases_regularizer` are ignored and `biases` are not created nor added.
		  normalizer_params: normalization function parameters.
		  weights_initializer: An initializer for the weights.
		  weights_regularizer: Optional regularizer for the weights.
		  biases_initializer: An initializer for the biases. If None skip biases.
		  biases_regularizer: Optional regularizer for the biases.
		  reuse: whether or not the layer and its variables should be reused. To be
		    able to reuse the layer scope must be given.
		  variables_collections: optional list of collections for all the variables or
		    a dictionay containing a different list of collection per variable.
		  outputs_collections: collection to add the outputs.
		  trainable: whether or not the variables should be trainable or not.
		  scope: Optional scope for variable_op_scope.
		
		Returns:
		  a tensor representing the output of the operation.
		
		Raises:
		  ValueError: if 'kernel_size' is not a list of length 2.
	**/
	static public function convolution2d_transpose(inputs:Dynamic, num_outputs:Dynamic, kernel_size:Dynamic, ?stride:Dynamic, ?padding:Dynamic, ?activation_fn:Dynamic, ?normalizer_fn:Dynamic, ?normalizer_params:Dynamic, ?weights_initializer:Dynamic, ?weights_regularizer:Dynamic, ?biases_initializer:Dynamic, ?biases_regularizer:Dynamic, ?reuse:Dynamic, ?variables_collections:Dynamic, ?outputs_collections:Dynamic, ?trainable:Dynamic, ?scope:Dynamic):Dynamic;
	/**
		Helper that prepares features config from input feature_columns.
		
		The returned feature config can be used as arg 'features' in tf.parse_example.
		
		Typical usage example:
		
		```python
		# Define features and transformations
		country = sparse_column_with_vocabulary_file("country", VOCAB_FILE)
		age = real_valued_column("age")
		click_bucket = bucketized_column(real_valued_column("historical_click_ratio"),
		                                 boundaries=[i/10. for i in range(10)])
		country_x_click = crossed_column([country, click_bucket], 10)
		
		feature_columns = set([age, click_bucket, country_x_click])
		batch_examples = tf.parse_example(
		    serialized_examples,
		    create_feature_spec_for_parsing(feature_columns))
		```
		
		For the above example, create_feature_spec_for_parsing would return the dict:
		{"age": parsing_ops.FixedLenFeature([1], dtype=tf.float32),
		 "historical_click_ratio": parsing_ops.FixedLenFeature([1], dtype=tf.float32),
		 "country": parsing_ops.VarLenFeature(tf.string)}
		
		Args:
		  feature_columns: An iterable containing all the feature columns. All items
		    should be instances of classes derived from _FeatureColumn.
		Returns:
		  A dict mapping feature keys to FixedLenFeature or VarLenFeature values.
	**/
	static public function create_feature_spec_for_parsing(feature_columns:Dynamic):Dynamic;
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
		Creates a _CrossedColumn.
		
		Args:
		  columns: An iterable of _FeatureColumn. Items can be an instance of
		    _SparseColumn, _CrossedColumn, or _BucketizedColumn.
		  hash_bucket_size: An int that is > 1. The number of buckets.
		  combiner: A combiner string, supports sum, mean, sqrtn.
		  ckpt_to_load_from: (Optional). String representing checkpoint name/pattern
		    to restore the column weights. Required if `tensor_name_in_ckpt` is not
		    None.
		  tensor_name_in_ckpt: (Optional). Name of the `Tensor` in the provided
		    checkpoint from which to restore the column weights. Required if
		    `ckpt_to_load_from` is not None.
		
		Returns:
		  A _CrossedColumn.
		
		Raises:
		  TypeError: if any item in columns is not an instance of _SparseColumn,
		    _CrossedColumn, or _BucketizedColumn, or
		    hash_bucket_size is not an int.
		  ValueError: if hash_bucket_size is not > 1 or
		    len(columns) is not > 1.
	**/
	static public function crossed_column(columns:Dynamic, hash_bucket_size:Dynamic, ?combiner:Dynamic, ?ckpt_to_load_from:Dynamic, ?tensor_name_in_ckpt:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Returns a dropout op applied to the input.
		
		With probability `keep_prob`, outputs the input element scaled up by
		`1 / keep_prob`, otherwise outputs `0`.  The scaling is so that the expected
		sum is unchanged.
		
		Args:
		  inputs: the tensor to pass to the nn.dropout op.
		  keep_prob: A scalar `Tensor` with the same type as x. The probability
		    that each element is kept.
		  noise_shape: A 1-D `Tensor` of type `int32`, representing the
		    shape for randomly generated keep/drop flags.
		  is_training: A bool `Tensor` indicating whether or not the model
		    is in training mode. If so, dropout is applied and values scaled.
		    Otherwise, inputs is returned.
		  outputs_collections: collection to add the outputs.
		  scope: Optional scope for op_scope.
		
		Returns:
		  a tensor representing the output of the operation.
	**/
	static public function dropout(inputs:Dynamic, ?keep_prob:Dynamic, ?noise_shape:Dynamic, ?is_training:Dynamic, ?outputs_collections:Dynamic, ?scope:Dynamic):Dynamic;
	/**
		Creates an _EmbeddingColumn.
		
		Args:
		  sparse_id_column: A _SparseColumn which is created by `sparse_column_with_*`
		    or crossed_column functions. Note that `combiner` defined in
		    `sparse_id_column` is ignored.
		  dimension: An integer specifying dimension of the embedding.
		  combiner: A string specifying how to reduce if there are multiple entries
		    in a single row. Currently "mean", "sqrtn" and "sum" are supported. Each
		    of this can be thought as example level normalizations on the column:
		      * "sum": do not normalize
		      * "mean": do l1 normalization
		      * "sqrtn": do l2 normalization
		    For more information: `tf.embedding_lookup_sparse`.
		  initializer: A variable initializer function to be used in embedding
		    variable initialization. If not specified, defaults to
		    `tf.truncated_normal_initializer` with mean 0.0 and standard deviation
		    1/sqrt(sparse_id_column.length).
		  ckpt_to_load_from: (Optional). String representing checkpoint name/pattern
		    to restore the column weights. Required if `tensor_name_in_ckpt` is not
		    None.
		  tensor_name_in_ckpt: (Optional). Name of the `Tensor` in the provided
		    checkpoint from which to restore the column weights. Required if
		    `ckpt_to_load_from` is not None.
		
		Returns:
		  An _EmbeddingColumn.
	**/
	static public function embedding_column(sparse_id_column:Dynamic, dimension:Dynamic, ?combiner:Dynamic, ?initializer:Dynamic, ?ckpt_to_load_from:Dynamic, ?tensor_name_in_ckpt:Dynamic):Dynamic;
	/**
		Flattens the input while maintaining the batch_size.
		
		  Assumes that the first dimension represents the batch.
		
		Args:
		  inputs: a tensor of size [batch_size, ...].
		  outputs_collections: collection to add the outputs.
		  scope: Optional scope for op_scope.
		
		Returns:
		  a flattened tensor with shape [batch_size, k].
		Raises:
		  ValueError: if inputs.shape is wrong.
	**/
	static public function flatten(inputs:Dynamic, ?outputs_collections:Dynamic, ?scope:Dynamic):Dynamic;
	/**
		Adds a fully connected layer.
		
		`fully_connected` creates a variable called `weights`, representing a fully
		connected weight matrix, which is multiplied by the `inputs` to produce a
		`Tensor` of hidden units. If a `normalizer_fn` is provided (such as
		`batch_norm`), it is then applied. Otherwise, if `normalizer_fn` is
		None and a `biases_initializer` is provided then a `biases` variable would be
		created and added the hidden units. Finally, if `activation_fn` is not `None`,
		it is applied to the hidden units as well.
		
		Note: that if `inputs` have a rank greater than 2, then `inputs` is flattened
		prior to the initial matrix multiply by `weights`.
		
		Args:
		  inputs: A tensor of with at least rank 2 and value for the last dimension,
		    i.e. `[batch_size, depth]`, `[None, None, None, channels]`.
		  num_outputs: Integer, the number of output units in the layer.
		  activation_fn: activation function.
		  normalizer_fn: normalization function to use instead of `biases`. If
		    `normalize_fn` is provided then `biases_initializer` and
		    `biases_regularizer` are ignored and `biases` are not created nor added.
		  normalizer_params: normalization function parameters.
		  weights_initializer: An initializer for the weights.
		  weights_regularizer: Optional regularizer for the weights.
		  biases_initializer: An initializer for the biases. If None skip biases.
		  biases_regularizer: Optional regularizer for the biases.
		  reuse: whether or not the layer and its variables should be reused. To be
		    able to reuse the layer scope must be given.
		  variables_collections: Optional list of collections for all the variables or
		    a dictionary containing a different list of collections per variable.
		  outputs_collections: collection to add the outputs.
		  trainable: If `True` also add variables to the graph collection
		    `GraphKeys.TRAINABLE_VARIABLES` (see tf.Variable).
		  scope: Optional scope for variable_op_scope.
		
		Returns:
		   the tensor variable representing the result of the series of operations.
		
		Raises:
		  ValueError: if x has rank less than 2 or if its last dimension is not set.
	**/
	static public function fully_connected(inputs:Dynamic, num_outputs:Dynamic, ?activation_fn:Dynamic, ?normalizer_fn:Dynamic, ?normalizer_params:Dynamic, ?weights_initializer:Dynamic, ?weights_regularizer:Dynamic, ?biases_initializer:Dynamic, ?biases_regularizer:Dynamic, ?reuse:Dynamic, ?variables_collections:Dynamic, ?outputs_collections:Dynamic, ?trainable:Dynamic, ?scope:Dynamic):Dynamic;
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
		Creates an embedding column of a sparse feature using parameter hashing.
		
		The i-th embedding component of a value v is found by retrieving an
		embedding weight whose index is a fingerprint of the pair (v,i).
		
		Args:
		  column_name: A string defining sparse column name.
		  size: An integer specifying the number of parameters in the embedding layer.
		  dimension: An integer specifying dimension of the embedding.
		  combiner: A string specifying how to reduce if there are multiple entries
		    in a single row. Currently "mean", "sqrtn" and "sum" are supported. Each
		    of this can be thought as example level normalizations on the column:
		      * "sum": do not normalize features in the column
		      * "mean": do l1 normalization on features in the column
		      * "sqrtn": do l2 normalization on features in the column
		    For more information: `tf.embedding_lookup_sparse`.
		  initializer: A variable initializer function to be used in embedding
		    variable initialization. If not specified, defaults to
		    `tf.truncated_normal_initializer` with mean 0 and standard deviation 0.1.
		
		Returns:
		  A _HashedEmbeddingColumn.
		
		Raises:
		  ValueError: if dimension or size is not a positive integer; or if combiner
		    is not supported.
	**/
	static public function hashed_embedding_column(column_name:Dynamic, size:Dynamic, dimension:Dynamic, ?combiner:Dynamic, ?initializer:Dynamic):Dynamic;
	/**
		Looks up embeddings using parameter hashing for each value in `values`.
		
		The i-th embedding component of a value v in `values` is found by retrieving
		the weight whose index is a fingerprint of the pair (v,i).
		The concept is explored as "feature hashing" for model compression in this
		paper: http://arxiv.org/pdf/1504.04788.pdf
		
		Feature hashing has the pleasant effect of allowing us to compute an embedding
		without needing a pre-determined vocabulary, relieving some amount of process
		complexity. It also allows for us to maintain embeddings for possibly
		trillions of features with a fixed amount of memory.
		
		Note that this is superior to out-of-vocabulary shared "hash buckets" in that
		the embedding is extremely likely to be unique for each token as opposed to
		being shared across probably-colliding tokens. The price is that we must
		compute a hash once for each scalar in the token's embedding as opposed to
		once per token.
		
		If `params` is a list, it represents a partition of the embedding parameters.
		Each tensor in the list should have the same length, except for the first ones
		which may have an additional element. For instance 10 parameters can be
		partitioned in 4 tensors with length `[3, 3, 2, 2]`.
		
		Args:
		  params: A `Tensor` or `list` of `Tensors`.
		    Each tensor must be of rank 1 with fully-defined shape.
		  values: `Tensor` of values to be embedded.
		  dimension: Embedding dimension
		  name: An optional name for this op.
		
		Returns:
		  A tensor with shape [d0, ..., dn, dimension]
		    with shape(values) = [d0, ..., dn]
		
		Raises:
		  ValueError: if dimension is not positive or the partition size is invalid.
	**/
	static public function hashed_embedding_lookup(params:Dynamic, values:Dynamic, dimension:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Looks up embeddings of a sparse feature using parameter hashing.
		
		See `tf.contrib.layers.hashed_embedding_lookup` for embedding with hashing.
		
		Args:
		  params: A `Tensor` or `list` of `Tensors`.
		    Each tensor must be of rank 1 with fully-defined shape.
		  sparse_values: A 2-D `SparseTensor` containing the values to be embedded.
		    Some rows may be empty.
		  dimension: Embedding dimension
		  combiner: A string specifying how to combine embedding results for each
		      entry. Currently "mean", "sqrtn" and "sum" are supported, with "mean"
		      the default.
		  default_value: The value to use for an entry with no features.
		  name: An optional name for this op.
		
		Returns:
		   Dense tensor with shape [N, dimension] with N the number of rows in
		     sparse_values.
		
		Raises:
		  TypeError: If sparse_values is not a SparseTensor.
		  ValueError: If combiner is not one of {"mean", "sqrtn", "sum"}.
	**/
	static public function hashed_embedding_lookup_sparse(params:Dynamic, sparse_values:Dynamic, dimension:Dynamic, ?combiner:Dynamic, ?default_value:Dynamic, ?name:Dynamic):Dynamic;
	static public function infer_real_valued_columns(features:Dynamic):Dynamic;
	/**
		A tf.contrib.layer style input layer builder based on FeatureColumns.
		
		Generally a single example in training data is described with feature columns.
		At the first layer of the model, this column oriented data should be converted
		to a single tensor. Each feature column needs a different kind of operation
		during this conversion. For example sparse features need a totally different
		handling than continuous features.
		
		An example usage of input_from_feature_columns is as follows:
		
		  # Building model for training
		  columns_to_tensor = tf.parse_example(...)
		  first_layer = input_from_feature_columns(
		      columns_to_tensors=columns_to_tensor,
		      feature_columns=feature_columns)
		  second_layer = fully_connected(first_layer, ...)
		  ...
		
		  where feature_columns can be defined as follows:
		
		  occupation = sparse_column_with_hash_bucket(column_name="occupation",
		                                            hash_bucket_size=1000)
		  occupation_emb = embedding_column(sparse_id_column=occupation, dimension=16,
		                                   combiner="sum")
		  age = real_valued_column("age")
		  age_buckets = bucketized_column(
		      source_column=age,
		      boundaries=[18, 25, 30, 35, 40, 45, 50, 55, 60, 65])
		  occupation_x_age = crossed_column(columns=[occupation, age_buckets],
		                                    hash_bucket_size=10000)
		
		  feature_columns=[occupation_emb, occupation_x_age]
		
		Args:
		  columns_to_tensors: A mapping from feature column to tensors. 'string' key
		    means a base feature (not-transformed). It can have FeatureColumn as a
		    key too. That means that FeatureColumn is already transformed by input
		    pipeline. For example, `inflow` may have handled transformations.
		  feature_columns: A set containing all the feature columns. All items in the
		    set should be instances of classes derived by FeatureColumn.
		  weight_collections: List of graph collections to which weights are added.
		  trainable: If `True` also add variables to the graph collection
		    `GraphKeys.TRAINABLE_VARIABLES` (see tf.Variable).
		  scope: Optional scope for variable_op_scope.
		
		Returns:
		  A Tensor which can be consumed by hidden layers in the neural network.
		
		Raises:
		  ValueError: if FeatureColumn cannot be consumed by a neural network.
	**/
	static public function input_from_feature_columns(columns_to_tensors:Dynamic, feature_columns:Dynamic, ?weight_collections:Dynamic, ?trainable:Dynamic, ?scope:Dynamic):Dynamic;
	/**
		Checks if a summary tag is unique.
		
		Args:
		  tag: The tag to use
		
		Returns:
		  True if the summary tag is unique.
	**/
	static public function is_summary_tag_unique(tag:Dynamic):Dynamic;
	/**
		Returns a function that can be used to apply L1 L2 regularizations.
		
		Args:
		  scale_l1: A scalar multiplier `Tensor` for L1 regularization.
		  scale_l2: A scalar multiplier `Tensor` for L2 regularization.
		  scope: An optional op_scope name.
		
		Returns:
		  A function with signature `l1_l2(weights)` that applies a weighted sum of
		  L1 L2  regularization.
		
		Raises:
		  ValueError: If scale is negative or if scale is not a float.
	**/
	static public function l1_l2_regularizer(?scale_l1:Dynamic, ?scale_l2:Dynamic, ?scope:Dynamic):Dynamic;
	/**
		Returns a function that can be used to apply L1 regularization to weights.
		
		L1 regularization encourages sparsity.
		
		Args:
		  scale: A scalar multiplier `Tensor`. 0.0 disables the regularizer.
		  scope: An optional op_scope name.
		
		Returns:
		  A function with signature `l1(weights)` that apply L1 regularization.
		
		Raises:
		  ValueError: If scale is negative or if scale is not a float.
	**/
	static public function l1_regularizer(scale:Dynamic, ?scope:Dynamic):Dynamic;
	/**
		Returns a function that can be used to apply L2 regularization to weights.
		
		Small values of L2 can help prevent overfitting the training data.
		
		Args:
		  scale: A scalar multiplier `Tensor`. 0.0 disables the regularizer.
		  scope: An optional op_scope name.
		
		Returns:
		  A function with signature `l2(weights)` that applies L2 regularization.
		
		Raises:
		  ValueError: If scale is negative or if scale is not a float.
	**/
	static public function l2_regularizer(scale:Dynamic, ?scope:Dynamic):Dynamic;
	/**
		Adds the parameters for a fully connected layer and returns the output.
		
		A fully connected layer is generally defined as a matrix multiply:
		`y = f(w * x + b)` where `f` is given by `activation_fn`. If
		`activation_fn` is `None`, the result of `y = w * x + b` is
		returned.
		
		If `x` has shape [\\\(\\text{dim}_0, \\text{dim}_1, ..., \\text{dim}_n\\\)]
		with more than 2 dimensions (\\\(n > 1\\\)), then we repeat the matrix
		multiply along the first dimensions. The result r is a tensor of shape
		[\\\(\\text{dim}_0, ..., \\text{dim}_{n-1},\\\) `num_output_units`],
		where \\\( r_{i_0, ..., i_{n-1}, k} =
		\\sum_{0 \\leq j < \\text{dim}_n} x_{i_0, ... i_{n-1}, j} \cdot w_{j, k}\\\).
		This is accomplished by reshaping `x` to 2-D
		[\\\(\\text{dim}_0 \\cdot ... \\cdot \\text{dim}_{n-1}, \\text{dim}_n\\\)]
		before the matrix multiply and afterwards reshaping it to
		[\\\(\\text{dim}_0, ..., \\text{dim}_{n-1},\\\) `num_output_units`].
		
		This op creates `w` and optionally `b`. Bias (`b`) can be disabled by setting
		`bias_init` to `None`.
		
		The variable creation is compatible with `tf.variable_scope` and so can be
		reused with `tf.variable_scope` or `tf.make_template`.
		
		Most of the details of variable creation can be controlled by specifying the
		initializers (`weight_init` and `bias_init`) and in which collections to place
		the created variables (`weight_collections` and `bias_collections`; note that
		the variables are always added to the `VARIABLES` collection). The output of
		the layer can be placed in custom collections using `output_collections`.
		The collections arguments default to `WEIGHTS`, `BIASES` and `ACTIVATIONS`,
		respectively.
		
		A per layer regularization can be specified by setting `weight_regularizer`
		and `bias_regularizer`, which are applied to the weights and biases
		respectively, and whose output is added to the `REGULARIZATION_LOSSES`
		collection.
		
		Args:
		  x: The input `Tensor`.
		  num_output_units: The size of the output.
		  activation_fn: A function that requires a single Tensor that is applied as a
		    non-linearity. If None is used, do not apply any activation.
		  weight_init: An optional weight initialization, defaults to
		    `xavier_initializer`.
		  bias_init: An initializer for the bias, defaults to 0. Set to `None` in
		    order to disable bias.
		  name: The name for this operation is used to name operations and to find
		    variables. If specified it must be unique for this scope, otherwise a
		    unique name starting with "fully_connected" will be created.  See
		    `tf.variable_op_scope` for details.
		  weight_collections: List of graph collections to which weights are added.
		  bias_collections: List of graph collections to which biases are added.
		  output_collections: List of graph collections to which outputs are added.
		  trainable: If `True` also add variables to the graph collection
		    `GraphKeys.TRAINABLE_VARIABLES` (see tf.Variable).
		  weight_regularizer: A regularizer like the result of
		    `l1_regularizer` or `l2_regularizer`. Used for weights.
		  bias_regularizer: A regularizer like the result of
		    `l1_regularizer` or `l2_regularizer`. Used for biases.
		
		Returns:
		  The output of the fully connected layer.
		
		Raises:
		  ValueError: if x has rank less than 2 or if its last dimension is not set.
	**/
	static public function legacy_fully_connected(x:Dynamic, num_output_units:Dynamic, ?activation_fn:Dynamic, ?weight_init:Dynamic, ?bias_init:Dynamic, ?name:Dynamic, ?weight_collections:Dynamic, ?bias_collections:Dynamic, ?output_collections:Dynamic, ?trainable:Dynamic, ?weight_regularizer:Dynamic, ?bias_regularizer:Dynamic):Dynamic;
	static public function legacy_linear(x:Dynamic, num_output_units:Dynamic, ?activation_fn:Dynamic, ?weight_init:Dynamic, ?bias_init:Dynamic, ?name:Dynamic, ?weight_collections:Dynamic, ?bias_collections:Dynamic, ?output_collections:Dynamic, ?trainable:Dynamic, ?weight_regularizer:Dynamic, ?bias_regularizer:Dynamic):Dynamic;
	static public function legacy_relu(x:Dynamic, num_output_units:Dynamic, ?activation_fn:Dynamic, ?weight_init:Dynamic, ?bias_init:Dynamic, ?name:Dynamic, ?weight_collections:Dynamic, ?bias_collections:Dynamic, ?output_collections:Dynamic, ?trainable:Dynamic, ?weight_regularizer:Dynamic, ?bias_regularizer:Dynamic):Dynamic;
	static public function linear(inputs:Dynamic, num_outputs:Dynamic, ?activation_fn:Dynamic, ?normalizer_fn:Dynamic, ?normalizer_params:Dynamic, ?weights_initializer:Dynamic, ?weights_regularizer:Dynamic, ?biases_initializer:Dynamic, ?biases_regularizer:Dynamic, ?reuse:Dynamic, ?variables_collections:Dynamic, ?outputs_collections:Dynamic, ?trainable:Dynamic, ?scope:Dynamic):Dynamic;
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
		Returns placeholder tensors for inference.
		
		Args:
		  feature_columns: An iterable containing all the feature columns. All items
		    should be instances of classes derived from _FeatureColumn.
		Returns:
		  A dict mapping feature keys to SparseTensors (sparse columns) or
		  placeholder Tensors (dense columns).
	**/
	static public function make_place_holder_tensors_for_base_features(feature_columns:Dynamic):Dynamic;
	/**
		Adds a 2D Max Pooling op.
		
		It is assumed that the pooling is done per image but not in batch or channels.
		
		Args:
		  inputs: A `Tensor` of size [batch_size, height, width, channels].
		  kernel_size: A list of length 2: [kernel_height, kernel_width] of the
		    pooling kernel over which the op is computed. Can be an int if both
		    values are the same.
		  stride: A list of length 2: [stride_height, stride_width].
		    Can be an int if both strides are the same. Note that presently
		    both strides must have the same value.
		  padding: The padding method, either 'VALID' or 'SAME'.
		  outputs_collections: The collections to which the outputs are added.
		  scope: Optional scope for op_scope.
		
		Returns:
		  A `Tensor` representing the results of the pooling operation.
		
		Raises:
		  ValueError: If 'kernel_size' is not a 2-D list
	**/
	static public function max_pool2d(inputs:Dynamic, kernel_size:Dynamic, ?stride:Dynamic, ?padding:Dynamic, ?outputs_collections:Dynamic, ?scope:Dynamic):Dynamic;
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
	/**
		Creates a _TargetColumn for multi class single label classification.
		
		The target column uses softmax cross entropy loss.
		
		Args:
		  n_classes: Integer, number of classes, must be >= 2
		  label_name: String, name of the key in label dict. Can be null if label
		      is a tensor (single headed models).
		  weight_column_name: A string defining feature column name representing
		    weights. It is used to down weight or boost examples during training. It
		    will be multiplied by the loss of the example.
		
		Returns:
		  An instance of _MultiClassTargetColumn.
		
		Raises:
		  ValueError: if n_classes is < 2
	**/
	static public function multi_class_target(n_classes:Dynamic, ?label_name:Dynamic, ?weight_column_name:Dynamic):Dynamic;
	/**
		Transform numeric labels into onehot_labels using tf.one_hot.
		
		Args:
		  labels: [batch_size] target labels.
		  num_classes: total number of classes.
		  on_value: A scalar defining the on-value.
		  off_value: A scalar defining the off-value.
		  outputs_collections: collection to add the outputs.
		  scope: Optional scope for op_scope.
		
		Returns:
		  one hot encoding of the labels.
	**/
	static public function one_hot_encoding(labels:Dynamic, num_classes:Dynamic, ?on_value:Dynamic, ?off_value:Dynamic, ?outputs_collections:Dynamic, ?scope:Dynamic):Dynamic;
	/**
		Given loss and parameters for optimizer, returns a training op.
		
		Args:
		  loss: Tensor, 0 dimensional.
		  global_step: Tensor, step counter for each update.
		  learning_rate: float or Tensor, magnitude of update per each training step.
		  optimizer: string, class or optimizer instance, used as trainer.
		             string should be name of optimizer, like 'SGD',
		               'Adam', 'Adagrad'. Full list in OPTIMIZER_CLS_NAMES constant.
		             class should be sub-class of tf.Optimizer that implements
		               `compute_gradients` and `apply_gradients` functions.
		             optimizer instance should be instantion of tf.Optimizer sub-class
		               and have `compute_gradients` and `apply_gradients` functions.
		  gradient_noise_scale: float or None, adds 0-mean normal noise scaled by this
		                        value.
		  gradient_multipliers: dict of variables or variable names to floats.
		                        If present, gradients for specified
		                        variables will be multiplied by given constant.
		  clip_gradients: float or `None`, clips gradients by this value.
		  moving_average_decay: Deprecated. float or None, takes into account previous
		                        loss to make learning smoother due to outliers.
		  learning_rate_decay_fn: function, takes `learning_rate` and `global_step`
		                          `Tensor`s, returns `Tensor`.
		                          Can be used to implement any learning rate decay
		                          functions.
		                          For example: tf.train.exponential_decay.
		  update_ops: list of update `Operation`s to execute at each step. If `None`,
		              uses elements of UPDATE_OPS collection.
		  variables: list of variables to optimize or
		             `None` to use all trainable variables.
		  name: The name for this operation is used to scope operations and summaries.
		  summaries: List of internal quantities to visualize on tensorboard. If not
		             set only the loss and the learning rate will be reported. The
		             complete list is in OPTIMIZER_SUMMARIES.
		
		Returns:
		  Training op.
		
		Raises:
		  ValueError: if optimizer is wrong type.
	**/
	static public function optimize_loss(loss:Dynamic, global_step:Dynamic, learning_rate:Dynamic, optimizer:Dynamic, ?gradient_noise_scale:Dynamic, ?gradient_multipliers:Dynamic, ?clip_gradients:Dynamic, ?moving_average_decay:Dynamic, ?learning_rate_decay_fn:Dynamic, ?update_ops:Dynamic, ?variables:Dynamic, ?name:Dynamic, ?summaries:Dynamic):Dynamic;
	/**
		Parses tf.Examples to extract tensors for given feature_columns.
		
		This is a wrapper of 'tf.parse_example'. A typical usage is as follows:
		
		```python
		columns_to_tensor = parse_feature_columns_from_examples(
		    serialized=my_data,
		    feature_columns=my_features)
		
		# Where my_features are:
		# Define features and transformations
		country = sparse_column_with_keys(column_name="native_country",
		                                  keys=["US", "BRA", ...])
		country_emb = embedding_column(sparse_id_column=country, dimension=3,
		                               combiner="sum")
		occupation = sparse_column_with_hash_bucket(column_name="occupation",
		                                            hash_bucket_size=1000)
		occupation_emb = embedding_column(sparse_id_column=occupation, dimension=16,
		                                 combiner="sum")
		occupation_x_country = crossed_column(columns=[occupation, country],
		                                      hash_bucket_size=10000)
		age = real_valued_column("age")
		age_buckets = bucketized_column(
		    source_column=age,
		    boundaries=[18, 25, 30, 35, 40, 45, 50, 55, 60, 65])
		
		my_features = [occupation_emb, age_buckets, country_emb]
		```
		
		Args:
		  serialized: A vector (1-D Tensor) of strings, a batch of binary
		    serialized `Example` protos.
		  feature_columns: An iterable containing all the feature columns. All items
		    should be instances of classes derived from _FeatureColumn.
		  name: A name for this operation (optional).
		  example_names: A vector (1-D Tensor) of strings (optional), the names of
		    the serialized protos in the batch.
		
		Returns:
		  A `dict` mapping FeatureColumn to `Tensor` and `SparseTensor` values.
	**/
	static public function parse_feature_columns_from_examples(serialized:Dynamic, feature_columns:Dynamic, ?name:Dynamic, ?example_names:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Creates a _RealValuedColumn.
		
		Args:
		  column_name: A string defining real valued column name.
		  dimension: An integer specifying dimension of the real valued column.
		    The default is 1. The Tensor representing the _RealValuedColumn
		    will have the shape of [batch_size, dimension].
		  default_value: A single value compatible with dtype or a list of values
		    compatible with dtype which the column takes on if data is missing. If
		    None, then tf.parse_example will fail if an example does not contain
		    this column. If a single value is provided, the same value will be
		    applied as the default value for every dimension. If a list of values
		    is provided, the length of the list should be equal to the value of
		    `dimension`.
		  dtype: defines the type of values. Default value is tf.float32.
		Returns:
		  A _RealValuedColumn.
		Raises:
		  TypeError: if dimension is not an int
		  ValueError: if dimension is not a positive integer
		  TypeError: if default_value is a list but its length is not equal to the
		    value of `dimension`.
		  TypeError: if default_value is not compatible with dtype.
		  ValueError: if dtype is not convertable to tf.float32.
	**/
	static public function real_valued_column(column_name:Dynamic, ?dimension:Dynamic, ?default_value:Dynamic, ?dtype:Dynamic):Dynamic;
	/**
		Creates a _TargetColumn for linear regression.
		
		Args:
		  label_name: String, name of the key in label dict. Can be null if label
		      is a tensor (single headed models).
		  weight_column_name: A string defining feature column name representing
		    weights. It is used to down weight or boost examples during training. It
		    will be multiplied by the loss of the example.
		  target_dimension: dimension of the target for multilabels.
		
		Returns:
		  An instance of _TargetColumn
	**/
	static public function regression_target(?label_name:Dynamic, ?weight_column_name:Dynamic, ?target_dimension:Dynamic):Dynamic;
	static public function relu(inputs:Dynamic, num_outputs:Dynamic, ?activation_fn:Dynamic, ?normalizer_fn:Dynamic, ?normalizer_params:Dynamic, ?weights_initializer:Dynamic, ?weights_regularizer:Dynamic, ?biases_initializer:Dynamic, ?biases_regularizer:Dynamic, ?reuse:Dynamic, ?variables_collections:Dynamic, ?outputs_collections:Dynamic, ?trainable:Dynamic, ?scope:Dynamic):Dynamic;
	static public function relu6(inputs:Dynamic, num_outputs:Dynamic, ?activation_fn:Dynamic, ?normalizer_fn:Dynamic, ?normalizer_params:Dynamic, ?weights_initializer:Dynamic, ?weights_regularizer:Dynamic, ?biases_initializer:Dynamic, ?biases_regularizer:Dynamic, ?reuse:Dynamic, ?variables_collections:Dynamic, ?outputs_collections:Dynamic, ?trainable:Dynamic, ?scope:Dynamic):Dynamic;
	/**
		Applies the same layer with the same arguments repeatedly.
		
		```python
		  y = repeat(x, 3, conv2d, 64, [3, 3], scope='conv1')
		  # It is equivalent to:
		
		  x = conv2d(x, 64, [3, 3], scope='conv1/conv1_1')
		  x = conv2d(x, 64, [3, 3], scope='conv1/conv1_2')
		  y = conv2d(x, 64, [3, 3], scope='conv1/conv1_3')
		```
		
		If the `scope` argument is not given in `kwargs`, it is set to
		`layer.__name__`, or `layer.func.__name__` (for `functools.partial`
		objects). If neither `__name__` nor `func.__name__` is available, the
		layers are called with `scope='stack'`.
		
		Args:
		  inputs: A `Tensor` suitable for layer.
		  repetitions: Int, number of repetitions.
		  layer: A layer with arguments `(inputs, *args, **kwargs)`
		  *args: Extra args for the layer.
		  **kwargs: Extra kwargs for the layer.
		
		Returns:
		  a tensor result of applying the layer, repetitions times.
		Raises:
		  ValueError: if the op is unknown or wrong.
	**/
	static public function repeat(inputs:Dynamic, repetitions:Dynamic, layer:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Lookup embedding results, accounting for invalid IDs and empty features.
		
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
		Adds a depth-separable 2D convolution with optional batch_norm layer.
		
		This op first performs a depthwise convolution that acts separately on
		channels, creating a variable called `depthwise_weights`. If `num_outputs`
		is not None, it adds a pointwise convolution that mixes channels, creating a
		variable called `pointwise_weights`. Then, if `batch_norm_params` is None,
		it adds bias to the result, creating a variable called 'biases', otherwise
		it adds a batch normalization layer. It finally applies an activation function
		to produce the end result.
		
		Args:
		  inputs: a tensor of size [batch_size, height, width, channels].
		  num_outputs: the number of pointwise convolution output filters. If is
		    None, then we skip the pointwise convolution stage.
		  kernel_size: a list of length 2: [kernel_height, kernel_width] of
		    of the filters. Can be an int if both values are the same.
		  depth_multiplier: the number of depthwise convolution output channels for
		    each input channel. The total number of depthwise convolution output
		    channels will be equal to `num_filters_in * depth_multiplier`.
		  stride: a list of length 2: [stride_height, stride_width], specifying the
		    depthwise convolution stride. Can be an int if both strides are the same.
		  padding: one of 'VALID' or 'SAME'.
		  activation_fn: activation function.
		  normalizer_fn: normalization function to use instead of `biases`. If
		    `normalize_fn` is provided then `biases_initializer` and
		    `biases_regularizer` are ignored and `biases` are not created nor added.
		  normalizer_params: normalization function parameters.
		  weights_initializer: An initializer for the weights.
		  weights_regularizer: Optional regularizer for the weights.
		  biases_initializer: An initializer for the biases. If None skip biases.
		  biases_regularizer: Optional regularizer for the biases.
		  reuse: whether or not the layer and its variables should be reused. To be
		    able to reuse the layer scope must be given.
		  variables_collections: optional list of collections for all the variables or
		    a dictionay containing a different list of collection per variable.
		  outputs_collections: collection to add the outputs.
		  trainable: whether or not the variables should be trainable or not.
		  scope: Optional scope for variable_op_scope.
		
		Returns:
		  A `Tensor` representing the output of the operation.
	**/
	static public function separable_conv2d(inputs:Dynamic, num_outputs:Dynamic, kernel_size:Dynamic, depth_multiplier:Dynamic, ?stride:Dynamic, ?padding:Dynamic, ?activation_fn:Dynamic, ?normalizer_fn:Dynamic, ?normalizer_params:Dynamic, ?weights_initializer:Dynamic, ?weights_regularizer:Dynamic, ?biases_initializer:Dynamic, ?biases_regularizer:Dynamic, ?reuse:Dynamic, ?variables_collections:Dynamic, ?outputs_collections:Dynamic, ?trainable:Dynamic, ?scope:Dynamic):Dynamic;
	/**
		Adds a depth-separable 2D convolution with optional batch_norm layer.
		
		This op first performs a depthwise convolution that acts separately on
		channels, creating a variable called `depthwise_weights`. If `num_outputs`
		is not None, it adds a pointwise convolution that mixes channels, creating a
		variable called `pointwise_weights`. Then, if `batch_norm_params` is None,
		it adds bias to the result, creating a variable called 'biases', otherwise
		it adds a batch normalization layer. It finally applies an activation function
		to produce the end result.
		
		Args:
		  inputs: a tensor of size [batch_size, height, width, channels].
		  num_outputs: the number of pointwise convolution output filters. If is
		    None, then we skip the pointwise convolution stage.
		  kernel_size: a list of length 2: [kernel_height, kernel_width] of
		    of the filters. Can be an int if both values are the same.
		  depth_multiplier: the number of depthwise convolution output channels for
		    each input channel. The total number of depthwise convolution output
		    channels will be equal to `num_filters_in * depth_multiplier`.
		  stride: a list of length 2: [stride_height, stride_width], specifying the
		    depthwise convolution stride. Can be an int if both strides are the same.
		  padding: one of 'VALID' or 'SAME'.
		  activation_fn: activation function.
		  normalizer_fn: normalization function to use instead of `biases`. If
		    `normalize_fn` is provided then `biases_initializer` and
		    `biases_regularizer` are ignored and `biases` are not created nor added.
		  normalizer_params: normalization function parameters.
		  weights_initializer: An initializer for the weights.
		  weights_regularizer: Optional regularizer for the weights.
		  biases_initializer: An initializer for the biases. If None skip biases.
		  biases_regularizer: Optional regularizer for the biases.
		  reuse: whether or not the layer and its variables should be reused. To be
		    able to reuse the layer scope must be given.
		  variables_collections: optional list of collections for all the variables or
		    a dictionay containing a different list of collection per variable.
		  outputs_collections: collection to add the outputs.
		  trainable: whether or not the variables should be trainable or not.
		  scope: Optional scope for variable_op_scope.
		
		Returns:
		  A `Tensor` representing the output of the operation.
	**/
	static public function separable_convolution2d(inputs:Dynamic, num_outputs:Dynamic, kernel_size:Dynamic, depth_multiplier:Dynamic, ?stride:Dynamic, ?padding:Dynamic, ?activation_fn:Dynamic, ?normalizer_fn:Dynamic, ?normalizer_params:Dynamic, ?weights_initializer:Dynamic, ?weights_regularizer:Dynamic, ?biases_initializer:Dynamic, ?biases_regularizer:Dynamic, ?reuse:Dynamic, ?variables_collections:Dynamic, ?outputs_collections:Dynamic, ?trainable:Dynamic, ?scope:Dynamic):Dynamic;
	/**
		Performs softmax on Nth dimension of N-dimensional logit tensor.
		
		For two-dimensional logits this reduces to tf.nn.softmax. The N-th dimension
		needs to have a specified number of elements (number of classes).
		
		Args:
		  logits: N-dimensional `Tensor` with logits, where N > 1.
		  scope: Optional scope for variable_op_scope.
		
		Returns:
		  a `Tensor` with same shape and type as logits.
	**/
	static public function softmax(logits:Dynamic, ?scope:Dynamic):Dynamic;
	/**
		Creates a _SparseColumn with hashed bucket configuration.
		
		Use this when your sparse features are in string format, but you don't have a
		vocab file that maps each string to an integer ID.
		output_id = Hash(input_feature_string) % bucket_size
		
		Args:
		  column_name: A string defining sparse column name.
		  hash_bucket_size: An int that is > 1. The number of buckets.
		  combiner: A string specifying how to reduce if the sparse column is
		    multivalent. Currently "mean", "sqrtn" and "sum" are supported, with
		    "sum" the default:
		      * "sum": do not normalize features in the column
		      * "mean": do l1 normalization on features in the column
		      * "sqrtn": do l2 normalization on features in the column
		    For more information: `tf.embedding_lookup_sparse`.
		
		Returns:
		  A _SparseColumn with hashed bucket configuration
		
		Raises:
		  ValueError: hash_bucket_size is not greater than 2.
	**/
	static public function sparse_column_with_hash_bucket(column_name:Dynamic, hash_bucket_size:Dynamic, ?combiner:Dynamic):Dynamic;
	/**
		Creates an integerized _SparseColumn.
		
		Use this when your features are already pre-integerized into int64 IDs.
		output_id = input_feature
		
		Args:
		  column_name: A string defining sparse column name.
		  bucket_size: An int that is > 1. The number of buckets. It should be bigger
		    than maximum feature. In other words features in this column should be an
		    int64 in range [0, bucket_size)
		  combiner: A string specifying how to reduce if the sparse column is
		    multivalent. Currently "mean", "sqrtn" and "sum" are supported, with
		    "sum" the default:
		      * "sum": do not normalize features in the column
		      * "mean": do l1 normalization on features in the column
		      * "sqrtn": do l2 normalization on features in the column
		    For more information: `tf.embedding_lookup_sparse`.
		  dtype: Type of features. It should be an integer type. Default value is
		    dtypes.int64.
		
		Returns:
		  An integerized _SparseColumn definition.
		
		Raises:
		  ValueError: bucket_size is not greater than 1.
		  ValueError: dtype is not integer.
	**/
	static public function sparse_column_with_integerized_feature(column_name:Dynamic, bucket_size:Dynamic, ?combiner:Dynamic, ?dtype:Dynamic):Dynamic;
	/**
		Creates a _SparseColumn with keys.
		
		Look up logic is as follows:
		lookup_id = index_of_feature_in_keys if feature in keys else default_value
		
		Args:
		  column_name: A string defining sparse column name.
		  keys: a string list defining vocabulary.
		  default_value: The value to use for out-of-vocabulary feature values.
		    Default is -1.
		  combiner: A string specifying how to reduce if the sparse column is
		    multivalent. Currently "mean", "sqrtn" and "sum" are supported, with
		    "sum" the default:
		      * "sum": do not normalize features in the column
		      * "mean": do l1 normalization on features in the column
		      * "sqrtn": do l2 normalization on features in the column
		    For more information: `tf.embedding_lookup_sparse`.
		
		Returns:
		  A _SparseColumnKeys with keys configuration.
	**/
	static public function sparse_column_with_keys(column_name:Dynamic, keys:Dynamic, ?default_value:Dynamic, ?combiner:Dynamic):Dynamic;
	/**
		Crosses a list of Tensor or SparseTensor objects.
		
		See sparse_feature_cross_kernel.cc for more details.
		
		Args:
		  inputs: List of `SparseTensor` or `Tensor` to be crossed.
		  hashed_output: If true, returns the hash of the cross instead of the string.
		    This will allow us avoiding string manipulations.
		  num_buckets: It is used if hashed_output is true.
		    output = hashed_value%num_buckets if num_buckets > 0 else hashed_value.
		  name: A name prefix for the returned tensors (optional).
		
		Returns:
		  A `SparseTensor` with the crossed features.
		  Return type is string if hashed_output=False, int64 otherwise.
		
		Raises:
		  TypeError: If the inputs aren't either SparseTensor or Tensor.
	**/
	static public function sparse_feature_cross(inputs:Dynamic, ?hashed_output:Dynamic, ?num_buckets:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Builds a stack of layers by applying layer repeatedly using stack_args.
		
		`stack` allows you to repeatedly apply the same operation with different
		arguments `stack_args[i]`. For each application of the layer, `stack` creates
		a new scope appended with an increasing number. For example:
		
		```python
		  y = stack(x, fully_connected, [32, 64, 128], scope='fc')
		  # It is equivalent to:
		
		  x = fully_connected(x, 32, scope='fc/fc_1')
		  x = fully_connected(x, 64, scope='fc/fc_2')
		  y = fully_connected(x, 128, scope='fc/fc_3')
		```
		
		If the `scope` argument is not given in `kwargs`, it is set to
		`layer.__name__`, or `layer.func.__name__` (for `functools.partial`
		objects). If neither `__name__` nor `func.__name__` is available, the
		layers are called with `scope='stack'`.
		
		Args:
		  inputs: A `Tensor` suitable for layer.
		  layer: A layer with arguments `(inputs, *args, **kwargs)`
		  stack_args: A list/tuple of parameters for each call of layer.
		  **kwargs: Extra kwargs for the layer.
		
		Returns:
		  a `Tensor` result of applying the stacked layers.
		
		Raises:
		  ValueError: if the op is unknown or wrong.
	**/
	static public function stack(inputs:Dynamic, layer:Dynamic, stack_args:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Returns a function that applies the sum of multiple regularizers.
		
		Args:
		  regularizer_list: A list of regularizers to apply.
		  scope: An optional op_scope name
		
		Returns:
		  A function with signature `sum_reg(weights)` that applies the
		  sum of all the input regularizers.
	**/
	static public function sum_regularizer(regularizer_list:Dynamic, ?scope:Dynamic):Dynamic;
	/**
		Summarize an activation.
		
		This applies the given activation and adds useful summaries specific to the
		activation.
		
		Args:
		  op: The tensor to summarize (assumed to be a layer activation).
		Returns:
		  The summary op created to summarize `op`.
	**/
	static public function summarize_activation(op:Dynamic):Dynamic;
	/**
		Summarize activations, using `summarize_activation` to summarize.
	**/
	static public function summarize_activations(?name_filter:Dynamic, ?summarizer:Dynamic):Dynamic;
	static public function summarize_biases(?name_filter:Dynamic, ?summarizer:Dynamic):Dynamic;
	/**
		Summarize a graph collection of tensors, possibly filtered by name.
	**/
	static public function summarize_collection(collection:Dynamic, ?name_filter:Dynamic, ?summarizer:Dynamic):Dynamic;
	/**
		Summarize a tensor using a suitable summary type.
		
		This function adds a summary op for `tensor`. The type of summary depends on
		the shape of `tensor`. For scalars, a `scalar_summary` is created, for all
		other tensors, `histogram_summary` is used.
		
		Args:
		  tensor: The tensor to summarize
		  tag: The tag to use, if None then use tensor's op's name.
		
		Returns:
		  The summary op created or None for string tensors.
	**/
	static public function summarize_tensor(tensor:Dynamic, ?tag:Dynamic):Dynamic;
	/**
		Summarize a set of tensors.
	**/
	static public function summarize_tensors(tensors:Dynamic, ?summarizer:Dynamic):Dynamic;
	static public function summarize_variables(?name_filter:Dynamic, ?summarizer:Dynamic):Dynamic;
	static public function summarize_weights(?name_filter:Dynamic, ?summarizer:Dynamic):Dynamic;
	/**
		Normalizes the given input across the specified dimension to unit length.
		
		Note that the rank of `input` must be known.
		
		Args:
		  inputs: A `Tensor` of arbitrary size.
		  dim: The dimension along which the input is normalized.
		  epsilon: A small value to add to the inputs to avoid dividing by zero.
		  scope: Optional scope for variable_op_scope.
		
		Returns:
		  The normalized `Tensor`.
		
		Raises:
		  ValueError: If dim is smaller than the number of dimensions in 'inputs'.
	**/
	static public function unit_norm(inputs:Dynamic, dim:Dynamic, ?epsilon:Dynamic, ?scope:Dynamic):Dynamic;
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
		Returns an initializer that generates tensors without scaling variance.
		
		When initializing a deep network, it is in principle advantageous to keep
		the scale of the input variance constant, so it does not explode or diminish
		by reaching the final layer. This initializer use the following formula:
		  if mode='FAN_IN': # Count only number of input connections.
		    n = fan_in
		  elif mode='FAN_OUT': # Count only number of output connections.
		    n = fan_out
		  elif mode='FAN_AVG': # Average number of inputs and output connections.
		    n = (fan_in + fan_out)/2.0
		
		    truncated_normal(shape, 0.0, stddev=sqrt(factor / n))
		
		To get http://arxiv.org/pdf/1502.01852v1.pdf use (Default):
		  - factor=2.0 mode='FAN_IN' uniform=False
		To get http://arxiv.org/abs/1408.5093 use:
		  - factor=1.0 mode='FAN_IN' uniform=True
		To get http://jmlr.org/proceedings/papers/v9/glorot10a/glorot10a.pdf use:
		  - factor=1.0 mode='FAN_AVG' uniform=True.
		To get xavier_initializer use either:
		  - factor=1.0 mode='FAN_AVG' uniform=True.
		  - factor=1.0 mode='FAN_AVG' uniform=False.
		
		Args:
		  factor: Float.  A multiplicative factor.
		  mode: String.  'FAN_IN', 'FAN_OUT', 'FAN_AVG'.
		  uniform: Whether to use uniform or normal distributed random initialization.
		  seed: A Python integer. Used to create random seeds. See
		    [`set_random_seed`](../../api_docs/python/constant_op.md#set_random_seed)
		    for behavior.
		  dtype: The data type. Only floating point types are supported.
		
		Returns:
		  An initializer that generates tensors with unit variance.
		
		Raises:
		  ValueError: if `dtype` is not a floating point type.
		  TypeError: if `mode` is not in ['FAN_IN', 'FAN_OUT', 'FAN_AVG'].
	**/
	static public function variance_scaling_initializer(?factor:Dynamic, ?mode:Dynamic, ?uniform:Dynamic, ?seed:Dynamic, ?dtype:Dynamic):Dynamic;
	/**
		Creates a _SparseColumn by combining sparse_id_column with a weight column.
		
		Args:
		  sparse_id_column: A _SparseColumn which is created by `sparse_column_with_*`
		    functions.
		  weight_column_name: A string defining a sparse column name which represents
		    weight or value of the corresponding sparse id feature.
		  dtype: Type of weights, such as `tf.float32`
		Returns:
		  A _WeightedSparseColumn composed of two sparse features: one represents id,
		  the other represents weight (value) of the id feature in that example.
		Raises:
		  ValueError: if dtype is not convertible to float.
		
		An example usage:
		  ```python
		  words = sparse_column_with_hash_bucket("words", 1000)
		  tfidf_weighted_words = weighted_sparse_column(words, "tfidf_score")
		  ```
		
		  This configuration assumes that input dictionary of model contains the
		  following two items:
		    * (key="words", value=word_tensor) where word_tensor is a SparseTensor.
		    * (key="tfidf_score", value=tfidf_score_tensor) where tfidf_score_tensor
		      is a SparseTensor.
		   Following are assumed to be true:
		     * word_tensor.indices = tfidf_score_tensor.indices
		     * word_tensor.shape = tfidf_score_tensor.shape
	**/
	static public function weighted_sparse_column(sparse_id_column:Dynamic, weight_column_name:Dynamic, ?dtype:Dynamic):Dynamic;
	/**
		A tf.contrib.layer style linear prediction builder based on FeatureColumns.
		
		Generally a single example in training data is described with feature columns.
		This function generates weighted sum for each num_outputs. Weighted sum refers
		to logits in classification problems. It refers to prediction itself for
		linear regression problems.
		
		An example usage of weighted_sum_from_feature_columns is as follows:
		
		  # Building model for training
		  columns_to_tensor = tf.parse_example(...)
		  logits = weighted_sum_from_feature_columns(
		      columns_to_tensors=columns_to_tensor,
		      feature_columns=feature_columns,
		      num_outputs=1)
		  loss = tf.nn.sigmoid_cross_entropy_with_logits(logits, labels)
		
		  where feature_columns can be defined as follows:
		
		  occupation = sparse_column_with_hash_bucket(column_name="occupation",
		                                            hash_bucket_size=1000)
		  occupation_emb = embedding_column(sparse_id_column=occupation, dimension=16,
		                                   combiner="sum")
		  age = real_valued_column("age")
		  age_buckets = bucketized_column(
		      source_column=age,
		      boundaries=[18, 25, 30, 35, 40, 45, 50, 55, 60, 65])
		  occupation_x_age = crossed_column(columns=[occupation, age_buckets],
		                                    hash_bucket_size=10000)
		
		  feature_columns=[occupation_emb, occupation_x_age]
		
		Args:
		  columns_to_tensors: A mapping from feature column to tensors. 'string' key
		    means a base feature (not-transformed). It can have FeatureColumn as a
		    key too. That means that FeatureColumn is already transformed by input
		    pipeline. For example, `inflow` may have handled transformations.
		  feature_columns: A set containing all the feature columns. All items in the
		    set should be instances of classes derived from FeatureColumn.
		  num_outputs: An integer specifying number of outputs. Default value is 1.
		  weight_collections: List of graph collections to which weights are added.
		  trainable: If `True` also add variables to the graph collection
		    `GraphKeys.TRAINABLE_VARIABLES` (see tf.Variable).
		  scope: Optional scope fpor variable_op_scope.
		
		Returns:
		  A tuple of followings:
		    * A Tensor which represents predictions of a linear model.
		    * A dictionary which maps feature_column to corresponding Variable.
		    * A Variable which is used for bias.
		
		Raises:
		  ValueError: if FeatureColumn cannot be used for linear predictions.
	**/
	static public function weighted_sum_from_feature_columns(columns_to_tensors:Dynamic, feature_columns:Dynamic, num_outputs:Dynamic, ?weight_collections:Dynamic, ?trainable:Dynamic, ?scope:Dynamic):Dynamic;
	/**
		Returns an initializer performing "Xavier" initialization for weights.
		
		This function implements the weight initialization from:
		
		Xavier Glorot and Yoshua Bengio (2010):
		         Understanding the difficulty of training deep feedforward neural
		         networks. International conference on artificial intelligence and
		         statistics.
		
		This initializer is designed to keep the scale of the gradients roughly the
		same in all layers. In uniform distribution this ends up being the range:
		`x = sqrt(6. / (in + out)); [-x, x]` and for normal distribution a standard
		deviation of `sqrt(3. / (in + out))` is used.
		
		Args:
		  uniform: Whether to use uniform or normal distributed random initialization.
		  seed: A Python integer. Used to create random seeds. See
		    [`set_random_seed`](../../api_docs/python/constant_op.md#set_random_seed)
		    for behavior.
		  dtype: The data type. Only floating point types are supported.
		
		Returns:
		  An initializer for a weight matrix.
	**/
	static public function xavier_initializer(?uniform:Dynamic, ?seed:Dynamic, ?dtype:Dynamic):Dynamic;
	/**
		Returns an initializer performing "Xavier" initialization for weights.
		
		This function implements the weight initialization from:
		
		Xavier Glorot and Yoshua Bengio (2010):
		         Understanding the difficulty of training deep feedforward neural
		         networks. International conference on artificial intelligence and
		         statistics.
		
		This initializer is designed to keep the scale of the gradients roughly the
		same in all layers. In uniform distribution this ends up being the range:
		`x = sqrt(6. / (in + out)); [-x, x]` and for normal distribution a standard
		deviation of `sqrt(3. / (in + out))` is used.
		
		Args:
		  uniform: Whether to use uniform or normal distributed random initialization.
		  seed: A Python integer. Used to create random seeds. See
		    [`set_random_seed`](../../api_docs/python/constant_op.md#set_random_seed)
		    for behavior.
		  dtype: The data type. Only floating point types are supported.
		
		Returns:
		  An initializer for a weight matrix.
	**/
	static public function xavier_initializer_conv2d(?uniform:Dynamic, ?seed:Dynamic, ?dtype:Dynamic):Dynamic;
}