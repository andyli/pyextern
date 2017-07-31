/* This file is generated, do not edit! */
package tensorflow.python.ops.losses.losses_impl;
@:pythonImport("tensorflow.python.ops.losses.losses_impl") extern class Losses_impl_Module {
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
		`[4, 5, 6, 3]` and `weights` is a tensor of shape `[4, 5]`, then `weights` is,
		in effect, tiled to match the shape of `losses`. Following this effective
		tile, the total number of present elements is the number of non-zero weights.
		
		Args:
		  losses: `Tensor` of shape `[batch_size, d1, ... dN]`.
		  weights: `Tensor` of shape `[]`, `[batch_size]` or
		    `[batch_size, d1, ... dK]`, where K < N.
		  per_batch: Whether to return the number of elements per batch or as a sum
		    total.
		
		Returns:
		  The number of present (non-zero) elements in the losses tensor. If
		    `per_batch` is `True`, the value is returned as a tensor of size
		    `[batch_size]`. Otherwise, a single scalar tensor is returned.
	**/
	static public function _num_present(losses:Dynamic, weights:Dynamic, ?per_batch:Dynamic):Dynamic;
	/**
		Internal version of _remove_squeezable_dimensions which handles weights.
		
		Squeezes `predictions` and `labels` if their ranks differ from expected by
		exactly 1.
		Squeezes `weights` if its rank is 1 more than the new rank of `predictions`
		
		This will use static shape if available. Otherwise, it will add graph
		operations, which could result in a performance hit.
		
		Args:
		  labels: Label values, a `Tensor` whose dimensions match `predictions`.
		  predictions: Predicted values, a `Tensor` of arbitrary dimensions.
		  weights: Optional weight `Tensor`. It will be squeezed if it's not scalar,
		    and its rank is 1 more than the new rank of `labels`.
		  expected_rank_diff: Expected result of `rank(predictions) - rank(labels)`.
		
		Returns:
		  Tuple of `predictions`, `labels` and `weights`, possibly with the last
		  dimension squeezed.
	**/
	static public function _remove_squeezable_dimensions(labels:Dynamic, predictions:Dynamic, ?weights:Dynamic, ?expected_rank_diff:Dynamic):Dynamic;
	/**
		Computes a safe divide which returns 0 if the denominator is zero.
		
		Note that the function contains an additional conditional check that is
		necessary for avoiding situations where the loss is zero causing NaNs to
		creep into the gradient computation.
		
		Args:
		  numerator: An arbitrary `Tensor`.
		  denominator: `Tensor` whose shape matches `numerator` and whose values are
		    assumed to be non-negative.
		  name: An optional name for the returned op.
		
		Returns:
		  The element-wise value of the numerator divided by the denominator.
	**/
	static public function _safe_div(numerator:Dynamic, denominator:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Computes a safe mean of the losses.
		
		Args:
		  losses: `Tensor` whose elements contain individual loss measurements.
		  num_present: The number of measurable elements in `losses`.
		
		Returns:
		  A scalar representing the mean of `losses`. If `num_present` is zero,
		    then zero is returned.
	**/
	static public function _safe_mean(losses:Dynamic, num_present:Dynamic):Dynamic;
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
		  ValueError: If the shape of `predictions` doesn't match that of `labels` or
		    if the shape of `weights` is invalid.
	**/
	static public function absolute_difference(labels:Dynamic, predictions:Dynamic, ?weights:Dynamic, ?scope:Dynamic, ?loss_collection:Dynamic, ?reduction:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
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
	**/
	static public function compute_weighted_loss(losses:Dynamic, ?weights:Dynamic, ?scope:Dynamic, ?loss_collection:Dynamic, ?reduction:Dynamic):Dynamic;
	/**
		Adds a cosine-distance loss to the training procedure.
		
		Note that the function assumes that `predictions` and `labels` are already
		unit-normalized.
		
		Args:
		  labels: `Tensor` whose shape matches 'predictions'
		  predictions: An arbitrary matrix.
		  dim: The dimension along which the cosine distance is computed.
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
		  ValueError: If `predictions` shape doesn't match `labels` shape, or
		    `weights` is `None`.
	**/
	static public function cosine_distance(labels:Dynamic, predictions:Dynamic, ?dim:Dynamic, ?weights:Dynamic, ?scope:Dynamic, ?loss_collection:Dynamic, ?reduction:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Adds a hinge loss to the training procedure.
		
		Args:
		  labels: The ground truth output tensor. Its shape should match the shape of
		    logits. The values of the tensor are expected to be 0.0 or 1.0.
		  logits: The logits, a float tensor.
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
		  ValueError: If the shapes of `logits` and `labels` don't match.
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
		[batch_size], then the total loss for each sample of the batch is rescaled
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
		    if the shape of `weights` is invalid.
	**/
	static public function huber_loss(labels:Dynamic, predictions:Dynamic, ?weights:Dynamic, ?delta:Dynamic, ?scope:Dynamic, ?loss_collection:Dynamic, ?reduction:Dynamic):Dynamic;
	/**
		Adds a Log Loss term to the training procedure.
		
		`weights` acts as a coefficient for the loss. If a scalar is provided, then
		the loss is simply scaled by the given value. If `weights` is a tensor of size
		[batch_size], then the total loss for each sample of the batch is rescaled
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
		    if the shape of `weights` is invalid.
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
		[batch_size], then the total loss for each sample of the batch is rescaled
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
		    if the shape of `weights` is invalid.
	**/
	static public function mean_pairwise_squared_error(labels:Dynamic, predictions:Dynamic, ?weights:Dynamic, ?scope:Dynamic, ?loss_collection:Dynamic):Dynamic;
	/**
		Adds a Sum-of-Squares loss to the training procedure.
		
		`weights` acts as a coefficient for the loss. If a scalar is provided, then
		the loss is simply scaled by the given value. If `weights` is a tensor of size
		[batch_size], then the total loss for each sample of the batch is rescaled
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
		    if the shape of `weights` is invalid.
	**/
	static public function mean_squared_error(labels:Dynamic, predictions:Dynamic, ?weights:Dynamic, ?scope:Dynamic, ?loss_collection:Dynamic, ?reduction:Dynamic):Dynamic;
	static public var print_function : Dynamic;
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
		    `(0, 1)`.
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
		    `weights` is None.
	**/
	static public function sigmoid_cross_entropy(multi_class_labels:Dynamic, logits:Dynamic, ?weights:Dynamic, ?label_smoothing:Dynamic, ?scope:Dynamic, ?loss_collection:Dynamic, ?reduction:Dynamic):Dynamic;
	/**
		Creates a cross-entropy loss using tf.nn.softmax_cross_entropy_with_logits.
		
		`weights` acts as a coefficient for the loss. If a scalar is provided,
		then the loss is simply scaled by the given value. If `weights` is a
		tensor of shape `[batch_size]`, then the loss weights apply to each
		corresponding sample.
		
		If `label_smoothing` is nonzero, smooth the labels towards 1/num_classes:
		    new_onehot_labels = onehot_labels * (1 - label_smoothing)
		                        + label_smoothing / num_classes
		
		Args:
		  onehot_labels: `[batch_size, num_classes]` target one-hot-encoded labels.
		  logits: [batch_size, num_classes] logits outputs of the network .
		  weights: Optional `Tensor` whose rank is either 0, or the same rank as
		    `onehot_labels`, and must be broadcastable to `onehot_labels` (i.e., all
		    dimensions must be either `1`, or the same as the corresponding `losses`
		    dimension).
		  label_smoothing: If greater than 0 then smooth the labels.
		  scope: the scope for the operations performed in computing the loss.
		  loss_collection: collection to which the loss will be added.
		  reduction: Type of reduction to apply to loss.
		
		Returns:
		  Weighted loss `Tensor` of the same type as `logits`. If `reduction` is
		  `NONE`, this has shape `[batch_size]`; otherwise, it is scalar.
		
		Raises:
		  ValueError: If the shape of `logits` doesn't match that of `onehot_labels`
		    or if the shape of `weights` is invalid or if `weights` is None.
	**/
	static public function softmax_cross_entropy(onehot_labels:Dynamic, logits:Dynamic, ?weights:Dynamic, ?label_smoothing:Dynamic, ?scope:Dynamic, ?loss_collection:Dynamic, ?reduction:Dynamic):Dynamic;
	/**
		Cross-entropy loss using `tf.nn.sparse_softmax_cross_entropy_with_logits`.
		
		`weights` acts as a coefficient for the loss. If a scalar is provided,
		then the loss is simply scaled by the given value. If `weights` is a
		tensor of shape [`batch_size`], then the loss weights apply to each
		corresponding sample.
		
		Args:
		  labels: `Tensor` of shape `[d_0, d_1, ..., d_{r-1}]` (where `r` is rank of
		    `labels` and result) and dtype `int32` or `int64`. Each entry in `labels`
		    must be an index in `[0, num_classes)`. Other values will raise an
		    exception when this op is run on CPU, and return `NaN` for corresponding
		    loss and gradient rows on GPU.
		  logits: Unscaled log probabilities of shape
		    `[d_0, d_1, ..., d_{r-1}, num_classes]` and dtype `float32` or `float64`.
		  weights: Coefficients for the loss. This must be scalar or of same rank as
		    `labels`
		  scope: the scope for the operations performed in computing the loss.
		  loss_collection: collection to which the loss will be added.
		  reduction: Type of reduction to apply to loss.
		
		Returns:
		  Weighted loss `Tensor` of the same type as `logits`. If `reduction` is
		  `NONE`, this has the same shape as `labels`; otherwise, it is scalar.
		
		Raises:
		  ValueError: If the shapes of logits, labels, and weight are incompatible, or
		    if `weights` is None.
	**/
	static public function sparse_softmax_cross_entropy(labels:Dynamic, logits:Dynamic, ?weights:Dynamic, ?scope:Dynamic, ?loss_collection:Dynamic, ?reduction:Dynamic):Dynamic;
}