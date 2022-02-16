/* This file is generated, do not edit! */
package tensorflow.python.data.experimental.ops.prefetching_ops;
@:pythonImport("tensorflow.python.data.experimental.ops.prefetching_ops") extern class Prefetching_ops_Module {
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
		A transformation that copies dataset elements to the given `target_device`.
		
		Args:
		  target_device: The name of a device to which elements will be copied.
		  source_device: The original device on which `input_dataset` will be placed.
		
		Returns:
		  A `Dataset` transformation function, which can be passed to
		  `tf.data.Dataset.apply`.
	**/
	static public function copy_to_device(target_device:Dynamic, ?source_device:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Maps `map_func` across the elements of this dataset.
		
		NOTE: This is a highly experimental version of `tf.data.Dataset.map` that runs
		`map_func` on GPU. It must be used after applying the
		`tf.data.experimental.copy_to_device` transformation with a GPU device
		argument.
		
		Args:
		  map_func: A function mapping a nested structure of tensors (having shapes
		    and types defined by `self.output_shapes` and `self.output_types`) to
		    another nested structure of tensors.
		
		Returns:
		  A `Dataset` transformation function, which can be passed to
		  `tf.data.Dataset.apply`.
	**/
	static public function map_on_gpu(map_func:Dynamic):Dynamic;
	/**
		A transformation that prefetches dataset values to the given `device`.
		
		NOTE: Although the transformation creates a `tf.data.Dataset`, the
		transformation must be the final `Dataset` in the input pipeline.
		
		For example,
		>>> dataset = tf.data.Dataset.from_tensor_slices([1, 2, 3])
		>>> dataset = dataset.apply(tf.data.experimental.prefetch_to_device("/cpu:0"))
		>>> for element in dataset:
		...   print(f'Tensor {element} is on device {element.device}')
		Tensor 1 is on device /job:localhost/replica:0/task:0/device:CPU:0
		Tensor 2 is on device /job:localhost/replica:0/task:0/device:CPU:0
		Tensor 3 is on device /job:localhost/replica:0/task:0/device:CPU:0
		
		Args:
		  device: A string. The name of a device to which elements will be prefetched.
		  buffer_size: (Optional.) The number of elements to buffer on `device`.
		    Defaults to an automatically chosen value.
		
		Returns:
		  A `Dataset` transformation function, which can be passed to
		  `tf.data.Dataset.apply`.
	**/
	static public function prefetch_to_device(device:Dynamic, ?buffer_size:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}