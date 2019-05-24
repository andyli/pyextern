/* This file is generated, do not edit! */
package tensorflow.compat.v1.keras.datasets.cifar100;
@:pythonImport("tensorflow.compat.v1.keras.datasets.cifar100") extern class Cifar100_Module {
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
		Loads CIFAR100 dataset.
		
		Arguments:
		    label_mode: one of "fine", "coarse".
		
		Returns:
		    Tuple of Numpy arrays: `(x_train, y_train), (x_test, y_test)`.
		
		Raises:
		    ValueError: in case of invalid `label_mode`.
	**/
	static public function load_data(?label_mode:Dynamic):Dynamic;
}