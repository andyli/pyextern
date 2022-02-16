/* This file is generated, do not edit! */
package tensorflow.compat.v1.compat.v1.keras.datasets.fashion_mnist;
@:pythonImport("tensorflow.compat.v1.compat.v1.keras.datasets.fashion_mnist") extern class Fashion_mnist_Module {
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
		Loads the Fashion-MNIST dataset.
		
		This is a dataset of 60,000 28x28 grayscale images of 10 fashion categories,
		along with a test set of 10,000 images. This dataset can be used as
		a drop-in replacement for MNIST.
		
		The classes are:
		
		| Label | Description |
		|:-----:|-------------|
		|   0   | T-shirt/top |
		|   1   | Trouser     |
		|   2   | Pullover    |
		|   3   | Dress       |
		|   4   | Coat        |
		|   5   | Sandal      |
		|   6   | Shirt       |
		|   7   | Sneaker     |
		|   8   | Bag         |
		|   9   | Ankle boot  |
		
		Returns:
		  Tuple of NumPy arrays: `(x_train, y_train), (x_test, y_test)`.
		
		**x_train**: uint8 NumPy array of grayscale image data with shapes
		  `(60000, 28, 28)`, containing the training data.
		
		**y_train**: uint8 NumPy array of labels (integers in range 0-9)
		  with shape `(60000,)` for the training data.
		
		**x_test**: uint8 NumPy array of grayscale image data with shapes
		  (10000, 28, 28), containing the test data.
		
		**y_test**: uint8 NumPy array of labels (integers in range 0-9)
		  with shape `(10000,)` for the test data.
		
		Example:
		
		```python
		(x_train, y_train), (x_test, y_test) = fashion_mnist.load_data()
		assert x_train.shape == (60000, 28, 28)
		assert x_test.shape == (10000, 28, 28)
		assert y_train.shape == (60000,)
		assert y_test.shape == (10000,)
		```
		
		License:
		  The copyright for Fashion-MNIST is held by Zalando SE.
		  Fashion-MNIST is licensed under the [MIT license](
		  https://github.com/zalandoresearch/fashion-mnist/blob/master/LICENSE).
	**/
	static public function load_data():Dynamic;
}