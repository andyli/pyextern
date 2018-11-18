/* This file is generated, do not edit! */
package tensorflow.contrib.keras.api.keras.losses;
@:pythonImport("tensorflow.contrib.keras.api.keras.losses") extern class Losses_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __path__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function binary_crossentropy(y_true:Dynamic, y_pred:Dynamic):Dynamic;
	static public function categorical_crossentropy(y_true:Dynamic, y_pred:Dynamic):Dynamic;
	static public function categorical_hinge(y_true:Dynamic, y_pred:Dynamic):Dynamic;
	static public function cosine_proximity(y_true:Dynamic, y_pred:Dynamic):Dynamic;
	static public function deserialize(name:Dynamic, ?custom_objects:Dynamic):Dynamic;
	static public function get(identifier:Dynamic):Dynamic;
	static public function hinge(y_true:Dynamic, y_pred:Dynamic):Dynamic;
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
	static public function mean_absolute_error(y_true:Dynamic, y_pred:Dynamic):Dynamic;
	static public function mean_absolute_percentage_error(y_true:Dynamic, y_pred:Dynamic):Dynamic;
	static public function mean_squared_error(y_true:Dynamic, y_pred:Dynamic):Dynamic;
	static public function mean_squared_logarithmic_error(y_true:Dynamic, y_pred:Dynamic):Dynamic;
	static public function poisson(y_true:Dynamic, y_pred:Dynamic):Dynamic;
	static public function serialize(loss:Dynamic):Dynamic;
	static public function sparse_categorical_crossentropy(y_true:Dynamic, y_pred:Dynamic):Dynamic;
	static public function squared_hinge(y_true:Dynamic, y_pred:Dynamic):Dynamic;
}