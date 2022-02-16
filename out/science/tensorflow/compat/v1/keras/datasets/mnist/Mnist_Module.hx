/* This file is generated, do not edit! */
package tensorflow.compat.v1.keras.datasets.mnist;
@:pythonImport("tensorflow.compat.v1.keras.datasets.mnist") extern class Mnist_Module {
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
		Loads the MNIST dataset.
		
		This is a dataset of 60,000 28x28 grayscale images of the 10 digits,
		along with a test set of 10,000 images.
		More info can be found at the
		[MNIST homepage](http://yann.lecun.com/exdb/mnist/).
		
		Args:
		  path: path where to cache the dataset locally
		    (relative to `~/.keras/datasets`).
		
		Returns:
		  Tuple of NumPy arrays: `(x_train, y_train), (x_test, y_test)`.
		
		**x_train**: uint8 NumPy array of grayscale image data with shapes
		  `(60000, 28, 28)`, containing the training data. Pixel values range
		  from 0 to 255.
		
		**y_train**: uint8 NumPy array of digit labels (integers in range 0-9)
		  with shape `(60000,)` for the training data.
		
		**x_test**: uint8 NumPy array of grayscale image data with shapes
		  (10000, 28, 28), containing the test data. Pixel values range
		  from 0 to 255.
		
		**y_test**: uint8 NumPy array of digit labels (integers in range 0-9)
		  with shape `(10000,)` for the test data.
		
		Example:
		
		```python
		(x_train, y_train), (x_test, y_test) = keras.datasets.mnist.load_data()
		assert x_train.shape == (60000, 28, 28)
		assert x_test.shape == (10000, 28, 28)
		assert y_train.shape == (60000,)
		assert y_test.shape == (10000,)
		```
		
		License:
		  Yann LeCun and Corinna Cortes hold the copyright of MNIST dataset,
		  which is a derivative work from original NIST datasets.
		  MNIST dataset is made available under the terms of the
		  [Creative Commons Attribution-Share Alike 3.0 license.](
		  https://creativecommons.org/licenses/by-sa/3.0/)
	**/
	static public function load_data(?path:Dynamic):Dynamic;
}