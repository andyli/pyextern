/* This file is generated, do not edit! */
package tensorflow.contrib.losses.python.losses.loss_ops;
@:pythonImport("tensorflow.contrib.losses.python.losses.loss_ops") extern class Loss_ops_Module {
	static public var __all__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Computes the number of elements in the loss function induced by `weights`.
		
		A given weights tensor induces different numbers of usable elements in the
		`losses` tensor. The `weights` tensor is broadcast across `losses` for all
		possible dimensions. For example, if `losses` is a tensor of dimension
		[4, 5, 6, 3] and `weights` is a tensor of size [4, 5], then `weights` is, in
		effect, tiled to match the size of `losses`. Following this effective tile,
		the total number of present elements is the number of non-zero weights.
		
		Args:
		  losses: A tensor of size [batch_size, d1, ... dN].
		  weights: A tensor of size [1] or [batch_size, d1, ... dK] where K < N.
		  per_batch: Whether to return the number of elements per batch or as a sum
		    total.
		
		Returns:
		  The number of present (non-zero) elements in the losses tensor. If
		    `per_batch` is True, the value is returned as a tensor of size
		    [batch_size]. Otherwise, a single scalar tensor is returned.
	**/
	static public function _num_present(losses:Dynamic, weights:Dynamic, ?per_batch:Dynamic):Dynamic;
	/**
		Computes a safe divide which returns 0 if the denominator is zero.
		
		Note that the function contains an additional conditional check that is
		necessary for avoiding situations where the loss is zero causing NaNs to
		creep into the gradient computation.
		
		Args:
		  numerator: An arbitrary `Tensor`.
		  denominator: A `Tensor` whose shape matches `numerator` and whose values are
		    assumed to be non-negative.
		  name: An optional name for the returned op.
		
		Returns:
		  The element-wise value of the numerator divided by the denominator.
	**/
	static public function _safe_div(numerator:Dynamic, denominator:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes a safe mean of the losses.
		
		Args:
		  losses: A tensor whose elements contain individual loss measurements.
		  num_present: The number of measurable losses in the tensor.
		
		Returns:
		  A scalar representing the mean of the losses. If `num_present` is zero,
		    then zero is returned.
	**/
	static public function _safe_mean(losses:Dynamic, num_present:Dynamic):Dynamic;
	/**
		Computes the scaled loss.
		
		Args:
		  losses: A `Tensor` of size [batch_size, d1, ... dN].
		  weights: A `Tensor` of size [1], [batch_size] or [batch_size, d1, ... dN].
		    The `losses` are reduced (tf.reduce_sum) until its dimension matches
		    that of `weights` at which point the reduced `losses` are element-wise
		    multiplied by `weights` and a final reduce_sum is computed on the result.
		    Conceptually, this operation is equivalent to broadcasting (tiling)
		    `weights` to be the same size as `losses`, performing an element-wise
		    multiplication, and summing the result.
		
		Returns:
		  A scalar tf.float32 `Tensor` whose value represents the sum of the scaled
		    `losses`.
	**/
	static public function _scale_losses(losses:Dynamic, weights:Dynamic):Dynamic;
	/**
		Adds an Absolute Difference loss to the training procedure. (deprecated)
		
		THIS FUNCTION IS DEPRECATED. It will be removed after 2016-12-30.
		Instructions for updating:
		Use tf.losses.absolute_difference instead.
		
		`weights` acts as a coefficient for the loss. If a scalar is provided, then
		the loss is simply scaled by the given value. If `weights` is a tensor of size
		[batch_size], then the total loss for each sample of the batch is rescaled
		by the corresponding element in the `weights` vector. If the shape of
		`weights` matches the shape of `predictions`, then the loss of each
		measurable element of `predictions` is scaled by the corresponding value of
		`weights`.
		
		Args:
		  predictions: The predicted outputs.
		  labels: The ground truth output tensor, same dimensions as 'predictions'.
		  weights: Coefficients for the loss a scalar, a tensor of shape
		    [batch_size] or a tensor whose shape matches `predictions`.
		  scope: The scope for the operations performed in computing the loss.
		
		Returns:
		  A scalar `Tensor` representing the loss value.
		
		Raises:
		  ValueError: If the shape of `predictions` doesn't match that of `labels` or
		    if the shape of `weights` is invalid.
	**/
	static public function absolute_difference(predictions:Dynamic, ?labels:Dynamic, ?weights:Dynamic, ?scope:Dynamic):Dynamic;
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
		Adds a externally defined loss to the collection of losses. (deprecated)
		
		THIS FUNCTION IS DEPRECATED. It will be removed after 2016-12-30.
		Instructions for updating:
		Use tf.losses.add_loss instead.
		
		Args:
		  loss: A loss `Tensor`.
		  loss_collection: Optional collection to add the loss to.
	**/
	static public function add_loss(loss:Dynamic, ?loss_collection:Dynamic):Dynamic;
	/**
		Computes the weighted loss. (deprecated)
		
		THIS FUNCTION IS DEPRECATED. It will be removed after 2016-12-30.
		Instructions for updating:
		Use tf.losses.compute_weighted_loss instead.
		
		Args:
		  losses: A tensor of size [batch_size, d1, ... dN].
		  weights: A tensor of size [1] or [batch_size, d1, ... dK] where K < N.
		  scope: the scope for the operations performed in computing the loss.
		
		Returns:
		  A scalar `Tensor` that returns the weighted loss.
		
		Raises:
		  ValueError: If `weights` is `None` or the shape is not compatible with
		    `losses`, or if the number of dimensions (rank) of either `losses` or
		    `weights` is missing.
	**/
	static public function compute_weighted_loss(losses:Dynamic, ?weights:Dynamic, ?scope:Dynamic):Dynamic;
	/**
		Adds a cosine-distance loss to the training procedure. (deprecated arguments) (deprecated)
		
		THIS FUNCTION IS DEPRECATED. It will be removed after 2016-12-30.
		Instructions for updating:
		Use tf.losses.cosine_distance instead.
		
		SOME ARGUMENTS ARE DEPRECATED. They will be removed in a future version.
		Instructions for updating:
		dim is deprecated, use axis instead
		
		Note that the function assumes that `predictions` and `labels` are already
		unit-normalized.
		
		Args:
		  predictions: An arbitrary matrix.
		  labels: A `Tensor` whose shape matches 'predictions'
		  axis: The dimension along which the cosine distance is computed.
		  weights: Coefficients for the loss a scalar, a tensor of shape
		    [batch_size] or a tensor whose shape matches `predictions`.
		  scope: The scope for the operations performed in computing the loss.
		  dim: The old (deprecated) name for `axis`.
		
		Returns:
		  A scalar `Tensor` representing the loss value.
		
		Raises:
		  ValueError: If `predictions` shape doesn't match `labels` shape, or
		    `weights` is `None`.
	**/
	static public function cosine_distance(predictions:Dynamic, ?labels:Dynamic, ?axis:Dynamic, ?weights:Dynamic, ?scope:Dynamic, ?dim:Dynamic):Dynamic;
	/**
		Decorator for marking functions or methods deprecated.
		
		This decorator logs a deprecation warning whenever the decorated function is
		called. It has the following format:
		
		  <function> (from <module>) is deprecated and will be removed after <date>.
		  Instructions for updating:
		  <instructions>
		
		If `date` is None, 'after <date>' is replaced with 'in a future version'.
		<function> will include the class name if it is a method.
		
		It also edits the docstring of the function: ' (deprecated)' is appended
		to the first line of the docstring and a deprecation notice is prepended
		to the rest of the docstring.
		
		Args:
		  date: String or None. The date the function is scheduled to be removed.
		    Must be ISO 8601 (YYYY-MM-DD), or None.
		  instructions: String. Instructions on how to update code using the
		    deprecated function.
		  warn_once: Boolean. Set to `True` to warn only the first time the decorated
		    function is called. Otherwise, every call will log a warning.
		
		Returns:
		  Decorated function or method.
		
		Raises:
		  ValueError: If date is not None or in ISO 8601 format, or instructions are
		    empty.
	**/
	static public function deprecated(date:Dynamic, instructions:Dynamic, ?warn_once:Dynamic):Dynamic;
	/**
		Decorator for marking specific function arguments as deprecated.
		
		This decorator logs a deprecation warning whenever the decorated function is
		called with the deprecated argument. It has the following format:
		
		  Calling <function> (from <module>) with <arg> is deprecated and will be
		  removed after <date>. Instructions for updating:
		    <instructions>
		
		If `date` is None, 'after <date>' is replaced with 'in a future version'.
		<function> includes the class name if it is a method.
		
		It also edits the docstring of the function: ' (deprecated arguments)' is
		appended to the first line of the docstring and a deprecation notice is
		prepended to the rest of the docstring.
		
		Args:
		  date: String or None. The date the function is scheduled to be removed.
		    Must be ISO 8601 (YYYY-MM-DD), or None.
		  instructions: String. Instructions on how to update code using the
		    deprecated function.
		  *deprecated_arg_names_or_tuples: String or 2-Tuple(String,
		    [ok_vals]).  The string is the deprecated argument name.
		    Optionally, an ok-value may be provided.  If the user provided
		    argument equals this value, the warning is suppressed.
		  **kwargs: If `warn_once=False` is passed, every call with a deprecated
		    argument will log a warning. The default behavior is to only warn the
		    first time the function is called with any given deprecated argument.
		    All other kwargs raise `ValueError`.
		
		Returns:
		  Decorated function or method.
		
		Raises:
		  ValueError: If date is not None or in ISO 8601 format, instructions are
		    empty, the deprecated arguments are not present in the function
		    signature, the second element of a deprecated_tuple is not a
		    list, or if a kwarg other than `warn_once` is passed.
	**/
	static public function deprecated_args(date:Dynamic, instructions:Dynamic, ?deprecated_arg_names_or_tuples:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Looks up deprecated argument name and ensures both are not used.
		
		Args:
		  new_name: new name of argument
		  new_value: value of new argument (or None if not used)
		  old_name: old name of argument
		  old_value: value of old argument (or None if not used)
		Returns:
		  The effective argument that should be used.
		Raises:
		  ValueError: if new_value and old_value are both non-null
	**/
	static public function deprecated_argument_lookup(new_name:Dynamic, new_value:Dynamic, old_name:Dynamic, old_value:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Gets the list of losses from the loss_collection. (deprecated)
		
		THIS FUNCTION IS DEPRECATED. It will be removed after 2016-12-30.
		Instructions for updating:
		Use tf.losses.get_losses instead.
		
		Args:
		  scope: an optional scope for filtering the losses to return.
		  loss_collection: Optional losses collection.
		
		Returns:
		  a list of loss tensors.
	**/
	static public function get_losses(?scope:Dynamic, ?loss_collection:Dynamic):Dynamic;
	/**
		Gets the regularization losses. (deprecated)
		
		THIS FUNCTION IS DEPRECATED. It will be removed after 2016-12-30.
		Instructions for updating:
		Use tf.losses.get_regularization_losses instead.
		
		Args:
		  scope: an optional scope for filtering the losses to return.
		
		Returns:
		  A list of regularization losses as Tensors.
	**/
	static public function get_regularization_losses(?scope:Dynamic):Dynamic;
	/**
		Returns a tensor whose value represents the total loss. (deprecated)
		
		THIS FUNCTION IS DEPRECATED. It will be removed after 2016-12-30.
		Instructions for updating:
		Use tf.losses.get_total_loss instead.
		
		Notice that the function adds the given losses to the regularization losses.
		
		Args:
		  add_regularization_losses: A boolean indicating whether or not to use the
		    regularization losses in the sum.
		  name: The name of the returned tensor.
		
		Returns:
		  A `Tensor` whose value represents the total loss.
		
		Raises:
		  ValueError: if `losses` is not iterable.
	**/
	static public function get_total_loss(?add_regularization_losses:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Method that returns the loss tensor for hinge loss. (deprecated)
		
		THIS FUNCTION IS DEPRECATED. It will be removed after 2016-12-30.
		Instructions for updating:
		Use tf.losses.hinge_loss instead. Note that the order of the logits and labels arguments has been changed, and to stay unweighted, reduction=Reduction.NONE
		
		Args:
		  logits: The logits, a float tensor. Note that logits are assumed to be
		    unbounded and 0-centered. A value > 0 (resp. < 0) is considered a positive
		    (resp. negative) binary prediction.
		  labels: The ground truth output tensor. Its shape should match the shape of
		    logits. The values of the tensor are expected to be 0.0 or 1.0. Internally
		    the {0,1} labels are converted to {-1,1} when calculating the hinge loss.
		  scope: The scope for the operations performed in computing the loss.
		
		Returns:
		  An unweighted `Tensor` of same shape as `logits` and `labels` representing
		  the
		    loss values across the batch.
		
		Raises:
		  ValueError: If the shapes of `logits` and `labels` don't match.
	**/
	static public function hinge_loss(logits:Dynamic, ?labels:Dynamic, ?scope:Dynamic):Dynamic;
	/**
		Adds a Log Loss term to the training procedure. (deprecated)
		
		THIS FUNCTION IS DEPRECATED. It will be removed after 2016-12-30.
		Instructions for updating:
		Use tf.losses.log_loss instead. Note that the order of the predictions and labels arguments has been changed.
		
		`weights` acts as a coefficient for the loss. If a scalar is provided, then
		the loss is simply scaled by the given value. If `weights` is a tensor of size
		[batch_size], then the total loss for each sample of the batch is rescaled
		by the corresponding element in the `weights` vector. If the shape of
		`weights` matches the shape of `predictions`, then the loss of each
		measurable element of `predictions` is scaled by the corresponding value of
		`weights`.
		
		Args:
		  predictions: The predicted outputs.
		  labels: The ground truth output tensor, same dimensions as 'predictions'.
		  weights: Coefficients for the loss a scalar, a tensor of shape
		    [batch_size] or a tensor whose shape matches `predictions`.
		  epsilon: A small increment to add to avoid taking a log of zero.
		  scope: The scope for the operations performed in computing the loss.
		
		Returns:
		  A scalar `Tensor` representing the loss value.
		
		Raises:
		  ValueError: If the shape of `predictions` doesn't match that of `labels` or
		    if the shape of `weights` is invalid.
	**/
	static public function log_loss(predictions:Dynamic, ?labels:Dynamic, ?weights:Dynamic, ?epsilon:Dynamic, ?scope:Dynamic):Dynamic;
	/**
		Adds a pairwise-errors-squared loss to the training procedure. (deprecated)
		
		THIS FUNCTION IS DEPRECATED. It will be removed after 2016-12-30.
		Instructions for updating:
		Use tf.losses.mean_pairwise_squared_error instead. Note that the order of the predictions and labels arguments has been changed.
		
		Unlike `mean_squared_error`, which is a measure of the differences between
		corresponding elements of `predictions` and `labels`,
		`mean_pairwise_squared_error` is a measure of the differences between pairs of
		corresponding elements of `predictions` and `labels`.
		
		For example, if `labels`=[a, b, c] and `predictions`=[x, y, z], there are
		three pairs of differences are summed to compute the loss:
		  loss = [ ((a-b) - (x-y)).^2 + ((a-c) - (x-z)).^2 + ((b-c) - (y-z)).^2 ] / 3
		
		Note that since the inputs are of size [batch_size, d0, ... dN], the
		corresponding pairs are computed within each batch sample but not across
		samples within a batch. For example, if `predictions` represents a batch of
		16 grayscale images of dimension [batch_size, 100, 200], then the set of pairs
		is drawn from each image, but not across images.
		
		`weights` acts as a coefficient for the loss. If a scalar is provided, then
		the loss is simply scaled by the given value. If `weights` is a tensor of size
		[batch_size], then the total loss for each sample of the batch is rescaled
		by the corresponding element in the `weights` vector.
		
		Args:
		  predictions: The predicted outputs, a tensor of size [batch_size, d0, .. dN]
		    where N+1 is the total number of dimensions in `predictions`.
		  labels: The ground truth output tensor, whose shape must match the shape of
		    the `predictions` tensor.
		  weights: Coefficients for the loss a scalar, a tensor of shape [batch_size]
		    or a tensor whose shape matches `predictions`.
		  scope: The scope for the operations performed in computing the loss.
		
		Returns:
		  A scalar `Tensor` representing the loss value.
		
		Raises:
		  ValueError: If the shape of `predictions` doesn't match that of `labels` or
		    if the shape of `weights` is invalid.
	**/
	static public function mean_pairwise_squared_error(predictions:Dynamic, ?labels:Dynamic, ?weights:Dynamic, ?scope:Dynamic):Dynamic;
	/**
		Adds a Sum-of-Squares loss to the training procedure. (deprecated)
		
		THIS FUNCTION IS DEPRECATED. It will be removed after 2016-12-30.
		Instructions for updating:
		Use tf.losses.mean_squared_error instead.
		
		`weights` acts as a coefficient for the loss. If a scalar is provided, then
		the loss is simply scaled by the given value. If `weights` is a tensor of size
		[batch_size], then the total loss for each sample of the batch is rescaled
		by the corresponding element in the `weights` vector. If the shape of
		`weights` matches the shape of `predictions`, then the loss of each
		measurable element of `predictions` is scaled by the corresponding value of
		`weights`.
		
		Args:
		  predictions: The predicted outputs.
		  labels: The ground truth output tensor, same dimensions as 'predictions'.
		  weights: Coefficients for the loss a scalar, a tensor of shape
		    [batch_size] or a tensor whose shape matches `predictions`.
		  scope: The scope for the operations performed in computing the loss.
		
		Returns:
		  A scalar `Tensor` representing the loss value.
		
		Raises:
		  ValueError: If the shape of `predictions` doesn't match that of `labels` or
		    if the shape of `weights` is invalid.
	**/
	static public function mean_squared_error(predictions:Dynamic, ?labels:Dynamic, ?weights:Dynamic, ?scope:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Creates a cross-entropy loss using tf.nn.sigmoid_cross_entropy_with_logits. (deprecated)
		
		THIS FUNCTION IS DEPRECATED. It will be removed after 2016-12-30.
		Instructions for updating:
		Use tf.losses.sigmoid_cross_entropy instead. Note that the order of the predictions and labels arguments has been changed.
		
		`weights` acts as a coefficient for the loss. If a scalar is provided,
		then the loss is simply scaled by the given value. If `weights` is a
		tensor of size [`batch_size`], then the loss weights apply to each
		corresponding sample.
		
		If `label_smoothing` is nonzero, smooth the labels towards 1/2:
		
		    new_multiclass_labels = multiclass_labels * (1 - label_smoothing)
		                            + 0.5 * label_smoothing
		
		Args:
		  logits: [batch_size, num_classes] logits outputs of the network .
		  multi_class_labels: [batch_size, num_classes] labels in (0, 1).
		  weights: Coefficients for the loss. The tensor must be a scalar, a tensor of
		    shape [batch_size] or shape [batch_size, num_classes].
		  label_smoothing: If greater than 0 then smooth the labels.
		  scope: The scope for the operations performed in computing the loss.
		
		Returns:
		  A scalar `Tensor` representing the loss value.
		
		Raises:
		  ValueError: If the shape of `logits` doesn't match that of
		    `multi_class_labels` or if the shape of `weights` is invalid, or if
		    `weights` is None.
	**/
	static public function sigmoid_cross_entropy(logits:Dynamic, multi_class_labels:Dynamic, ?weights:Dynamic, ?label_smoothing:Dynamic, ?scope:Dynamic):Dynamic;
	/**
		Creates a cross-entropy loss using tf.nn.softmax_cross_entropy_with_logits. (deprecated)
		
		THIS FUNCTION IS DEPRECATED. It will be removed after 2016-12-30.
		Instructions for updating:
		Use tf.losses.softmax_cross_entropy instead. Note that the order of the logits and labels arguments has been changed.
		
		`weights` acts as a coefficient for the loss. If a scalar is provided,
		then the loss is simply scaled by the given value. If `weights` is a
		tensor of size [`batch_size`], then the loss weights apply to each
		corresponding sample.
		
		If `label_smoothing` is nonzero, smooth the labels towards 1/num_classes:
		    new_onehot_labels = onehot_labels * (1 - label_smoothing)
		                        + label_smoothing / num_classes
		
		Args:
		  logits: [batch_size, num_classes] logits outputs of the network .
		  onehot_labels: [batch_size, num_classes] one-hot-encoded labels.
		  weights: Coefficients for the loss. The tensor must be a scalar or a tensor
		    of shape [batch_size].
		  label_smoothing: If greater than 0 then smooth the labels.
		  scope: the scope for the operations performed in computing the loss.
		
		Returns:
		  A scalar `Tensor` representing the mean loss value.
		
		Raises:
		  ValueError: If the shape of `logits` doesn't match that of `onehot_labels`
		    or if the shape of `weights` is invalid or if `weights` is None.
	**/
	static public function softmax_cross_entropy(logits:Dynamic, onehot_labels:Dynamic, ?weights:Dynamic, ?label_smoothing:Dynamic, ?scope:Dynamic):Dynamic;
	/**
		Cross-entropy loss using `tf.nn.sparse_softmax_cross_entropy_with_logits`. (deprecated)
		
		THIS FUNCTION IS DEPRECATED. It will be removed after 2016-12-30.
		Instructions for updating:
		Use tf.losses.sparse_softmax_cross_entropy instead. Note that the order of the logits and labels arguments has been changed.
		
		`weights` acts as a coefficient for the loss. If a scalar is provided,
		then the loss is simply scaled by the given value. If `weights` is a
		tensor of size [`batch_size`], then the loss weights apply to each
		corresponding sample.
		
		Args:
		  logits: [batch_size, num_classes] logits outputs of the network .
		  labels: [batch_size, 1] or [batch_size] labels of dtype `int32` or `int64`
		    in the range `[0, num_classes)`.
		  weights: Coefficients for the loss. The tensor must be a scalar or a tensor
		    of shape [batch_size] or [batch_size, 1].
		  scope: the scope for the operations performed in computing the loss.
		
		Returns:
		  A scalar `Tensor` representing the mean loss value.
		
		Raises:
		  ValueError: If the shapes of `logits`, `labels`, and `weights` are
		    incompatible, or if `weights` is None.
	**/
	static public function sparse_softmax_cross_entropy(logits:Dynamic, labels:Dynamic, ?weights:Dynamic, ?scope:Dynamic):Dynamic;
}