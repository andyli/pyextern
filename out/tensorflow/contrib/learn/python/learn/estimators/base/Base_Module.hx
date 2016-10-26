/* This file is generated, do not edit! */
package tensorflow.contrib.learn.python.learn.estimators.base;
@:pythonImport("tensorflow.contrib.learn.python.learn.estimators.base") extern class Base_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _copy_dir(dir_in:Dynamic, dir_out:Dynamic):Dynamic;
	static public function _write_with_backup(filename:Dynamic, content:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
	/**
		Create data feeder, to sample inputs from dataset.
		
		If `x` and `y` are iterators, use `StreamingDataFeeder`.
		
		Args:
		  x: numpy, pandas or Dask matrix or iterable.
		  y: numpy, pandas or Dask array or iterable.
		  n_classes: number of classes.
		  batch_size: size to split data into parts. Must be >= 1.
		  shuffle: Whether to shuffle the inputs.
		  epochs: Number of epochs to run.
		
		Returns:
		  DataFeeder object that returns training data.
		
		Raises:
		  ValueError: if one of `x` and `y` is iterable and the other is not.
	**/
	static public function setup_train_data_feeder(x:Dynamic, y:Dynamic, n_classes:Dynamic, ?batch_size:Dynamic, ?shuffle:Dynamic, ?epochs:Dynamic):Dynamic;
	static public var string_types : Dynamic;
}