/* This file is generated, do not edit! */
package tensorflow.python.keras.api.keras.datasets.cifar100;
@:pythonImport("tensorflow.python.keras.api.keras.datasets.cifar100") extern class Cifar100_Module {
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
		Loads the CIFAR100 dataset.
		
		This is a dataset of 50,000 32x32 color training images and
		10,000 test images, labeled over 100 fine-grained classes that are
		grouped into 20 coarse-grained classes. See more info at the
		[CIFAR homepage](https://www.cs.toronto.edu/~kriz/cifar.html).
		
		Args:
		  label_mode: one of "fine", "coarse". If it is "fine" the category labels
		    are the fine-grained labels, if it is "coarse" the output labels are the
		    coarse-grained superclasses.
		
		Returns:
		  Tuple of NumPy arrays: `(x_train, y_train), (x_test, y_test)`.
		
		**x_train**: uint8 NumPy array of grayscale image data with shapes
		  `(50000, 32, 32, 3)`, containing the training data. Pixel values range
		  from 0 to 255.
		
		**y_train**: uint8 NumPy array of labels (integers in range 0-99)
		  with shape `(50000, 1)` for the training data.
		
		**x_test**: uint8 NumPy array of grayscale image data with shapes
		  (10000, 32, 32, 3), containing the test data. Pixel values range
		  from 0 to 255.
		
		**y_test**: uint8 NumPy array of labels (integers in range 0-99)
		  with shape `(10000, 1)` for the test data.
		
		Example:
		
		```python
		(x_train, y_train), (x_test, y_test) = keras.datasets.cifar100.load_data()
		assert x_train.shape == (50000, 32, 32, 3)
		assert x_test.shape == (10000, 32, 32, 3)
		assert y_train.shape == (50000, 1)
		assert y_test.shape == (10000, 1)
		```
	**/
	static public function load_data(?label_mode:Dynamic):Dynamic;
}