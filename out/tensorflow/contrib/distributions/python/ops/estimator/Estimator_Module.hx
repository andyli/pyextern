/* This file is generated, do not edit! */
package tensorflow.contrib.distributions.python.ops.estimator;
@:pythonImport("tensorflow.contrib.distributions.python.ops.estimator") extern class Estimator_Module {
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
		Returns a tuple of (loss_train, loss_report).
		
		loss is used for gradient descent while weighted_average_loss is used for
		summaries to be backward compatible.
		
		loss is different from the loss reported on the tensorboard as we
		should respect the example weights when computing the gradient.
		
		  L = sum_{i} w_{i} * l_{i} / B
		
		where B is the number of examples in the batch, l_{i}, w_{i} are individual
		losses, and example weight.
		
		Args:
		  loss_unweighted: Unweighted loss
		  weight: Weight tensor
		  name: Optional name
		
		Returns:
		  A tuple of losses. First one for training and the second one for reporting.
	**/
	static public function _compute_weighted_loss(loss_unweighted:Dynamic, weight:Dynamic, ?name:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	/**
		Creates a `Head` for regression under a generic distribution. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed after 2018-10-01.
		Instructions for updating:
		The TensorFlow Distributions library has moved to TensorFlow Probability (https://github.com/tensorflow/probability). You should update all references to use `tfp.distributions` instead of `tf.contrib.distributions`.
		
		Args:
		  make_distribution_fn: Python `callable` which returns a `tf.Distribution`
		    instance created using only logits.
		  label_dimension: Number of regression labels per example. This is the size
		    of the last dimension of the labels `Tensor` (typically, this has shape
		    `[batch_size, label_dimension]`).
		  logits_dimension: Number of logits per example. This is the size of the last
		    dimension of the logits `Tensor` (typically, this has shape
		    `[batch_size, logits_dimension]`).
		    Default value: `label_dimension`.
		  label_name: Python `str`, name of the key in label `dict`. Can be `None` if
		    label is a `Tensor` (single headed models).
		  weight_column_name: Python `str` defining feature column name representing
		    weights. It is used to down weight or boost examples during training. It
		    will be multiplied by the loss of the example.
		  enable_centered_bias: Python `bool`. If `True`, estimator will learn a
		    centered bias variable for each class. Rest of the model structure learns
		    the residual after centered bias.
		  head_name: Python `str`, name of the head. Predictions, summary and metrics
		    keys are suffixed by `"/" + head_name` and the default variable scope is
		    `head_name`.
		
		Returns:
		  An instance of `Head` for generic regression.
	**/
	static public function estimator_head_distribution_regression(make_distribution_fn:Dynamic, ?label_dimension:Dynamic, ?logits_dimension:Dynamic, ?label_name:Dynamic, ?weight_column_name:Dynamic, ?enable_centered_bias:Dynamic, ?head_name:Dynamic):Dynamic;
	static public var print_function : Dynamic;
}