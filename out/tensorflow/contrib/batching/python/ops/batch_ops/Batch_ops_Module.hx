/* This file is generated, do not edit! */
package tensorflow.contrib.batching.python.ops.batch_ops;
@:pythonImport("tensorflow.contrib.batching.python.ops.batch_ops") extern class Batch_ops_Module {
	/**
		Gradient for batch op.
	**/
	static public function _BatchGrad(op:Dynamic, ?out_grads:python.VarArgs<Dynamic>):Dynamic;
	static public function _UnbatchGrad(op:Dynamic, grad:Dynamic):Dynamic;
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
		Batches all input tensors nondeterministically.
		
		When many instances of this Op are being run concurrently with the same
		container/shared_name in the same device, some will output zero-shaped Tensors
		and others will output Tensors of size up to max_batch_size.
		
		All Tensors in in_tensors are batched together (so, for example, labels and
		features should be batched with a single instance of this operation.
		
		Each invocation of batch emits an `id` scalar which will be used to identify
		this particular invocation when doing unbatch or its gradient.
		
		Each op which emits a non-empty batch will also emit a non-empty batch_index
		Tensor, which, is a [K, 3] matrix where each row contains the invocation's id,
		start, and length of elements of each set of Tensors present in batched_tensors.
		
		Batched tensors are concatenated along the first dimension, and all tensors in
		in_tensors must have the first dimension of the same size.
		
		in_tensors: The tensors to be batched.
		num_batch_threads: Number of scheduling threads for processing batches of work.
		 Determines the number of batches processed in parallel.
		max_batch_size: Batch sizes will never be bigger than this.
		batch_timeout_micros: Maximum number of microseconds to wait before outputting
		 an incomplete batch.
		allowed_batch_sizes: Optional list of allowed batch sizes. If left empty, does
		 nothing. Otherwise, supplies a list of batch sizes, causing the op to pad
		 batches up to one of those sizes. The entries must increase monotonically, and
		 the final entry must equal max_batch_size.
		grad_timeout_micros: The timeout to use for the gradient. See Unbatch.
		batched_tensors: Either empty tensors or a batch of concatenated Tensors.
		batch_index: If out_tensors is non-empty, has information to invert it.
		container: Controls the scope of sharing of this batch.
		id: always contains a scalar with a unique ID for this invocation of Batch.
		shared_name: Concurrently running instances of batch in the same device with the
		 same container and shared_name will batch their elements together. If left
		 empty, the op name will be used as the shared name.
		T: the types of tensors to be batched.
		
		Args:
		  in_tensors: A list of `Tensor` objects.
		  num_batch_threads: An `int`.
		  max_batch_size: An `int`.
		  batch_timeout_micros: An `int`.
		  grad_timeout_micros: An `int`.
		  max_enqueued_batches: An optional `int`. Defaults to `10`.
		  allowed_batch_sizes: An optional list of `ints`. Defaults to `[]`.
		  container: An optional `string`. Defaults to `""`.
		  shared_name: An optional `string`. Defaults to `""`.
		  batching_queue: An optional `string`. Defaults to `""`.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (batched_tensors, batch_index, id).
		
		  batched_tensors: A list of `Tensor` objects. Has the same type as `in_tensors`.
		  batch_index: A `Tensor` of type `int64`.
		  id: A `Tensor` of type `int64`.
	**/
	static public function batch(in_tensors:Dynamic, num_batch_threads:Dynamic, max_batch_size:Dynamic, batch_timeout_micros:Dynamic, grad_timeout_micros:Dynamic, ?max_enqueued_batches:Dynamic, ?allowed_batch_sizes:Dynamic, ?container:Dynamic, ?shared_name:Dynamic, ?batching_queue:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function batch
	**/
	static public function batch_eager_fallback(in_tensors:Dynamic, num_batch_threads:Dynamic, max_batch_size:Dynamic, batch_timeout_micros:Dynamic, grad_timeout_micros:Dynamic, ?max_enqueued_batches:Dynamic, ?allowed_batch_sizes:Dynamic, ?container:Dynamic, ?shared_name:Dynamic, ?batching_queue:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Batches the computation done by the decorated function.
		
		So, for example, in the following code
		
		```python
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
		  max_enqueued_batches: The maximum depth of the batch queue. Defaults to 10.
		
		Returns:
		  The decorated function will return the unbatched computation output Tensors.
	**/
	static public function batch_function(num_batch_threads:Dynamic, max_batch_size:Dynamic, batch_timeout_micros:Dynamic, ?allowed_batch_sizes:Dynamic, ?max_enqueued_batches:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function batch_function
	**/
	static public function batch_function_eager_fallback(in_tensors:Dynamic, captured_tensors:Dynamic, f:Dynamic, num_batch_threads:Dynamic, max_batch_size:Dynamic, batch_timeout_micros:Dynamic, Tout:Dynamic, ?max_enqueued_batches:Dynamic, ?allowed_batch_sizes:Dynamic, ?container:Dynamic, ?shared_name:Dynamic, ?batching_queue:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Batches the computation done by the decorated function.
		
		This is the older version of batch_function(). Please use the former instead
		of this.
		
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
		  max_enqueued_batches: The maximum depth of the batch queue. Defaults to 10.
		
		Returns:
		  The decorated function will return the unbatched computation output Tensors.
	**/
	static public function batch_function_v1(num_batch_threads:Dynamic, max_batch_size:Dynamic, batch_timeout_micros:Dynamic, ?allowed_batch_sizes:Dynamic, ?grad_timeout_micros:Dynamic, ?unbatch_timeout_micros:Dynamic, ?max_enqueued_batches:Dynamic):Dynamic;
	/**
		Decorator for marking endpoints deprecated.
		
		This decorator does not print deprecation messages.
		TODO(annarev): eventually start printing deprecation warnings when
		@deprecation_endpoints decorator is added.
		
		Args:
		  *args: Deprecated endpoint names.
		
		Returns:
		  A function that takes symbol as an argument and adds
		  _tf_deprecated_api_names to that symbol.
		  _tf_deprecated_api_names would be set to a list of deprecated
		  endpoint names for the symbol.
	**/
	static public function deprecated_endpoints(?args:python.VarArgs<Dynamic>):Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Reverses the operation of Batch for a single output Tensor.
		
		An instance of Unbatch either receives an empty batched_tensor, in which case it
		asynchronously waits until the values become available from a concurrently
		running instance of Unbatch with the same container and shared_name, or receives
		a non-empty batched_tensor in which case it finalizes all other concurrently
		running instances and outputs its own element from the batch.
		
		batched_tensor: The possibly transformed output of Batch. The size of the first
		 dimension should remain unchanged by the transformations for the operation to
		 work.
		batch_index: The matching batch_index obtained from Batch.
		id: The id scalar emitted by Batch.
		unbatched_tensor: The Tensor corresponding to this execution.
		timeout_micros: Maximum amount of time (in microseconds) to wait to receive the
		 batched input tensor associated with a given invocation of the op.
		container: Container to control resource sharing.
		shared_name: Instances of Unbatch with the same container and shared_name are
		 assumed to possibly belong to the same batch. If left empty, the op name will
		 be used as the shared name.
		
		Args:
		  batched_tensor: A `Tensor`.
		  batch_index: A `Tensor` of type `int64`.
		  id: A `Tensor` of type `int64`.
		  timeout_micros: An `int`.
		  container: An optional `string`. Defaults to `""`.
		  shared_name: An optional `string`. Defaults to `""`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `batched_tensor`.
	**/
	static public function unbatch(batched_tensor:Dynamic, batch_index:Dynamic, id:Dynamic, timeout_micros:Dynamic, ?container:Dynamic, ?shared_name:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function unbatch
	**/
	static public function unbatch_eager_fallback(batched_tensor:Dynamic, batch_index:Dynamic, id:Dynamic, timeout_micros:Dynamic, ?container:Dynamic, ?shared_name:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Gradient of Unbatch.
		
		Acts like Batch but using the given batch_index index of batching things as they
		become available. This ensures that the gradients are propagated back in the
		same session which did the forward pass.
		
		original_input: The input to the Unbatch operation this is the gradient of.
		batch_index: The batch_index given to the Unbatch operation this is the gradient
		of.
		grad: The downstream gradient.
		id: The id scalar emitted by Batch.
		batched_grad: The return value, either an empty tensor or the batched gradient.
		container: Container to control resource sharing.
		shared_name: Instances of UnbatchGrad with the same container and shared_name
		 are assumed to possibly belong to the same batch. If left empty, the op name
		 will be used as the shared name.
		
		Args:
		  original_input: A `Tensor`.
		  batch_index: A `Tensor` of type `int64`.
		  grad: A `Tensor`. Must have the same type as `original_input`.
		  id: A `Tensor` of type `int64`.
		  container: An optional `string`. Defaults to `""`.
		  shared_name: An optional `string`. Defaults to `""`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `original_input`.
	**/
	static public function unbatch_grad(original_input:Dynamic, batch_index:Dynamic, grad:Dynamic, id:Dynamic, ?container:Dynamic, ?shared_name:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function unbatch_grad
	**/
	static public function unbatch_grad_eager_fallback(original_input:Dynamic, batch_index:Dynamic, grad:Dynamic, id:Dynamic, ?container:Dynamic, ?shared_name:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
}