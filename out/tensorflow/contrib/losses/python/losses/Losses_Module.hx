/* This file is generated, do not edit! */
package tensorflow.contrib.losses.python.losses;
@:pythonImport("tensorflow.contrib.losses.python.losses") extern class Losses_Module {
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