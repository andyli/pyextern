/* This file is generated, do not edit! */
package tensorflow.python.keras.distribute.distributed_file_utils;
@:pythonImport("tensorflow.python.keras.distribute.distributed_file_utils") extern class Distributed_file_utils_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _get_base_dirpath(strategy:Dynamic):Dynamic;
	static public function _get_temp_dir(dirpath:Dynamic, strategy:Dynamic):Dynamic;
	static public function _is_temp_dir(dirpath:Dynamic, strategy:Dynamic):Dynamic;
	/**
		Removes the temp path for file after writing is finished.
		
		Args:
		  filepath: Original filepath that would be used without distribution.
		  strategy: The tf.distribute strategy object currently used.
	**/
	static public function remove_temp_dir_with_filepath(filepath:Dynamic, strategy:Dynamic):Dynamic;
	/**
		Removes the temp path after writing is finished.
		
		Args:
		  dirpath: Original dirpath that would be used without distribution.
		  strategy: The tf.distribute strategy object currently used.
	**/
	static public function remove_temp_dirpath(dirpath:Dynamic, strategy:Dynamic):Dynamic;
	/**
		Returns the writing dir that should be used to save file distributedly.
		
		`dirpath` would be created if it doesn't exist.
		
		Args:
		  dirpath: Original dirpath that would be used without distribution.
		  strategy: The tf.distribute strategy object currently used.
		
		Returns:
		  The writing dir path that should be used to save with distribution.
	**/
	static public function write_dirpath(dirpath:Dynamic, strategy:Dynamic):Dynamic;
	/**
		Returns the writing file path to be used to save file distributedly.
		
		Directory to contain `filepath` would be created if it doesn't exist.
		
		Args:
		  filepath: Original filepath that would be used without distribution.
		  strategy: The tf.distribute strategy object currently used.
		
		Returns:
		  The writing filepath that should be used to save file with distribution.
	**/
	static public function write_filepath(filepath:Dynamic, strategy:Dynamic):Dynamic;
}