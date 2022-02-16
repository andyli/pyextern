/* This file is generated, do not edit! */
package tensorflow.python.training.saving.functional_saver;
@:pythonImport("tensorflow.python.training.saving.functional_saver") extern class Functional_saver_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
	/**
		Append sharding information to a filename.
		
		Args:
		  filename_tensor: A string tensor.
		  shard: Integer.  The shard for the filename.
		  num_shards: An int Tensor for the number of shards.
		
		Returns:
		  A string tensor.
	**/
	static public function sharded_filename(filename_tensor:Dynamic, shard:Dynamic, num_shards:Dynamic):Dynamic;
}