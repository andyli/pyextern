/* This file is generated, do not edit! */
package tensorflow.contrib.learn.python.learn.learn_io.data_feeder;
@:pythonImport("tensorflow.contrib.learn.python.learn.learn_io.data_feeder") extern class Data_feeder_Module {
	static public var HAS_DASK : Dynamic;
	static public var HAS_PANDAS : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Accesses an element from collection, using integer location based indexing.
		
		Args:
		  data: array-like. The collection to access
		  iloc: `int` or `list` of `int`s. Location(s) to access in `collection`
		
		Returns:
		  The element of `a` found at location(s) `iloc`.
	**/
	static public function _access(data:Dynamic, iloc:Dynamic):Dynamic;
	static public function _batch_data(x:Dynamic, ?batch_size:Dynamic):Dynamic;
	static public function _check_dtype(dtype:Dynamic):Dynamic;
	/**
		Filter data types into acceptable format.
	**/
	static public function _data_type_filter(x:Dynamic, y:Dynamic):Dynamic;
	/**
		Returns shape for input and output of the data feeder.
	**/
	static public function _get_in_out_shape(x_shape:Dynamic, y_shape:Dynamic, n_classes:Dynamic, ?batch_size:Dynamic):Dynamic;
	static public function _is_iterable(x:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Checks array on dtype and converts it if different. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Please convert numpy dtypes explicitly.
		
		Args:
		  array: Input array.
		  dtype: Expected dtype.
		
		Returns:
		  Original array or converted.
	**/
	static public function check_array(array:Dynamic, dtype:Dynamic):Dynamic;
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
		Extract data from dask.Series or dask.DataFrame for predictors. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Please feed input to tf.data to support dask.
		
		Given a distributed dask.DataFrame or dask.Series containing columns or names
		for one or more predictors, this operation returns a single dask.DataFrame or
		dask.Series that can be iterated over.
		
		Args:
		  data: A distributed dask.DataFrame or dask.Series.
		
		Returns:
		  A dask.DataFrame or dask.Series that can be iterated over.
		  If the supplied argument is neither a dask.DataFrame nor a dask.Series this
		  operation returns it without modification.
	**/
	static public function extract_dask_data(data:Dynamic):Dynamic;
	/**
		Extract data from dask.Series or dask.DataFrame for labels. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Please feed input to tf.data to support dask.
		
		Given a distributed dask.DataFrame or dask.Series containing exactly one
		column or name, this operation returns a single dask.DataFrame or dask.Series
		that can be iterated over.
		
		Args:
		  labels: A distributed dask.DataFrame or dask.Series with exactly one
		          column or name.
		
		Returns:
		  A dask.DataFrame or dask.Series that can be iterated over.
		  If the supplied argument is neither a dask.DataFrame nor a dask.Series this
		  operation returns it without modification.
		
		Raises:
		  ValueError: If the supplied dask.DataFrame contains more than one
		              column or the supplied dask.Series contains more than
		              one name.
	**/
	static public function extract_dask_labels(labels:Dynamic):Dynamic;
	/**
		Extract data from pandas.DataFrame for predictors. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Please access pandas data directly.
		
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
		Extract data from pandas.DataFrame for labels. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Please access pandas data directly.
		
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
		Extracts numpy matrix from pandas DataFrame. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Please access pandas data directly.
		
		Args:
		  data: `pandas.DataFrame` containing the data to be extracted.
		
		Returns:
		  A numpy `ndarray` of the DataFrame's values.
	**/
	static public function extract_pandas_matrix(data:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Returns an iterable for feeding into predict step. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Please use tensorflow/transform or tf.data.
		
		Args:
		  x: numpy, pandas, Dask array or dictionary of aforementioned. Also supports
		    iterable.
		  batch_size: Size of batches to split data into. If `None`, returns one
		    batch of full size.
		
		Returns:
		  List or iterator (or dictionary thereof) of parts of data to predict on.
		
		Raises:
		  ValueError: if `batch_size` <= 0.
	**/
	static public function setup_predict_data_feeder(x:Dynamic, ?batch_size:Dynamic):Dynamic;
	/**
		Sets up processor iterable. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Please use tensorflow/transform or tf.data.
		
		Args:
		  x: numpy, pandas or iterable.
		
		Returns:
		  Iterable of data to process.
	**/
	static public function setup_processor_data_feeder(x:Dynamic):Dynamic;
	/**
		Create data feeder, to sample inputs from dataset. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Please use tensorflow/transform or tf.data.
		
		If `x` and `y` are iterators, use `StreamingDataFeeder`.
		
		Args:
		  x: numpy, pandas or Dask matrix or dictionary of aforementioned. Also
		    supports iterables.
		  y: numpy, pandas or Dask array or dictionary of aforementioned. Also
		    supports
		    iterables.
		  n_classes: number of classes. Must be None or same type as y. In case, `y`
		    is `dict`
		    (or iterable which returns dict) such that `n_classes[key] = n_classes for
		      y[key]`
		  batch_size: size to split data into parts. Must be >= 1.
		  shuffle: Whether to shuffle the inputs.
		  epochs: Number of epochs to run.
		
		Returns:
		  DataFeeder object that returns training data.
		
		Raises:
		  ValueError: if one of `x` and `y` is iterable and the other is not.
	**/
	static public function setup_train_data_feeder(x:Dynamic, y:Dynamic, n_classes:Dynamic, ?batch_size:Dynamic, ?shuffle:Dynamic, ?epochs:Dynamic):Dynamic;
}