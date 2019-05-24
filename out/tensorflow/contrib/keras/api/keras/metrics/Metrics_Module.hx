/* This file is generated, do not edit! */
package tensorflow.contrib.keras.api.keras.metrics;
@:pythonImport("tensorflow.contrib.keras.api.keras.metrics") extern class Metrics_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __path__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function binary_accuracy(y_true:Dynamic, y_pred:Dynamic, ?threshold:Dynamic):Dynamic;
	static public function binary_crossentropy(y_true:Dynamic, y_pred:Dynamic, ?from_logits:Dynamic):Dynamic;
	static public function categorical_accuracy(y_true:Dynamic, y_pred:Dynamic):Dynamic;
	static public function categorical_crossentropy(y_true:Dynamic, y_pred:Dynamic, ?from_logits:Dynamic):Dynamic;
	static public function cosine_proximity(y_true:Dynamic, y_pred:Dynamic):Dynamic;
	static public function deserialize(config:Dynamic, ?custom_objects:Dynamic):Dynamic;
	static public function get(identifier:Dynamic):Dynamic;
	static public function hinge(y_true:Dynamic, y_pred:Dynamic):Dynamic;
	static public function kullback_leibler_divergence(y_true:Dynamic, y_pred:Dynamic):Dynamic;
	static public function mean_absolute_error(y_true:Dynamic, y_pred:Dynamic):Dynamic;
	static public function mean_absolute_percentage_error(y_true:Dynamic, y_pred:Dynamic):Dynamic;
	static public function mean_squared_error(y_true:Dynamic, y_pred:Dynamic):Dynamic;
	static public function mean_squared_logarithmic_error(y_true:Dynamic, y_pred:Dynamic):Dynamic;
	static public function poisson(y_true:Dynamic, y_pred:Dynamic):Dynamic;
	static public function serialize(metric:Dynamic):Dynamic;
	static public function sparse_categorical_crossentropy(y_true:Dynamic, y_pred:Dynamic, ?from_logits:Dynamic):Dynamic;
	static public function sparse_top_k_categorical_accuracy(y_true:Dynamic, y_pred:Dynamic, ?k:Dynamic):Dynamic;
	static public function squared_hinge(y_true:Dynamic, y_pred:Dynamic):Dynamic;
	static public function top_k_categorical_accuracy(y_true:Dynamic, y_pred:Dynamic, ?k:Dynamic):Dynamic;
}