/* This file is generated, do not edit! */
package tensorflow.contrib.timeseries.examples.known_anomaly;
@:pythonImport("tensorflow.contrib.timeseries.examples.known_anomaly") extern class Known_anomaly_Module {
	static public var HAS_MATPLOTLIB : Dynamic;
	static public var _DATA_FILE : Dynamic;
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
	static public function autoregressive_estimator(exogenous_feature_columns:Dynamic):Dynamic;
	static public var division : Dynamic;
	static public function main(unused_argv:Dynamic):Dynamic;
	/**
		Plot the time series and anomalies in a new figure.
	**/
	static public function make_plot(name:Dynamic, training_times:Dynamic, observed:Dynamic, all_times:Dynamic, mean:Dynamic, upper_limit:Dynamic, lower_limit:Dynamic, anomaly_locations:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Constructs a StructuralEnsembleRegressor.
	**/
	static public function state_space_estimator(exogenous_feature_columns:Dynamic):Dynamic;
	/**
		Training, evaluating, and predicting on a series with changepoints.
	**/
	static public function train_and_evaluate_exogenous(estimator_fn:Dynamic, ?csv_file_name:Dynamic, ?train_steps:Dynamic):Dynamic;
}