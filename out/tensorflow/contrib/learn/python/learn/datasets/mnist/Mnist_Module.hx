/* This file is generated, do not edit! */
package tensorflow.contrib.learn.python.learn.datasets.mnist;
@:pythonImport("tensorflow.contrib.learn.python.learn.datasets.mnist") extern class Mnist_Module {
	static public var SOURCE_URL : Dynamic;
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
		Convert class labels from scalars to one-hot vectors.
	**/
	static public function dense_to_one_hot(labels_dense:Dynamic, num_classes:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Extract the images into a 4D uint8 numpy array [index, y, x, depth].
	**/
	static public function extract_images(filename:Dynamic):Dynamic;
	/**
		Extract the labels into a 1D uint8 numpy array [index].
	**/
	static public function extract_labels(filename:Dynamic, ?one_hot:Dynamic, ?num_classes:Dynamic):Dynamic;
	static public function load_mnist(?train_dir:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	static public function read_data_sets(train_dir:Dynamic, ?fake_data:Dynamic, ?one_hot:Dynamic, ?dtype:Dynamic, ?reshape:Dynamic):Dynamic;
}