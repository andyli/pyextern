/* This file is generated, do not edit! */
package torch.distributed.algorithms.ddp_comm_hooks.quantization_hooks;
@:pythonImport("torch.distributed.algorithms.ddp_comm_hooks.quantization_hooks") extern class Quantization_hooks_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _dequantize_per_channel_cuda(y:Dynamic, scale:Dynamic, zero_point:Dynamic):Dynamic;
	static public function _dequantize_per_tensor_cuda(y:Dynamic, scale:Dynamic, zero_point:Dynamic):Dynamic;
	static public function _get_allgather_out_list(all_gather_in_list:Dynamic, world_size:Dynamic):Dynamic;
	static public function _quantize_per_channel_cuda(x:Dynamic, scale:Dynamic, zero_point:Dynamic):Dynamic;
	static public function _quantize_per_tensor_cuda(x:Dynamic, scale:Dynamic, zero_point:Dynamic):Dynamic;
	/**
		Applies the ``torch.quantize_per_channel`` logic to DDP using ``allgather``
		protocol. Compared to pertensor, the main motivation of perchannel is
		for considerably large tensors such as a tensor that contains 6 million
		elements quantizing per a bucket size of 512 (or 128) elements may significantly
		increase the resolution.
		
		It first splits ``GradBucket`` tensor into multiple chunks (channels) of ``bucket_size``
		elements. Then, workers allgather the scales and zero points of their own
		``GradBucket`` prior to the quantization. After all workers have that information,
		the first ``then`` callback called ``quantize_and_allgather`` quantizes worker's
		own gradient tensor, and uses ``allgather`` to communicate these accross all workers.
		The final ``then`` callback called ``dequantize_and_aggregate``, dequantizes, flattens, and
		aggregates each quantized gradient tensor locally and returns the mean.
		
		.. warning ::
		    This is experimental, and uses ``allgather`` protocol which is considerably slower than
		    ``allreduce`` protocol. It works only with flattened grads.
		
		Example::
		    >>> ddp_model.register_comm_hook(process_group, quantization_perchannel_hook)
	**/
	static public function quantization_perchannel_hook(process_group:Dynamic, bucket:Dynamic, ?bucket_size:Dynamic):Dynamic;
	/**
		Applies the ``torch.quantize_per_tensor`` logic to DDP using ``allgather``
		protocol. Workers first allgather the scale and zero point of their own
		``GradBucket`` prior to the quantization. After all workers have that information,
		the first ``then`` callback called ``quantize_and_allgather`` quantizes worker's
		own gradient tensor, and uses ``allgather`` to communicate these accross all workers.
		The final ``then`` callback called ``dequantize_and_aggregate``, dequantizes and
		aggregates each quantized gradient tensor locally and returns the mean.
		
		.. warning ::
		    This is experimental, and uses ``allgather`` protocol which is considerably slower than
		    ``allreduce`` protocol. It works only with flattened grads.
		
		Example::
		    >>> ddp_model.register_comm_hook(process_group, quantization_pertensor_hook)
	**/
	static public function quantization_pertensor_hook(process_group:Dynamic, bucket:Dynamic):Dynamic;
}