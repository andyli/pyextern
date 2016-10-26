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
		Computes the weighted loss.
		
		Args:
		  losses: A tensor of size [batch_size, d1, ... dN].
		  weight: A tensor of size [1] or [batch_size, d1, ... dK] where K < N.
		
		Returns:
		  A scalar `Tensor` that returns the weighted loss.
		
		Raises:
		  ValueError: If the weight shape is not compatible with the losses shape or
		    if the number of dimensions (rank) of either losses or weight is missing.
	**/
	static public function _compute_weighted_loss(losses:Dynamic, weight:Dynamic):Dynamic;
	/**
		Computes the number of elements in the loss function induced by `weight`.
		
		A given weight tensor induces different numbers of usable elements in the
		`losses` tensor. The `weight` tensor is broadcast across `losses` for all
		possible dimensions. For example, if `losses` is a tensor of dimension
		[4, 5, 6, 3] and weight is a tensor of size [4, 5], then weight is, in effect,
		tiled to match the size of `losses`. Following this effective tile, the total
		number of present elements is the number of non-zero weights.
		
		Args:
		  losses: A tensor of size [batch_size, d1, ... dN].
		  weight: A tensor of size [1] or [batch_size, d1, ... dK] where K < N.
		  per_batch: Whether to return the number of elements per batch or as a sum
		    total.
		
		Returns:
		  The number of present (non-zero) elements in the losses tensor. If
		    `per_batch` is True, the value is returned as a tensor of size
		    [batch_size]. Otherwise, a single scalar tensor is returned.
	**/
	static public function _num_present(losses:Dynamic, weight:Dynamic, ?per_batch:Dynamic):Dynamic;
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
		  weight: A `Tensor` of size [1], [batch_size] or [batch_size, d1, ... dN].
		    The `losses` are reduced (tf.reduce_sum) until its dimension matches
		    that of `weight` at which point the reduced `losses` are element-wise
		    multiplied by `weight` and a final reduce_sum is computed on the result.
		    Conceptually, this operation is equivalent to broadcasting (tiling)
		    `weight` to be the same size as `losses`, performing an element-wise
		    multiplication, and summing the result.
		
		Returns:
		  A scalar tf.float32 `Tensor` whose value represents the sum of the scaled
		    `losses`.
	**/
	static public function _scale_losses(losses:Dynamic, weight:Dynamic):Dynamic;
	/**
		Adds an Absolute Difference loss to the training procedure.
		
		`weight` acts as a coefficient for the loss. If a scalar is provided, then the
		loss is simply scaled by the given value. If `weight` is a tensor of size
		[batch_size], then the total loss for each sample of the batch is rescaled
		by the corresponding element in the `weight` vector. If the shape of
		`weight` matches the shape of `predictions`, then the loss of each
		measurable element of `predictions` is scaled by the corresponding value of
		`weight`.
		
		Args:
		  predictions: The predicted outputs.
		  targets: The ground truth output tensor, same dimensions as 'predictions'.
		  weight: Coefficients for the loss a scalar, a tensor of shape
		    [batch_size] or a tensor whose shape matches `predictions`.
		  scope: The scope for the operations performed in computing the loss.
		
		Returns:
		  A scalar `Tensor` representing the loss value.
		
		Raises:
		  ValueError: If the shape of `predictions` doesn't match that of `targets` or
		    if the shape of `weight` is invalid.
	**/
	static public function absolute_difference(predictions:Dynamic, targets:Dynamic, ?weight:Dynamic, ?scope:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Adds a externally defined loss to collection of losses.
		
		Args:
		  loss: A loss `Tensor`.
	**/
	static public function add_loss(loss:Dynamic):Dynamic;
	/**
		Adds a cosine-distance loss to the training procedure.
		
		Note that the function assumes that the predictions and targets are already
		unit-normalized.
		
		Args:
		  predictions: An arbitrary matrix.
		  targets: A `Tensor` whose shape matches 'predictions'
		  dim: The dimension along which the cosine distance is computed.
		  weight: Coefficients for the loss a scalar, a tensor of shape
		    [batch_size] or a tensor whose shape matches `predictions`.
		  scope: The scope for the operations performed in computing the loss.
		
		Returns:
		  A scalar `Tensor` representing the loss value.
		
		Raises:
		  ValueError: If predictions.shape doesn't match targets.shape, if the ignore
		              mask is provided and its shape doesn't match targets.shape or if
		              the ignore mask is not boolean valued.
	**/
	static public function cosine_distance(predictions:Dynamic, targets:Dynamic, dim:Dynamic, ?weight:Dynamic, ?scope:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Gets the list of loss variables.
		
		Args:
		  scope: an optional scope for filtering the losses to return.
		
		Returns:
		  a list of loss variables.
	**/
	static public function get_losses(?scope:Dynamic):Dynamic;
	/**
		Gets the regularization losses.
		
		Args:
		  scope: an optional scope for filtering the losses to return.
		
		Returns:
		  A list of loss variables.
	**/
	static public function get_regularization_losses(?scope:Dynamic):Dynamic;
	/**
		Returns a tensor whose value represents the total loss.
		
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
		Method that returns the loss tensor for hinge loss.
		
		Args:
		  logits: The logits, a float tensor.
		  target: The ground truth output tensor. Its shape should match the shape of
		    logits. The values of the tensor are expected to be 0.0 or 1.0.
		  scope: The scope for the operations performed in computing the loss.
		
		Returns:
		  A `Tensor` of same shape as logits and target representing the loss values
		    across the batch.
		
		Raises:
		  ValueError: If the shapes of `logits` and `target` don't match.
	**/
	static public function hinge_loss(logits:Dynamic, target:Dynamic, ?scope:Dynamic):Dynamic;
	/**
		Adds a Log Loss term to the training procedure.
		
		`weight` acts as a coefficient for the loss. If a scalar is provided, then the
		loss is simply scaled by the given value. If `weight` is a tensor of size
		[batch_size], then the total loss for each sample of the batch is rescaled
		by the corresponding element in the `weight` vector. If the shape of
		`weight` matches the shape of `predictions`, then the loss of each
		measurable element of `predictions` is scaled by the corresponding value of
		`weight`.
		
		Args:
		  predictions: The predicted outputs.
		  targets: The ground truth output tensor, same dimensions as 'predictions'.
		  weight: Coefficients for the loss a scalar, a tensor of shape
		    [batch_size] or a tensor whose shape matches `predictions`.
		  epsilon: A small increment to add to avoid taking a log of zero.
		  scope: The scope for the operations performed in computing the loss.
		
		Returns:
		  A scalar `Tensor` representing the loss value.
		
		Raises:
		  ValueError: If the shape of `predictions` doesn't match that of `targets` or
		    if the shape of `weight` is invalid.
	**/
	static public function log_loss(predictions:Dynamic, targets:Dynamic, ?weight:Dynamic, ?epsilon:Dynamic, ?scope:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Creates a cross-entropy loss using tf.nn.sigmoid_cross_entropy_with_logits.
		
		`weight` acts as a coefficient for the loss. If a scalar is provided,
		then the loss is simply scaled by the given value. If `weight` is a
		tensor of size [`batch_size`], then the loss weights apply to each
		corresponding sample.
		
		If `label_smoothing` is nonzero, smooth the labels towards 1/2:
		    new_multiclass_labels = multiclass_labels * (1 - label_smoothing)
		                            + 0.5 * label_smoothing
		
		Args:
		  logits: [batch_size, num_classes] logits outputs of the network .
		  multi_class_labels: [batch_size, num_classes] target labels in (0, 1).
		  weight: Coefficients for the loss. The tensor must be a scalar, a tensor of
		    shape [batch_size] or shape [batch_size, num_classes].
		  label_smoothing: If greater than 0 then smooth the labels.
		  scope: The scope for the operations performed in computing the loss.
		
		Returns:
		  A scalar `Tensor` representing the loss value.
		
		Raises:
		  ValueError: If the shape of `predictions` doesn't match that of `targets` or
		    if the shape of `weight` is invalid or if `weight` is None.
	**/
	static public function sigmoid_cross_entropy(logits:Dynamic, multi_class_labels:Dynamic, ?weight:Dynamic, ?label_smoothing:Dynamic, ?scope:Dynamic):Dynamic;
	/**
		Creates a cross-entropy loss using tf.nn.softmax_cross_entropy_with_logits.
		
		`weight` acts as a coefficient for the loss. If a scalar is provided,
		then the loss is simply scaled by the given value. If `weight` is a
		tensor of size [`batch_size`], then the loss weights apply to each
		corresponding sample.
		
		If `label_smoothing` is nonzero, smooth the labels towards 1/num_classes:
		    new_onehot_labels = onehot_labels * (1 - label_smoothing)
		                        + label_smoothing / num_classes
		
		Args:
		  logits: [batch_size, num_classes] logits outputs of the network .
		  onehot_labels: [batch_size, num_classes] target one_hot_encoded labels.
		  weight: Coefficients for the loss. The tensor must be a scalar or a tensor
		    of shape [batch_size].
		  label_smoothing: If greater than 0 then smooth the labels.
		  scope: the scope for the operations performed in computing the loss.
		
		Returns:
		  A scalar `Tensor` representing the loss value.
		
		Raises:
		  ValueError: If the shape of `predictions` doesn't match that of `targets` or
		    if the shape of `weight` is invalid or if `weight` is None.
	**/
	static public function softmax_cross_entropy(logits:Dynamic, onehot_labels:Dynamic, ?weight:Dynamic, ?label_smoothing:Dynamic, ?scope:Dynamic):Dynamic;
	/**
		Adds a pairwise-errors-squared loss to the training procedure.
		
		Unlike the sum_of_squares loss, which is a measure of the differences between
		corresponding elements of `predictions` and `targets`, sum_of_pairwise_squares
		is a measure of the differences between pairs of corresponding elements of
		`predictions` and `targets`.
		
		For example, if `targets`=[a, b, c] and `predictions`=[x, y, z], there are
		three pairs of differences are summed to compute the loss:
		  loss = [ ((a-b) - (x-y)).^2 + ((a-c) - (x-z)).^2 + ((b-c) - (y-z)).^2 ] / 3
		
		Note that since the inputs are of size [batch_size, d0, ... dN], the
		corresponding pairs are computed within each batch sample but not across
		samples within a batch. For example, if `predictions` represents a batch of
		16 grayscale images of dimenion [batch_size, 100, 200], then the set of pairs
		is drawn from each image, but not across images.
		
		`weight` acts as a coefficient for the loss. If a scalar is provided, then the
		loss is simply scaled by the given value. If `weight` is a tensor of size
		[batch_size], then the total loss for each sample of the batch is rescaled
		by the corresponding element in the `weight` vector.
		
		Args:
		  predictions: The predicted outputs, a tensor of size [batch_size, d0, .. dN]
		    where N+1 is the total number of dimensions in `predictions`.
		  targets: The ground truth output tensor, whose shape must match the shape of
		    the `predictions` tensor.
		  weight: Coefficients for the loss a scalar, a tensor of shape [batch_size]
		    or a tensor whose shape matches `predictions`.
		  scope: The scope for the operations performed in computing the loss.
		
		Returns:
		  A scalar `Tensor` representing the loss value.
		
		Raises:
		  ValueError: If the shape of `predictions` doesn't match that of `targets` or
		    if the shape of `weight` is invalid.
	**/
	static public function sum_of_pairwise_squares(predictions:Dynamic, targets:Dynamic, ?weight:Dynamic, ?scope:Dynamic):Dynamic;
	/**
		Adds a Sum-of-Squares loss to the training procedure.
		
		`weight` acts as a coefficient for the loss. If a scalar is provided, then the
		loss is simply scaled by the given value. If `weight` is a tensor of size
		[batch_size], then the total loss for each sample of the batch is rescaled
		by the corresponding element in the `weight` vector. If the shape of
		`weight` matches the shape of `predictions`, then the loss of each
		measurable element of `predictions` is scaled by the corresponding value of
		`weight`.
		
		Args:
		  predictions: The predicted outputs.
		  targets: The ground truth output tensor, same dimensions as 'predictions'.
		  weight: Coefficients for the loss a scalar, a tensor of shape
		    [batch_size] or a tensor whose shape matches `predictions`.
		  scope: The scope for the operations performed in computing the loss.
		
		Returns:
		  A scalar `Tensor` representing the loss value.
		
		Raises:
		  ValueError: If the shape of `predictions` doesn't match that of `targets` or
		    if the shape of `weight` is invalid.
	**/
	static public function sum_of_squares(predictions:Dynamic, targets:Dynamic, ?weight:Dynamic, ?scope:Dynamic):Dynamic;
}