/* This file is generated, do not edit! */
package tensorflow.python.data.ops.readers;
@:pythonImport("tensorflow.python.data.ops.readers") extern class Readers_Module {
	static public var _DEFAULT_READER_BUFFER_SIZE_BYTES : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Creates a dataset that reads the given files using the given reader.
		
		Args:
		  dataset_creator: A function that takes in a single file name and returns a
		    dataset.
		  filenames: A `tf.data.Dataset` containing one or more filenames.
		  num_parallel_reads: The number of parallel reads we should do.
		  name: (Optional.) A name for the tf.data operation.
		
		Returns:
		  A `Dataset` that reads data from `filenames`.
	**/
	static public function _create_dataset_reader(dataset_creator:Dynamic, filenames:Dynamic, ?num_parallel_reads:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Creates (or validates) a dataset of filenames.
		
		Args:
		  filenames: Either a list or dataset of filenames. If it is a list, it is
		    convert to a dataset. If it is a dataset, its type and shape is validated.
		  name: (Optional.) A name for the tf.data operation.
		
		Returns:
		  A dataset of filenames.
	**/
	static public function _create_or_validate_filenames_dataset(filenames:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns the type of `value` if it is a TypeSpec.
	**/
	static public function _get_type(value:Dynamic):Dynamic;
	/**
		Convert pathlib-like objects to str (__fspath__ compatibility, PEP 519).
	**/
	static public function _normalise_fspath(path:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}