/* This file is generated, do not edit! */
package torch.distributed.algorithms.ddp_comm_hooks.powerSGD_hook;
@:pythonImport("torch.distributed.algorithms.ddp_comm_hooks.powerSGD_hook") extern class PowerSGD_hook_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Applies Gram-Schmidt procedure to orthogonalize a given 2D tensor.
		If epsilon is 0, this is equivalent to `torch.qr(matrix, out=(matrix, _))`,
	**/
	static public function _orthogonalize(matrix:Dynamic, ?epsilon:Dynamic):Dynamic;
	/**
		Report compression stats at the frequency of `compression_stats_logging_frequency` specified in PowerSGD state.
	**/
	static public function _report_compression_stats(bucket:Dynamic, state:Dynamic):Dynamic;
	/**
		Returns a recommendation as to whether the 2D tensor described by the arguments is worth compressing,
		including statistics describing the expected savings from compression.  We consider a tensor worth
		compressing when ``min_compression_rate`` < uncompressed size / compressed size, where
		uncompressed size = ``num_rows`` * ``num_cols``,
		and compressed size = (``num_rows`` + ``num_cols``) * ``matrix_approximation_rank``.
		
		The result of this function is a tuple of the form (compression_recommendation, uncompressed_el_count, compressed_el_count), where:
		
		compresion_recommendation is true if the tensor is worth compressing, and false otherwise (see above);
		
		uncompressed_el_count is the uncompressed element count, i.e. ``num_rows`` * ``num_cols``; and,
		
		compress_el_count is the element count after compression, i.e. (``num_rows`` + ``num_cols``) * ``matrix_approximation_rank``.
	**/
	static public function _should_compress(num_rows:Dynamic, num_cols:Dynamic, matrix_approximation_rank:Dynamic, min_compression_rate:Dynamic):Dynamic;
	/**
		This DDP communication hook implements a simplified PowerSGD gradient compression
		algorithm described in the `paper <https://arxiv.org/abs/1905.13727>`_.
		This variant does not compress the gradients layer by layer,
		but instead compresses the flattened input tensor that batches all the gradients.
		Therefore, it is **faster** than :meth:`powerSGD_hook`,
		but usually results in a **much lower accuracy**, unless ``matrix_approximation_rank`` is 1.
		
		.. warning ::
		    Increasing ``matrix_approximation_rank`` here may not necessarily increase the accuracy,
		    because batching per-parameter tensors without column/row alignment can destroy low-rank structure.
		    Therefore, the user should always consider :meth:`powerSGD_hook` first,
		    and only consider this variant when a satisfactory accuracy can be achieved when ``matrix_approximation_rank`` is 1.
		
		Once gradient tensors are aggregated across all workers, this hook applies
		compression as follows:
		
		1. Views the input flattened 1D gradient tensor as a square-shaped tensor M with 0 paddings;
		
		2. Creates two low-rank tensors P and Q for decomposing M, such that M = PQ^T, where Q is initialized from a standard normal distribution and orthogonalized;
		
		3. Computes P, which is equal to MQ;
		
		4. Allreduces P;
		
		5. Orthogonalizes P;
		
		6. Computes Q, which is approximately equal to M^TP;
		
		7. Allreduces Q;
		
		8. Computes M, which is approximately equal to PQ^T.
		
		9. Truncates the input tensor to the original length.
		
		Note that this communication hook enforces vanilla allreduce for the first ``state.start_powerSGD_iter`` iterations.
		This not only gives the user more control over the tradeoff between speedup and accuracy,
		but also helps abstract away some complexity of the internal optimization of DDP for future communication hook developers.
		
		Args:
		    state (PowerSGDState): State information to configure the compression rate and support error feedback, warm start, etc.
		        To tune the compression configs, mainly need to tune ``matrix_approximation_rank`` and ``start_powerSGD_iter``.
		    bucket (dist.GradBucket): Bucket that stores a 1D flattened gradient tensor that batches multiple per-variable tensors.
		        Note that since DDP comm hook only supports single process single device mode,
		        only exactly one tensor is stored in this bucket.
		
		Returns:
		    Future handler of the communication, which updates the gradients in place.
		
		Example::
		    >>> state = PowerSGDState(process_group=process_group, matrix_approximation_rank=1)
		    >>> ddp_model.register_comm_hook(state, batched_powerSGD_hook)
	**/
	static public function batched_powerSGD_hook(state:Dynamic, bucket:Dynamic):Dynamic;
	/**
		This DDP communication hook implements PowerSGD gradient compression
		algorithm described in the `paper <https://arxiv.org/abs/1905.13727>`_.
		Once gradient tensors are aggregated across all workers, this hook applies
		compression as follows:
		
		1. Views the input flattened 1D gradient tensor as a list of per-parameter tensors, and divides all the tensors into two groups:
		
		    1.1 The tensors that should be compressed before allreduce, because the compression can give enough saving in bandwidth.
		
		    1.2 Rest of the tensors will be directly allreduced without compression, including all the vector tensors (for biases).
		
		2. Handles uncompressed tensors:
		
		    2.1. Allocate contiguous memory for those uncompressed tensors, and allreduces all the uncompressed tensors as a batch, without compression;
		
		    2.2. Copies the individual uncompressed tensors from the contiguous memory back to the input tensor.
		
		3. Handles the tensors that should be compressed by PowerSGD compression:
		
		    3.1. For each tensor M, creates two low-rank tensors P and Q for decomposing M,
		    such that M = PQ^T, where Q is initialized from a standard normal distribution and orthogonalized;
		
		    3.2. Computes each P in Ps, which is equal to MQ;
		
		    3.3. Allreduces Ps as a batch;
		
		    3.4. Orthogonalizes each P in Ps;
		
		    3.5. Computes each Q in Qs, which is approximately equal to M^TP;
		
		    3.6. Allreduces Qs as a batch;
		
		    3.7. Computes each M among all the compressed tensors, which is approximately equal to PQ^T.
		
		Note that this communication hook enforces vanilla allreduce for the first ``state.start_powerSGD_iter`` iterations.
		This not only gives the user more control over the tradeoff between speedup and accuracy,
		but also helps abstract away some complexity of the internal optimization of DDP for future communication hook developers.
		
		Args:
		    state (PowerSGDState): State information to configure the compression rate and support error feedback, warm start, etc.
		        To tune the compression configs, mainly need to tune ``matrix_approximation_rank``, ``start_powerSGD_iter``
		        and ``min_compression_rate``.
		    bucket (dist.GradBucket): Bucket that stores a 1D flattened gradient tensor that batches multiple per-variable tensors.
		        Note that since DDP comm hook only supports single process single device mode,
		        only exactly one tensor is stored in this bucket.
		
		Returns:
		    Future handler of the communication, which updates the gradients in place.
		
		Example::
		    >>> state = PowerSGDState(process_group=process_group, matrix_approximation_rank=1,
		                              start_powerSGD_iter=10, min_compression_rate=0.5)
		    >>> ddp_model.register_comm_hook(state, powerSGD_hook)
	**/
	static public function powerSGD_hook(state:Dynamic, bucket:Dynamic):Dynamic;
}