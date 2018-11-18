/* This file is generated, do not edit! */
package tensorflow.contrib.timeseries.examples.predict;
@:pythonImport("tensorflow.contrib.timeseries.examples.predict") extern class Predict_Module {
	static public var FLAGS : Dynamic;
	static public var HAS_MATPLOTLIB : Dynamic;
	static public var _DEFAULT_DATA_FILE : Dynamic;
	static public var _MODULE_PATH : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var absolute_import : Dynamic;
	static public function ar_train_and_predict(csv_file_name:Dynamic):Dynamic;
	static public var division : Dynamic;
	static public function main(unused_argv:Dynamic):Dynamic;
	/**
		Plot a time series in a new figure.
	**/
	static public function make_plot(name:Dynamic, training_times:Dynamic, observed:Dynamic, all_times:Dynamic, mean:Dynamic, upper_limit:Dynamic, lower_limit:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	static public function structural_ensemble_train_and_predict(csv_file_name:Dynamic):Dynamic;
	/**
		A simple example of training and predicting.
	**/
	static public function train_and_predict(estimator:Dynamic, csv_file_name:Dynamic, training_steps:Dynamic):Dynamic;
}