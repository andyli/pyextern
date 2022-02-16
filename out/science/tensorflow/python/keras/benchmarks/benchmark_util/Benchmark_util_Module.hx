/* This file is generated, do not edit! */
package tensorflow.python.keras.benchmarks.benchmark_util;
@:pythonImport("tensorflow.python.keras.benchmarks.benchmark_util") extern class Benchmark_util_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Extend the benchmark names with CPU and GPU suffix.
		
		Args:
		  *params_list: A list of tuples represents the benchmark parameters.
		
		Returns:
		  A list of strings with the benchmark name extended with CPU and GPU suffix.
	**/
	static public function generate_benchmark_params_cpu_gpu(?params_list:python.VarArgs<Dynamic>):Dynamic;
	/**
		Split the suffix of the benchmark name.
		
		For example, for the name = 'benchmark_layer_call__Conv2D_small_shape',
		the return value is ['Conv2D', 'small', 'shape'].
		
		This is to generate the metadata of the benchmark test.
		
		Args:
		  name: A string, the benchmark name.
		
		Returns:
		  A list of strings of the suffix in the benchmark name.
	**/
	static public function get_benchmark_name(name:Dynamic):Dynamic;
	static public function get_keras_examples_metadata(keras_model:Dynamic, batch_size:Dynamic, ?impl:Dynamic):Dynamic;
	/**
		Run models and measure the performance.
		
		Args:
		  model_fn: Model function to be benchmarked.
		  x: Input data. See `x` in the `fit()` method of `keras.Model`.
		  y: Target data. See `y` in the `fit()` method of `keras.Model`.
		  epochs: Integer. Number of epochs to train the model.
		    If unspecified, `epochs` will default to 2.
		  batch_size: Integer. Number of samples per gradient update. If unspecified,
		    `batch_size` will default to 32.
		  run_iters: Integer. Number of iterations to run the performance measurement.
		    If unspecified, `run_iters` will default to 4.
		  optimizer: String (name of optimizer) or optimizer instance. See
		    `tf.keras.optimizers`.
		  loss: String (name of objective function), objective function or
		    `tf.keras.losses.Loss` instance. See `tf.keras.losses`.
		  metrics: Lists of metrics to be evaluated by the model during training. See
		    `metrics` in the `compile()` method of  `keras.Model`.
		  verbose: 0, 1, 2. Verbosity mode. See `verbose` in the `fit()` method of
		    `keras.Model`. If unspecified, `verbose` will default to 0.
		  num_gpus: Number of GPUs to run the model.
		  distribution_strategy: Distribution strategies. It could be
		    `multi_worker_mirrored`, `one_device`, `mirrored`. If unspecified,
		    `distribution_strategy` will default to 'off'. Note that, `TPU`
		    and `parameter_server` are not supported yet.
		
		Returns:
		  Performance summary, which contains build_time, compile_time,
		  startup_time, avg_epoch_time, wall_time, exp_per_sec, epochs,
		  distribution_strategy.
		
		Raise:
		  ValueError: If `x` is none or if `optimizer` is not provided or
		  if `loss` is not provided or if `num_gpus` is negative.
	**/
	static public function measure_performance(model_fn:Dynamic, ?x:Dynamic, ?y:Dynamic, ?epochs:Dynamic, ?batch_size:Dynamic, ?run_iters:Dynamic, ?optimizer:Dynamic, ?loss:Dynamic, ?metrics:Dynamic, ?verbose:Dynamic, ?num_gpus:Dynamic, ?distribution_strategy:Dynamic):Dynamic;
}