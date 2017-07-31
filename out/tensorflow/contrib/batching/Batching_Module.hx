/* This file is generated, do not edit! */
package tensorflow.contrib.batching;
@:pythonImport("tensorflow.contrib.batching") extern class Batching_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __path__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Batches the computation done by the decorated function.
		
		So, for example, in the following code
		
		```
		@batch_function(1, 2, 3)
		def layer(a):
		  return tf.matmul(a, a)
		
		b = layer(w)
		```
		
		if more than one session.run call is simultaneously trying to compute `b`
		the values of `w` will be gathered, non-deterministically concatenated
		along the first axis, and only one thread will run the computation. See the
		documentation of the `Batch` op for more details.
		
		Assumes that all arguments of the decorated function are Tensors which will
		be batched along their first dimension.
		
		SparseTensor is not supported. The return value of the decorated function
		must be a Tensor or a list/tuple of Tensors.
		
		Args:
		  num_batch_threads: Number of scheduling threads for processing batches
		   of work. Determines the number of batches processed in parallel.
		  max_batch_size: Batch sizes will never be bigger than this.
		  batch_timeout_micros: Maximum number of microseconds to wait before
		   outputting an incomplete batch.
		  allowed_batch_sizes: Optional list of allowed batch sizes. If left empty,
		   does nothing. Otherwise, supplies a list of batch sizes, causing the op
		   to pad batches up to one of those sizes. The entries must increase
		   monotonically, and the final entry must equal max_batch_size.
		  grad_timeout_micros: The timeout to use for the gradient. See the
		   documentation of the unbatch op for more details. Defaults to 60s.
		  unbatch_timeout_micros: The timeout to use for unbatching. See the
		   documentation of the unbatch op for more details. Defaults to 60s.
		
		Returns:
		  The decorated function will return the unbatched computation output Tensors.
	**/
	static public function batch_function(num_batch_threads:Dynamic, max_batch_size:Dynamic, batch_timeout_micros:Dynamic, ?allowed_batch_sizes:Dynamic, ?grad_timeout_micros:Dynamic, ?unbatch_timeout_micros:Dynamic):Dynamic;
}