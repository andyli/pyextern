/* This file is generated, do not edit! */
package tensorflow.contrib.learn.python.learn.datasets;
@:pythonImport("tensorflow.contrib.learn.python.learn.datasets") extern class Datasets_Module {
	static public var DATASETS : Dynamic;
	static public var SYNTHETIC : Dynamic;
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
		  Features and labels for given dataset. Can be numpy or iterator.
		
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
	/**
		Creates binary synthetic datasets
		
		Args:
		  name: str, name of the dataset to generate
		  n_samples: int, number of datapoints to generate
		  noise: float or None, standard deviation of the Gaussian noise added
		  seed: int or None, seed for noise
		
		Returns:
		  Shuffled features and labels for given synthetic dataset of type `base.Dataset`
		
		Raises:
		  ValueError: Raised if `name` not found
		
		Note:
		  - This is a generic synthetic data generator - individual generators might have more parameters!
		    See documentation for individual parameters
		  - Note that the `noise` parameter uses `numpy.random.normal` and depends on `numpy`'s seed
		
		TODO:
		  - Support multiclass datasets
		  - Need shuffling routine. Currently synthetic datasets are reshuffled to avoid train/test correlation,
		    but that hurts reprodusability
	**/
	static public function make_dataset(name:Dynamic, ?n_samples:Dynamic, ?noise:Dynamic, ?seed:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var print_function : Dynamic;
}