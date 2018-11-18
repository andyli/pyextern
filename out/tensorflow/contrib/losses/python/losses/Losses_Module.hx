/* This file is generated, do not edit! */
package tensorflow.contrib.losses.python.losses;
@:pythonImport("tensorflow.contrib.losses.python.losses") extern class Losses_Module {
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