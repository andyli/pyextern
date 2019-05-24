/* This file is generated, do not edit! */
package tensorflow.contrib.learn.python.learn.learn_io.dask_io;
@:pythonImport("tensorflow.contrib.learn.python.learn.learn_io.dask_io") extern class Dask_io_Module {
	static public var HAS_DASK : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		New dask.dataframe with values added to index of each subdataframe.
	**/
	static public function _add_to_index(df:Dynamic, start:Dynamic):Dynamic;
	/**
		Construct the new task graph and make a new dask.dataframe around it.
	**/
	static public function _construct_dask_df_with_divisions(df:Dynamic):Dynamic;
	/**
		Number of rows in each sub-dataframe.
	**/
	static public function _get_divisions(df:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
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
	static public var print_function : Dynamic;
}