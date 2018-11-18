/* This file is generated, do not edit! */
package tensorflow.contrib.eager.python.examples.linear_regression.linear_regression;
@:pythonImport("tensorflow.contrib.eager.python.examples.linear_regression.linear_regression") extern class Linear_regression_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	/**
		Fit the linear-regression model.
		
		Args:
		  model: The LinearModel to fit.
		  dataset: The tf.data.Dataset to use for training data.
		  optimizer: The TensorFlow Optimizer object to be used.
		  verbose: If true, will print out loss values at every iteration.
		  logdir: The directory in which summaries will be written for TensorBoard
		    (optional).
	**/
	static public function fit(model:Dynamic, dataset:Dynamic, optimizer:Dynamic, ?verbose:Dynamic, ?logdir:Dynamic):Dynamic;
	static public function main(_:Dynamic):Dynamic;
	static public function mean_square_loss(model:Dynamic, xs:Dynamic, ys:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		tf.data.Dataset that yields synthetic data for linear regression.
	**/
	static public function synthetic_dataset(w:Dynamic, b:Dynamic, noise_level:Dynamic, batch_size:Dynamic, num_batches:Dynamic):Dynamic;
	static public function synthetic_dataset_helper(w:Dynamic, b:Dynamic, num_features:Dynamic, noise_level:Dynamic, batch_size:Dynamic, num_batches:Dynamic):Dynamic;
}