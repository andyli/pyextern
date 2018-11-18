/* This file is generated, do not edit! */
package tensorflow.losses;
@:pythonImport("tensorflow.losses") extern class Losses_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __path__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Adds an Absolute Difference loss to the training procedure.
		
		`weights` acts as a coefficient for the loss. If a scalar is provided, then
		the loss is simply scaled by the given value. If `weights` is a `Tensor` of
		shape `[batch_size]`, then the total loss for each sample of the batch is
		rescaled by the corresponding element in the `weights` vector. If the shape of
		`weights` matches the shape of `predictions`, then the loss of each
		measurable element of `predictions` is scaled by the corresponding value of
		`weights`.
		
		Args:
		  labels: The ground truth output tensor, same dimensions as 'predictions'.
		  predictions: The predicted outputs.
		  weights: Optional `Tensor` whose rank is either 0, or the same rank as
		    `labels`, and must be broadcastable to `labels` (i.e., all dimensions must
		    be either `1`, or the same as the corresponding `losses` dimension).
		  scope: The scope for the operations performed in computing the loss.
		  loss_collection: collection to which this loss will be added.
		  reduction: Type of reduction to apply to loss.
		
		Returns:
		  Weighted loss float `Tensor`. If `reduction` is `NONE`, this has the same
		  shape as `labels`; otherwise, it is scalar.
		
		Raises:
		  ValueError: If the shape of `predictions` doesn't match that of
		    `labels` or if the shape of `weights` is invalid or if `labels`
		    or `predictions` is None.
		
		@compatibility(eager)
		The `loss_collection` argument is ignored when executing eagerly. Consider
		holding on to the return value or collecting losses via a `tf.keras.Model`.
		@end_compatibility
	**/
	static public function absolute_difference(labels:Dynamic, predictions:Dynamic, ?weights:Dynamic, ?scope:Dynamic, ?loss_collection:Dynamic, ?reduction:Dynamic):Dynamic;
	/**
		Adds a externally defined loss to the collection of losses.
		
		Args:
		  loss: A loss `Tensor`.
		  loss_collection: Optional collection to add the loss to.
	**/
	static public function add_loss(loss:Dynamic, ?loss_collection:Dynamic):Dynamic;
	/**
		Computes the weighted loss.
		
		Args:
		  losses: `Tensor` of shape `[batch_size, d1, ... dN]`.
		  weights: Optional `Tensor` whose rank is either 0, or the same rank as
		    `losses`, and must be broadcastable to `losses` (i.e., all dimensions must
		    be either `1`, or the same as the corresponding `losses` dimension).
		  scope: the scope for the operations performed in computing the loss.
		  loss_collection: the loss will be added to these collections.
		  reduction: Type of reduction to apply to loss.
		
		Returns:
		  Weighted loss `Tensor` of the same type as `losses`. If `reduction` is
		  `NONE`, this has the same shape as `losses`; otherwise, it is scalar.
		
		Raises:
		  ValueError: If `weights` is `None` or the shape is not compatible with
		    `losses`, or if the number of dimensions (rank) of either `losses` or
		    `weights` is missing.
		
		Note:
		  When calculating the gradient of a weighted loss contributions from
		  both `losses` and `weights` are considered. If your `weights` depend
		  on some model parameters but you do not want this to affect the loss
		  gradient, you need to apply `tf.stop_gradient` to `weights` before
		  passing them to `compute_weighted_loss`.
		
		@compatibility(eager)
		The `loss_collection` argument is ignored when executing eagerly. Consider
		holding on to the return value or collecting losses via a `tf.keras.Model`.
		@end_compatibility
	**/
	static public function compute_weighted_loss(losses:Dynamic, ?weights:Dynamic, ?scope:Dynamic, ?loss_collection:Dynamic, ?reduction:Dynamic):Dynamic;
	/**
		Adds a cosine-distance loss to the training procedure. (deprecated arguments)
		
		SOME ARGUMENTS ARE DEPRECATED. They will be removed in a future version.
		Instructions for updating:
		dim is deprecated, use axis instead
		
		Note that the function assumes that `predictions` and `labels` are already
		unit-normalized.
		
		Args:
		  labels: `Tensor` whose shape matches 'predictions'
		  predictions: An arbitrary matrix.
		  axis: The dimension along which the cosine distance is computed.
		  weights: Optional `Tensor` whose rank is either 0, or the same rank as
		    `labels`, and must be broadcastable to `labels` (i.e., all dimensions must
		    be either `1`, or the same as the corresponding `losses` dimension).
		  scope: The scope for the operations performed in computing the loss.
		  loss_collection: collection to which this loss will be added.
		  reduction: Type of reduction to apply to loss.
		  dim: The old (deprecated) name for `axis`.
		
		Returns:
		  Weighted loss float `Tensor`. If `reduction` is `NONE`, this has the same
		  shape as `labels`; otherwise, it is scalar.
		
		Raises:
		  ValueError: If `predictions` shape doesn't match `labels` shape, or
		    `axis`, `labels`, `predictions` or `weights` is `None`.
		
		@compatibility(eager)
		The `loss_collection` argument is ignored when executing eagerly. Consider
		holding on to the return value or collecting losses via a `tf.keras.Model`.
		@end_compatibility
	**/
	static public function cosine_distance(labels:Dynamic, predictions:Dynamic, ?axis:Dynamic, ?weights:Dynamic, ?scope:Dynamic, ?loss_collection:Dynamic, ?reduction:Dynamic, ?dim:Dynamic):Dynamic;
	/**
		Gets the list of losses from the loss_collection.
		
		Args:
		  scope: An optional scope name for filtering the losses to return.
		  loss_collection: Optional losses collection.
		
		Returns:
		  a list of loss tensors.
	**/
	static public function get_losses(?scope:Dynamic, ?loss_collection:Dynamic):Dynamic;
	/**
		Gets the total regularization loss.
		
		Args:
		  scope: An optional scope name for filtering the losses to return.
		  name: The name of the returned tensor.
		
		Returns:
		  A scalar regularization loss.
	**/
	static public function get_regularization_loss(?scope:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Gets the list of regularization losses.
		
		Args:
		  scope: An optional scope name for filtering the losses to return.
		
		Returns:
		  A list of regularization losses as Tensors.
	**/
	static public function get_regularization_losses(?scope:Dynamic):Dynamic;
	/**
		Returns a tensor whose value represents the total loss.
		
		In particular, this adds any losses you have added with `tf.add_loss()` to
		any regularization losses that have been added by regularization parameters
		on layers constructors e.g. `tf.layers`. Be very sure to use this if you
		are constructing a loss_op manually. Otherwise regularization arguments
		on `tf.layers` methods will not function.
		
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
		Adds a hinge loss to the training procedure.
		
		Args:
		  labels: The ground truth output tensor. Its shape should match the shape of
		    logits. The values of the tensor are expected to be 0.0 or 1.0. Internally
		    the {0,1} labels are converted to {-1,1} when calculating the hinge loss.
		  logits: The logits, a float tensor. Note that logits are assumed to be
		    unbounded and 0-centered. A value > 0 (resp. < 0) is considered a positive
		    (resp. negative) binary prediction.
		  weights: Optional `Tensor` whose rank is either 0, or the same rank as
		    `labels`, and must be broadcastable to `labels` (i.e., all dimensions must
		    be either `1`, or the same as the corresponding `losses` dimension).
		  scope: The scope for the operations performed in computing the loss.
		  loss_collection: collection to which the loss will be added.
		  reduction: Type of reduction to apply to loss.
		
		Returns:
		  Weighted loss float `Tensor`. If `reduction` is `NONE`, this has the same
		  shape as `labels`; otherwise, it is scalar.
		
		Raises:
		  ValueError: If the shapes of `logits` and `labels` don't match or
		    if `labels` or `logits` is None.
		
		@compatibility(eager)
		The `loss_collection` argument is ignored when executing eagerly. Consider
		holding on to the return value or collecting losses via a `tf.keras.Model`.
		@end_compatibility
	**/
	static public function hinge_loss(labels:Dynamic, logits:Dynamic, ?weights:Dynamic, ?scope:Dynamic, ?loss_collection:Dynamic, ?reduction:Dynamic):Dynamic;
	/**
		Adds a Huber Loss term to the training procedure.
		
		For each value x in `error=labels-predictions`, the following is calculated:
		
		```
		  0.5 * x^2                  if |x| <= d
		  0.5 * d^2 + d * (|x| - d)  if |x| > d
		```
		
		where d is `delta`.
		
		See: https://en.wikipedia.org/wiki/Huber_loss
		
		`weights` acts as a coefficient for the loss. If a scalar is provided, then
		the loss is simply scaled by the given value. If `weights` is a tensor of size
		`[batch_size]`, then the total loss for each sample of the batch is rescaled
		by the corresponding element in the `weights` vector. If the shape of
		`weights` matches the shape of `predictions`, then the loss of each
		measurable element of `predictions` is scaled by the corresponding value of
		`weights`.
		
		Args:
		  labels: The ground truth output tensor, same dimensions as 'predictions'.
		  predictions: The predicted outputs.
		  weights: Optional `Tensor` whose rank is either 0, or the same rank as
		    `labels`, and must be broadcastable to `labels` (i.e., all dimensions must
		    be either `1`, or the same as the corresponding `losses` dimension).
		  delta: `float`, the point where the huber loss function
		    changes from a quadratic to linear.
		  scope: The scope for the operations performed in computing the loss.
		  loss_collection: collection to which the loss will be added.
		  reduction: Type of reduction to apply to loss.
		
		Returns:
		  Weighted loss float `Tensor`. If `reduction` is `NONE`, this has the same
		  shape as `labels`; otherwise, it is scalar.
		
		Raises:
		  ValueError: If the shape of `predictions` doesn't match that of `labels` or
		    if the shape of `weights` is invalid.  Also if `labels` or
		   `predictions` is None.
		
		@compatibility(eager)
		The `loss_collection` argument is ignored when executing eagerly. Consider
		holding on to the return value or collecting losses via a `tf.keras.Model`.
		@end_compatibility
	**/
	static public function huber_loss(labels:Dynamic, predictions:Dynamic, ?weights:Dynamic, ?delta:Dynamic, ?scope:Dynamic, ?loss_collection:Dynamic, ?reduction:Dynamic):Dynamic;
	/**
		Adds a Log Loss term to the training procedure.
		
		`weights` acts as a coefficient for the loss. If a scalar is provided, then
		the loss is simply scaled by the given value. If `weights` is a tensor of size
		`[batch_size]`, then the total loss for each sample of the batch is rescaled
		by the corresponding element in the `weights` vector. If the shape of
		`weights` matches the shape of `predictions`, then the loss of each
		measurable element of `predictions` is scaled by the corresponding value of
		`weights`.
		
		Args:
		  labels: The ground truth output tensor, same dimensions as 'predictions'.
		  predictions: The predicted outputs.
		  weights: Optional `Tensor` whose rank is either 0, or the same rank as
		    `labels`, and must be broadcastable to `labels` (i.e., all dimensions must
		    be either `1`, or the same as the corresponding `losses` dimension).
		  epsilon: A small increment to add to avoid taking a log of zero.
		  scope: The scope for the operations performed in computing the loss.
		  loss_collection: collection to which the loss will be added.
		  reduction: Type of reduction to apply to loss.
		
		Returns:
		  Weighted loss float `Tensor`. If `reduction` is `NONE`, this has the same
		  shape as `labels`; otherwise, it is scalar.
		
		Raises:
		  ValueError: If the shape of `predictions` doesn't match that of `labels` or
		    if the shape of `weights` is invalid.  Also if `labels` or `predictions`
		    is None.
		
		@compatibility(eager)
		The `loss_collection` argument is ignored when executing eagerly. Consider
		holding on to the return value or collecting losses via a `tf.keras.Model`.
		@end_compatibility
	**/
	static public function log_loss(labels:Dynamic, predictions:Dynamic, ?weights:Dynamic, ?epsilon:Dynamic, ?scope:Dynamic, ?loss_collection:Dynamic, ?reduction:Dynamic):Dynamic;
	/**
		Adds a pairwise-errors-squared loss to the training procedure.
		
		Unlike `mean_squared_error`, which is a measure of the differences between
		corresponding elements of `predictions` and `labels`,
		`mean_pairwise_squared_error` is a measure of the differences between pairs of
		corresponding elements of `predictions` and `labels`.
		
		For example, if `labels`=[a, b, c] and `predictions`=[x, y, z], there are
		three pairs of differences are summed to compute the loss:
		  loss = [ ((a-b) - (x-y)).^2 + ((a-c) - (x-z)).^2 + ((b-c) - (y-z)).^2 ] / 3
		
		Note that since the inputs are of shape `[batch_size, d0, ... dN]`, the
		corresponding pairs are computed within each batch sample but not across
		samples within a batch. For example, if `predictions` represents a batch of
		16 grayscale images of dimension [batch_size, 100, 200], then the set of pairs
		is drawn from each image, but not across images.
		
		`weights` acts as a coefficient for the loss. If a scalar is provided, then
		the loss is simply scaled by the given value. If `weights` is a tensor of size
		`[batch_size]`, then the total loss for each sample of the batch is rescaled
		by the corresponding element in the `weights` vector.
		
		Args:
		  labels: The ground truth output tensor, whose shape must match the shape of
		    `predictions`.
		  predictions: The predicted outputs, a tensor of size
		    `[batch_size, d0, .. dN]` where N+1 is the total number of dimensions in
		    `predictions`.
		  weights: Coefficients for the loss a scalar, a tensor of shape
		    `[batch_size]` or a tensor whose shape matches `predictions`.
		  scope: The scope for the operations performed in computing the loss.
		  loss_collection: collection to which the loss will be added.
		
		Returns:
		  A scalar `Tensor` that returns the weighted loss.
		
		Raises:
		  ValueError: If the shape of `predictions` doesn't match that of `labels` or
		    if the shape of `weights` is invalid.  Also if `labels` or `predictions`
		    is None.
		
		@compatibility(eager)
		The `loss_collection` argument is ignored when executing eagerly. Consider
		holding on to the return value or collecting losses via a `tf.keras.Model`.
		@end_compatibility
	**/
	static public function mean_pairwise_squared_error(labels:Dynamic, predictions:Dynamic, ?weights:Dynamic, ?scope:Dynamic, ?loss_collection:Dynamic):Dynamic;
	/**
		Adds a Sum-of-Squares loss to the training procedure.
		
		`weights` acts as a coefficient for the loss. If a scalar is provided, then
		the loss is simply scaled by the given value. If `weights` is a tensor of size
		`[batch_size]`, then the total loss for each sample of the batch is rescaled
		by the corresponding element in the `weights` vector. If the shape of
		`weights` matches the shape of `predictions`, then the loss of each
		measurable element of `predictions` is scaled by the corresponding value of
		`weights`.
		
		Args:
		  labels: The ground truth output tensor, same dimensions as 'predictions'.
		  predictions: The predicted outputs.
		  weights: Optional `Tensor` whose rank is either 0, or the same rank as
		    `labels`, and must be broadcastable to `labels` (i.e., all dimensions must
		    be either `1`, or the same as the corresponding `losses` dimension).
		  scope: The scope for the operations performed in computing the loss.
		  loss_collection: collection to which the loss will be added.
		  reduction: Type of reduction to apply to loss.
		
		Returns:
		  Weighted loss float `Tensor`. If `reduction` is `NONE`, this has the same
		  shape as `labels`; otherwise, it is scalar.
		
		Raises:
		  ValueError: If the shape of `predictions` doesn't match that of `labels` or
		    if the shape of `weights` is invalid.  Also if `labels` or `predictions`
		    is None.
		
		@compatibility(eager)
		The `loss_collection` argument is ignored when executing eagerly. Consider
		holding on to the return value or collecting losses via a `tf.keras.Model`.
		@end_compatibility
	**/
	static public function mean_squared_error(labels:Dynamic, predictions:Dynamic, ?weights:Dynamic, ?scope:Dynamic, ?loss_collection:Dynamic, ?reduction:Dynamic):Dynamic;
	/**
		Creates a cross-entropy loss using tf.nn.sigmoid_cross_entropy_with_logits.
		
		`weights` acts as a coefficient for the loss. If a scalar is provided,
		then the loss is simply scaled by the given value. If `weights` is a
		tensor of shape `[batch_size]`, then the loss weights apply to each
		corresponding sample.
		
		If `label_smoothing` is nonzero, smooth the labels towards 1/2:
		
		    new_multiclass_labels = multiclass_labels * (1 - label_smoothing)
		                            + 0.5 * label_smoothing
		
		Args:
		  multi_class_labels: `[batch_size, num_classes]` target integer labels in
		    `{0, 1}`.
		  logits: Float `[batch_size, num_classes]` logits outputs of the network.
		  weights: Optional `Tensor` whose rank is either 0, or the same rank as
		    `labels`, and must be broadcastable to `labels` (i.e., all dimensions must
		    be either `1`, or the same as the corresponding `losses` dimension).
		  label_smoothing: If greater than `0` then smooth the labels.
		  scope: The scope for the operations performed in computing the loss.
		  loss_collection: collection to which the loss will be added.
		  reduction: Type of reduction to apply to loss.
		
		Returns:
		  Weighted loss `Tensor` of the same type as `logits`. If `reduction` is
		  `NONE`, this has the same shape as `logits`; otherwise, it is scalar.
		
		Raises:
		  ValueError: If the shape of `logits` doesn't match that of
		    `multi_class_labels` or if the shape of `weights` is invalid, or if
		    `weights` is None.  Also if `multi_class_labels` or `logits` is None.
		
		@compatibility(eager)
		The `loss_collection` argument is ignored when executing eagerly. Consider
		holding on to the return value or collecting losses via a `tf.keras.Model`.
		@end_compatibility
	**/
	static public function sigmoid_cross_entropy(multi_class_labels:Dynamic, logits:Dynamic, ?weights:Dynamic, ?label_smoothing:Dynamic, ?scope:Dynamic, ?loss_collection:Dynamic, ?reduction:Dynamic):Dynamic;
	/**
		Creates a cross-entropy loss using tf.nn.softmax_cross_entropy_with_logits_v2.
		
		`weights` acts as a coefficient for the loss. If a scalar is provided,
		then the loss is simply scaled by the given value. If `weights` is a
		tensor of shape `[batch_size]`, then the loss weights apply to each
		corresponding sample.
		
		If `label_smoothing` is nonzero, smooth the labels towards 1/num_classes:
		    new_onehot_labels = onehot_labels * (1 - label_smoothing)
		                        + label_smoothing / num_classes
		
		Note that `onehot_labels` and `logits` must have the same shape,
		e.g. `[batch_size, num_classes]`. The shape of `weights` must be
		broadcastable to loss, whose shape is decided by the shape of `logits`.
		In case the shape of `logits` is `[batch_size, num_classes]`, loss is
		a `Tensor` of shape `[batch_size]`.
		
		Args:
		  onehot_labels: One-hot-encoded labels.
		  logits: Logits outputs of the network.
		  weights: Optional `Tensor` that is broadcastable to loss.
		  label_smoothing: If greater than 0 then smooth the labels.
		  scope: the scope for the operations performed in computing the loss.
		  loss_collection: collection to which the loss will be added.
		  reduction: Type of reduction to apply to loss.
		
		Returns:
		  Weighted loss `Tensor` of the same type as `logits`. If `reduction` is
		  `NONE`, this has shape `[batch_size]`; otherwise, it is scalar.
		
		Raises:
		  ValueError: If the shape of `logits` doesn't match that of `onehot_labels`
		    or if the shape of `weights` is invalid or if `weights` is None.  Also if
		    `onehot_labels` or `logits` is None.
		
		@compatibility(eager)
		The `loss_collection` argument is ignored when executing eagerly. Consider
		holding on to the return value or collecting losses via a `tf.keras.Model`.
		@end_compatibility
	**/
	static public function softmax_cross_entropy(onehot_labels:Dynamic, logits:Dynamic, ?weights:Dynamic, ?label_smoothing:Dynamic, ?scope:Dynamic, ?loss_collection:Dynamic, ?reduction:Dynamic):Dynamic;
	/**
		Cross-entropy loss using `tf.nn.sparse_softmax_cross_entropy_with_logits`.
		
		`weights` acts as a coefficient for the loss. If a scalar is provided,
		then the loss is simply scaled by the given value. If `weights` is a
		tensor of shape `[batch_size]`, then the loss weights apply to each
		corresponding sample.
		
		Args:
		  labels: `Tensor` of shape `[d_0, d_1, ..., d_{r-1}]` (where `r` is rank of
		    `labels` and result) and dtype `int32` or `int64`. Each entry in `labels`
		    must be an index in `[0, num_classes)`. Other values will raise an
		    exception when this op is run on CPU, and return `NaN` for corresponding
		    loss and gradient rows on GPU.
		  logits: Unscaled log probabilities of shape
		    `[d_0, d_1, ..., d_{r-1}, num_classes]` and dtype `float16`, `float32` or
		    `float64`.
		  weights: Coefficients for the loss. This must be scalar or broadcastable to
		    `labels` (i.e. same rank and each dimension is either 1 or the same).
		  scope: the scope for the operations performed in computing the loss.
		  loss_collection: collection to which the loss will be added.
		  reduction: Type of reduction to apply to loss.
		
		Returns:
		  Weighted loss `Tensor` of the same type as `logits`. If `reduction` is
		  `NONE`, this has the same shape as `labels`; otherwise, it is scalar.
		
		Raises:
		  ValueError: If the shapes of `logits`, `labels`, and `weights` are
		    incompatible, or if any of them are None.
		
		@compatibility(eager)
		The `loss_collection` argument is ignored when executing eagerly. Consider
		holding on to the return value or collecting losses via a `tf.keras.Model`.
		@end_compatibility
	**/
	static public function sparse_softmax_cross_entropy(labels:Dynamic, logits:Dynamic, ?weights:Dynamic, ?scope:Dynamic, ?loss_collection:Dynamic, ?reduction:Dynamic):Dynamic;
}