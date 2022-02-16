/* This file is generated, do not edit! */
package tensorflow.python.tpu.tpu_feed;
@:pythonImport("tensorflow.python.tpu.tpu_feed") extern class Tpu_feed_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Tags appropriate XLA sharding attribute to the dequeued tensor.
		
		The sharding attribute of the dequeued tensor will be a tuple.
		
		Args:
		  tensor: The dequeued tensor on TPU.
		  dims: A list of integer describes how the tensor is partitioned.
		
		Returns:
		  The same tensor with the xla_sharding attribute.
	**/
	static public function _tag_sharding_attribute_for_dequeued_tensor(tensor:Dynamic, dims:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	/**
		Partitions or replicates the input tensor.
		
		  The ops inside this function are placed on the host side.
		
		Args:
		  tensor: The input tensor which will be partitioned or replicated.
		  dims: A list of integer describes how to partition the input tensor.
		
		Returns:
		  An iterator of `Tensor`s or a list of partitioned tensors.
	**/
	static public function partition_or_replicate_on_host(tensor:Dynamic, dims:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Tags appropriate XLA sharding attribute to the dequeued tensors.
		
		Args:
		  dequeues: A list of dequeued tensors on TPU.
		  dims: A list of integer describes how the tensor is partitioned.
		
		Returns:
		  The same dequeues with appropriate xla_sharding attribute.
	**/
	static public function tag_sharding_attribute_for_dequeued_tensors(dequeues:Dynamic, dims:Dynamic):Dynamic;
}