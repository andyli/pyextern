/* This file is generated, do not edit! */
package tensorflow.python.keras.layers.preprocessing.benchmarks.feature_column_benchmark;
@:pythonImport("tensorflow.python.keras.layers.preprocessing.benchmarks.feature_column_benchmark") extern class Feature_column_benchmark_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Create a ragged tensor with random data entries.
	**/
	static public function create_data(length:Dynamic, num_entries:Dynamic, max_value:Dynamic, dtype:Dynamic):Dynamic;
	/**
		Create a ragged tensor with random data entries.
	**/
	static public function create_string_data(length:Dynamic, num_entries:Dynamic, vocabulary:Dynamic, pct_oov:Dynamic, ?oov_string:Dynamic):Dynamic;
	static public function create_vocabulary(vocab_size:Dynamic):Dynamic;
	/**
		Benchmark a Feature Column.
	**/
	static public function run_fc(data:Dynamic, fc_fn:Dynamic, batch_size:Dynamic, num_runs:Dynamic, ?steps_per_repeat:Dynamic):Dynamic;
	/**
		Benchmark a Keras model.
	**/
	static public function run_keras(data:Dynamic, model:Dynamic, batch_size:Dynamic, num_runs:Dynamic, ?steps_per_repeat:Dynamic):Dynamic;
}