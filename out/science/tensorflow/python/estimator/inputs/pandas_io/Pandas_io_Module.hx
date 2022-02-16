/* This file is generated, do not edit! */
package tensorflow.python.estimator.inputs.pandas_io;
@:pythonImport("tensorflow.python.estimator.inputs.pandas_io") extern class Pandas_io_Module {
	static public var HAS_PANDAS : Dynamic;
	static public var _HAS_DYNAMIC_ATTRIBUTES : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Returns a key that does not exist in the input DataFrame `features`.
		
		Args:
		  features: DataFrame
		  target_column_name: Name of the target column as a `str`
		
		Returns:
		  A unique key that can be used to insert the target into
		    features.
	**/
	static public function _get_unique_target_key(features:Dynamic, target_column_name:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	static public function estimator_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Returns input function that would feed Pandas DataFrame into the model.
		
		Note: `y`'s index must match `x`'s index.
		
		Args:
		  x: pandas `DataFrame` object.
		  y: pandas `Series` object or `DataFrame`. `None` if absent.
		  batch_size: int, size of batches to return.
		  num_epochs: int, number of epochs to iterate over data. If not `None`, read
		    attempts that would exceed this value will raise `OutOfRangeError`.
		  shuffle: bool, whether to read the records in random order.
		  queue_capacity: int, size of the read queue. If `None`, it will be set
		    roughly to the size of `x`.
		  num_threads: Integer, number of threads used for reading and enqueueing. In
		    order to have predicted and repeatable order of reading and enqueueing,
		    such as in prediction and evaluation mode, `num_threads` should be 1.
		  target_column: str, name to give the target column `y`. This parameter is
		    not used when `y` is a `DataFrame`.
		
		Returns:
		  Function, that has signature of ()->(dict of `features`, `target`)
		
		Raises:
		  ValueError: if `x` already contains a column with the same name as `y`, or
		    if the indexes of `x` and `y` don't match.
		  ValueError: if 'shuffle' is not provided or a bool.
	**/
	static public function pandas_input_fn(x:Dynamic, ?y:Dynamic, ?batch_size:Dynamic, ?num_epochs:Dynamic, ?shuffle:Dynamic, ?queue_capacity:Dynamic, ?num_threads:Dynamic, ?target_column:Dynamic):Dynamic;
	static public var print_function : Dynamic;
}