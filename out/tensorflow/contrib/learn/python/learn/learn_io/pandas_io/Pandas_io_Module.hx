/* This file is generated, do not edit! */
package tensorflow.contrib.learn.python.learn.learn_io.pandas_io;
@:pythonImport("tensorflow.contrib.learn.python.learn.learn_io.pandas_io") extern class Pandas_io_Module {
	static public var HAS_PANDAS : Dynamic;
	static public var PANDAS_DTYPES : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Returns input function that would feed Pandas DataFrame into the model.
		
		Note: `y`'s index must match `x`'s index.
		
		Args:
		  x: pandas `DataFrame` object.
		  y: pandas `Series` object. `None` if absent.
		  batch_size: int, size of batches to return.
		  num_epochs: int, number of epochs to iterate over data. If not `None`,
		    read attempts that would exceed this value will raise `OutOfRangeError`.
		  shuffle: bool, whether to read the records in random order.
		  queue_capacity: int, size of the read queue. If `None`, it will be set
		    roughly to the size of `x`.
		  num_threads: Integer, number of threads used for reading and enqueueing. In
		    order to have predicted and repeatable order of reading and enqueueing,
		    such as in prediction and evaluation mode, `num_threads` should be 1.
		  target_column: str, name to give the target column `y`.
		
		Returns:
		  Function, that has signature of ()->(dict of `features`, `target`)
		
		Raises:
		  ValueError: if `x` already contains a column with the same name as `y`, or
		    if the indexes of `x` and `y` don't match.
		  TypeError: `shuffle` is not bool.
	**/
	static public function core_pandas_input_fn(x:Dynamic, ?y:Dynamic, ?batch_size:Dynamic, ?num_epochs:Dynamic, ?shuffle:Dynamic, ?queue_capacity:Dynamic, ?num_threads:Dynamic, ?target_column:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Extract data from pandas.DataFrame for predictors.
		
		Given a DataFrame, will extract the values and cast them to float. The
		DataFrame is expected to contain values of type int, float or bool.
		
		Args:
		  data: `pandas.DataFrame` containing the data to be extracted.
		
		Returns:
		  A numpy `ndarray` of the DataFrame's values as floats.
		
		Raises:
		  ValueError: if data contains types other than int, float or bool.
	**/
	static public function extract_pandas_data(data:Dynamic):Dynamic;
	/**
		Extract data from pandas.DataFrame for labels.
		
		Args:
		  labels: `pandas.DataFrame` or `pandas.Series` containing one column of
		    labels to be extracted.
		
		Returns:
		  A numpy `ndarray` of labels from the DataFrame.
		
		Raises:
		  ValueError: if more than one column is found or type is not int, float or
		    bool.
	**/
	static public function extract_pandas_labels(labels:Dynamic):Dynamic;
	/**
		Extracts numpy matrix from pandas DataFrame.
		
		Args:
		  data: `pandas.DataFrame` containing the data to be extracted.
		
		Returns:
		  A numpy `ndarray` of the DataFrame's values.
	**/
	static public function extract_pandas_matrix(data:Dynamic):Dynamic;
	/**
		This input_fn diffs from the core version with default `shuffle`.
	**/
	static public function pandas_input_fn(x:Dynamic, ?y:Dynamic, ?batch_size:Dynamic, ?num_epochs:Dynamic, ?shuffle:Dynamic, ?queue_capacity:Dynamic, ?num_threads:Dynamic, ?target_column:Dynamic):Dynamic;
	static public var print_function : Dynamic;
}