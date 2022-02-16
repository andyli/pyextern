/* This file is generated, do not edit! */
package tensorflow.python.distribute.input_ops;
@:pythonImport("tensorflow.python.distribute.input_ops") extern class Input_ops_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Returns a cloned version of `dataset`.
	**/
	static public function _clone_dataset(dataset:Dynamic):Dynamic;
	/**
		Helper method that recursively clones `op_to_clone`.
		
		Args:
		  op_to_clone: The op we want to clone.
		  variant_tensor_ops: A list of ops that we have to clone along the way.
		
		Returns:
		  A dictionary mapping old_ops to new_ops created. Includes op_to_clone
		  as a key.
	**/
	static public function _clone_helper(op_to_clone:Dynamic, variant_tensor_ops:Dynamic):Dynamic;
	static public function _get_op_def(op:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Shard the input pipeline by sharding the underlying list of files.
		
		Args:
		  dataset: A `tf.data.Dataset` instance, typically the result of a bunch of
		    dataset transformations.
		  num_shards: A `tf.int64` scalar `tf.Tensor`, representing the number of
		      shards operating in parallel. Same usage as in `tf.data.Dataset.shard`.
		  index: A `tf.int64` scalar `tf.Tensor`, representing the worker index.
		    Same usage as in `tf.data.Dataset.shard`.
		  num_replicas_in_sync: An integer representing the total number of replicas
		    across all workers. This is used in the rewrite when sharding by data.
		
		Returns:
		  A modified `Dataset` obtained by updating the pipeline sharded by the
		  files. The input dataset will be returned if we cannot automatically
		  determine a good way to shard the input dataset.
	**/
	static public function auto_shard_dataset(dataset:Dynamic, num_shards:Dynamic, index:Dynamic, ?num_replicas_in_sync:Dynamic):Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
}