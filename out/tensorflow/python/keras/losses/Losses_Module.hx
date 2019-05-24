/* This file is generated, do not edit! */
package tensorflow.python.keras.losses;
@:pythonImport("tensorflow.python.keras.losses") extern class Losses_Module {
	static public function KLD(y_true:Dynamic, y_pred:Dynamic):Dynamic;
	static public var LABEL_DTYPES_FOR_LOSSES : Dynamic;
	static public function MAE(y_true:Dynamic, y_pred:Dynamic):Dynamic;
	static public function MAPE(y_true:Dynamic, y_pred:Dynamic):Dynamic;
	static public function MSE(y_true:Dynamic, y_pred:Dynamic):Dynamic;
	static public function MSLE(y_true:Dynamic, y_pred:Dynamic):Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var absolute_import : Dynamic;
	static public function binary_crossentropy(y_true:Dynamic, y_pred:Dynamic, ?from_logits:Dynamic):Dynamic;
	static public function categorical_crossentropy(y_true:Dynamic, y_pred:Dynamic, ?from_logits:Dynamic):Dynamic;
	static public function categorical_hinge(y_true:Dynamic, y_pred:Dynamic):Dynamic;
	/**
		Computes the weighted loss.
		
		Args:
		  losses: `Tensor` of shape `[batch_size, d1, ... dN]`.
		  sample_weight: Optional `Tensor` whose rank is either 0, or the same rank as
		    `losses`, or be broadcastable to `losses`.
		  reduction: Type of `tf.losses.Reduction` to apply to loss. Default value is
		    `SUM_OVER_BATCH_SIZE`.
		  name: Optional name for the op.
		
		Raises:
		  ValueError: If the shape of `sample_weight` is not compatible with `losses`.
		
		Returns:
		  Weighted loss `Tensor` of the same type as `losses`. If `reduction` is
		  `NONE`, this has the same shape as `losses`; otherwise, it is scalar.
	**/
	static public function compute_weighted_loss(losses:Dynamic, ?sample_weight:Dynamic, ?reduction:Dynamic, ?name:Dynamic):Dynamic;
	static public function cosine(y_true:Dynamic, y_pred:Dynamic):Dynamic;
	static public function cosine_proximity(y_true:Dynamic, y_pred:Dynamic):Dynamic;
	static public function deserialize(name:Dynamic, ?custom_objects:Dynamic):Dynamic;
	static public function deserialize_keras_object(identifier:Dynamic, ?module_objects:Dynamic, ?custom_objects:Dynamic, ?printable_module_name:Dynamic):Dynamic;
	static public var division : Dynamic;
	static public function get(identifier:Dynamic):Dynamic;
	static public function hinge(y_true:Dynamic, y_pred:Dynamic):Dynamic;
	static public function kld(y_true:Dynamic, y_pred:Dynamic):Dynamic;
	static public function kullback_leibler_divergence(y_true:Dynamic, y_pred:Dynamic):Dynamic;
	/**
		Logarithm of the hyperbolic cosine of the prediction error.
		
		`log(cosh(x))` is approximately equal to `(x ** 2) / 2` for small `x` and
		to `abs(x) - log(2)` for large `x`. This means that 'logcosh' works mostly
		like the mean squared error, but will not be so strongly affected by the
		occasional wildly incorrect prediction.
		
		Arguments:
		    y_true: tensor of true targets.
		    y_pred: tensor of predicted targets.
		
		Returns:
		    Tensor with one scalar loss entry per sample.
	**/
	static public function logcosh(y_true:Dynamic, y_pred:Dynamic):Dynamic;
	static public function mae(y_true:Dynamic, y_pred:Dynamic):Dynamic;
	static public function mape(y_true:Dynamic, y_pred:Dynamic):Dynamic;
	static public function mean_absolute_error(y_true:Dynamic, y_pred:Dynamic):Dynamic;
	static public function mean_absolute_percentage_error(y_true:Dynamic, y_pred:Dynamic):Dynamic;
	static public function mean_squared_error(y_true:Dynamic, y_pred:Dynamic):Dynamic;
	static public function mean_squared_logarithmic_error(y_true:Dynamic, y_pred:Dynamic):Dynamic;
	static public function mse(y_true:Dynamic, y_pred:Dynamic):Dynamic;
	static public function msle(y_true:Dynamic, y_pred:Dynamic):Dynamic;
	static public function poisson(y_true:Dynamic, y_pred:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	static public function serialize(loss:Dynamic):Dynamic;
	static public function serialize_keras_object(instance:Dynamic):Dynamic;
	static public function sparse_categorical_crossentropy(y_true:Dynamic, y_pred:Dynamic, ?from_logits:Dynamic):Dynamic;
	static public function squared_hinge(y_true:Dynamic, y_pred:Dynamic):Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}