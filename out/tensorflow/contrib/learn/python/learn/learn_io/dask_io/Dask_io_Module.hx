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
	static public var division : Dynamic;
	/**
		Extract data from dask.Series or dask.DataFrame for predictors.
	**/
	static public function extract_dask_data(data:Dynamic):Dynamic;
	/**
		Extract data from dask.Series for labels.
	**/
	static public function extract_dask_labels(labels:Dynamic):Dynamic;
	static public var print_function : Dynamic;
}