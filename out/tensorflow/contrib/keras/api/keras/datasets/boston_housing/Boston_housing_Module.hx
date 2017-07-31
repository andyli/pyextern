/* This file is generated, do not edit! */
package tensorflow.contrib.keras.api.keras.datasets.boston_housing;
@:pythonImport("tensorflow.contrib.keras.api.keras.datasets.boston_housing") extern class Boston_housing_Module {
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
		
		Arguments:
		    path: path where to cache the dataset locally
		        (relative to ~/.keras/datasets).
		    seed: Random seed for shuffling the data
		        before computing the test split.
		    test_split: fraction of the data to reserve as test set.
		
		Returns:
		    Tuple of Numpy arrays: `(x_train, y_train), (x_test, y_test)`.
	**/
	static public function load_data(?path:Dynamic, ?seed:Dynamic, ?test_split:Dynamic):Dynamic;
}