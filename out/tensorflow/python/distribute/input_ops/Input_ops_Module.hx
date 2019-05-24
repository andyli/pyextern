/* This file is generated, do not edit! */
package tensorflow.python.distribute.input_ops;
@:pythonImport("tensorflow.python.distribute.input_ops") extern class Input_ops_Module {
	static public var _READER_DATASET_OPS : Dynamic;
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
		Shard the input pipeline by sharding the underlying list of files.
		
		Args:
		  dataset: A `tf.data.Dataset` instance, typically the result of a bunch of
		    dataset transformations.
		  num_shards: A `tf.int64` scalar `tf.Tensor`, representing the number of
		      shards operating in parallel. Same usage as in
		      `tf.data.experimental.filter_for_shard`.
		  index: A `tf.int64` scalar `tf.Tensor`, representing the worker index.
		    Same usage as in `Dataset.shard`.
		
		Returns:
		  A modified `Dataset` obtained by updating the pipeline sharded by the
		  files. The input dataset will be returned if we cannot automatically
		  determine a good way to shard the input dataset.
	**/
	static public function auto_shard_dataset(dataset:Dynamic, num_shards:Dynamic, index:Dynamic):Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
}