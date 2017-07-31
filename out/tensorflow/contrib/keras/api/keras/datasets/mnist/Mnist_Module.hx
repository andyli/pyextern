/* This file is generated, do not edit! */
package tensorflow.contrib.keras.api.keras.datasets.mnist;
@:pythonImport("tensorflow.contrib.keras.api.keras.datasets.mnist") extern class Mnist_Module {
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
		Loads the MNIST dataset.
		
		Arguments:
		    path: path where to cache the dataset locally
		        (relative to ~/.keras/datasets).
		
		Returns:
		    Tuple of Numpy arrays: `(x_train, y_train), (x_test, y_test)`.
	**/
	static public function load_data(?path:Dynamic):Dynamic;
}