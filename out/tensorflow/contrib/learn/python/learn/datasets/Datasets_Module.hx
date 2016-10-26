/* This file is generated, do not edit! */
package tensorflow.contrib.learn.python.learn.datasets;
@:pythonImport("tensorflow.contrib.learn.python.learn.datasets") extern class Datasets_Module {
	static public var DATASETS : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __path__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	/**
		Load Boston housing dataset.
		
		Args:
		    data_path: string, path to boston dataset (optional)
		
		Returns:
		  Dataset object containing data in-memory.
	**/
	static public function load_boston(?data_path:Dynamic):Dynamic;
	/**
		Loads dataset by name.
		
		Args:
		  name: Name of the dataset to load.
		  size: Size of the dataset to load.
		  test_with_fake_data: If true, load with fake dataset.
		
		Returns:
		  Features and targets for given dataset. Can be numpy or iterator.
		
		Raises:
		  ValueError: if `name` is not found.
	**/
	static public function load_dataset(name:Dynamic, ?size:Dynamic, ?test_with_fake_data:Dynamic):Dynamic;
	/**
		Load Iris dataset.
		
		Args:
		    data_path: string, path to iris dataset (optional)
		
		Returns:
		  Dataset object containing data in-memory.
	**/
	static public function load_iris(?data_path:Dynamic):Dynamic;
	static public var print_function : Dynamic;
}