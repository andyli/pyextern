/* This file is generated, do not edit! */
package tensorflow.contrib.learn.python.learn.datasets.mnist;
@:pythonImport("tensorflow.contrib.learn.python.learn.datasets.mnist") extern class Mnist_Module {
	static public var DEFAULT_SOURCE_URL : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _read32(bytestream:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Convert class labels from scalars to one-hot vectors. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Please use tf.one_hot on tensors.
	**/
	static public function dense_to_one_hot(labels_dense:Dynamic, num_classes:Dynamic):Dynamic;
	/**
		Decorator for marking functions or methods deprecated.
		
		This decorator logs a deprecation warning whenever the decorated function is
		called. It has the following format:
		
		  <function> (from <module>) is deprecated and will be removed after <date>.
		  Instructions for updating:
		  <instructions>
		
		If `date` is None, 'after <date>' is replaced with 'in a future version'.
		<function> will include the class name if it is a method.
		
		It also edits the docstring of the function: ' (deprecated)' is appended
		to the first line of the docstring and a deprecation notice is prepended
		to the rest of the docstring.
		
		Args:
		  date: String or None. The date the function is scheduled to be removed.
		    Must be ISO 8601 (YYYY-MM-DD), or None.
		  instructions: String. Instructions on how to update code using the
		    deprecated function.
		  warn_once: Boolean. Set to `True` to warn only the first time the decorated
		    function is called. Otherwise, every call will log a warning.
		
		Returns:
		  Decorated function or method.
		
		Raises:
		  ValueError: If date is not None or in ISO 8601 format, or instructions are
		    empty.
	**/
	static public function deprecated(date:Dynamic, instructions:Dynamic, ?warn_once:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Extract the images into a 4D uint8 numpy array [index, y, x, depth]. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Please use tf.data to implement this functionality.
		
		Args:
		  f: A file object that can be passed into a gzip reader.
		
		Returns:
		  data: A 4D uint8 numpy array [index, y, x, depth].
		
		Raises:
		  ValueError: If the bytestream does not start with 2051.
	**/
	static public function extract_images(f:Dynamic):Dynamic;
	/**
		Extract the labels into a 1D uint8 numpy array [index]. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Please use tf.data to implement this functionality.
		
		Args:
		  f: A file object that can be passed into a gzip reader.
		  one_hot: Does one hot encoding for the result.
		  num_classes: Number of classes for the one hot encoding.
		
		Returns:
		  labels: a 1D uint8 numpy array.
		
		Raises:
		  ValueError: If the bystream doesn't start with 2049.
	**/
	static public function extract_labels(f:Dynamic, ?one_hot:Dynamic, ?num_classes:Dynamic):Dynamic;
	/**
		DEPRECATED FUNCTION
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Please use alternatives such as official/mnist/dataset.py from tensorflow/models.
	**/
	static public function load_mnist(?train_dir:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		DEPRECATED FUNCTION
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Please use alternatives such as official/mnist/dataset.py from tensorflow/models.
	**/
	static public function read_data_sets(train_dir:Dynamic, ?fake_data:Dynamic, ?one_hot:Dynamic, ?dtype:Dynamic, ?reshape:Dynamic, ?validation_size:Dynamic, ?seed:Dynamic, ?source_url:Dynamic):Dynamic;
}