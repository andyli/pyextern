/* This file is generated, do not edit! */
package tensorflow.compat.v1.compat.v1.keras.datasets.boston_housing;
@:pythonImport("tensorflow.compat.v1.compat.v1.keras.datasets.boston_housing") extern class Boston_housing_Module {
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
		Loads the Boston Housing dataset.
		
		This is a dataset taken from the StatLib library which is maintained at
		Carnegie Mellon University.
		
		Samples contain 13 attributes of houses at different locations around the
		Boston suburbs in the late 1970s. Targets are the median values of
		the houses at a location (in k$).
		
		The attributes themselves are defined in the
		[StatLib website](http://lib.stat.cmu.edu/datasets/boston).
		
		Args:
		  path: path where to cache the dataset locally
		      (relative to `~/.keras/datasets`).
		  test_split: fraction of the data to reserve as test set.
		  seed: Random seed for shuffling the data
		      before computing the test split.
		
		Returns:
		  Tuple of Numpy arrays: `(x_train, y_train), (x_test, y_test)`.
		
		**x_train, x_test**: numpy arrays with shape `(num_samples, 13)`
		  containing either the training samples (for x_train),
		  or test samples (for y_train).
		
		**y_train, y_test**: numpy arrays of shape `(num_samples,)` containing the
		  target scalars. The targets are float scalars typically between 10 and
		  50 that represent the home prices in k$.
	**/
	static public function load_data(?path:Dynamic, ?test_split:Dynamic, ?seed:Dynamic):Dynamic;
}