/* This file is generated, do not edit! */
package torch.fx.experimental.fx_acc.acc_ops;
@:pythonImport("torch.fx.experimental.fx_acc.acc_ops") extern class Acc_ops_Module {
	static public function List(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Optional(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public function Sequence(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Extract a TensorMetadata NamedTuple describing `result`.
	**/
	static public function _extract_tensor_metadata(result:Dynamic):Dynamic;
	static public function abs(input:Dynamic):Dynamic;
	static public function acos(input:Dynamic):Dynamic;
	static public function adaptive_avg_pool2d(input:Dynamic, output_size:Dynamic):Dynamic;
	static public function add(input:Dynamic, other:Dynamic):Dynamic;
	static public function add_maximum_minimum_mapper(node:Dynamic, mod:Dynamic):Dynamic;
	static public function add_relu_unfuse_mapper(node:Dynamic, mod:Dynamic):Dynamic;
	static public function add_sum_mapper(node:Dynamic, mod:Dynamic):Dynamic;
	/**
		Mapping from torch.addmm to acc_ops.mm -> acc_ops.add, if alpha or beta is not 1
		then we also insert acc_ops.mul to the right place.
	**/
	static public function addmm_mapper(node:Dynamic, _:Dynamic):Dynamic;
	/**
		Map torch.argmin or torch.argmax to acc_ops.flatten (depend on dim) + acc_ops.topk
		+ acc_ops.getitem + acc_ops.squeeze (depends on keepdim).
	**/
	static public function argmin_max_mapper_impl(node:Dynamic, largest:Dynamic):Dynamic;
	static public function asin(input:Dynamic):Dynamic;
	static public function atan(input:Dynamic):Dynamic;
	static public function avg_pool2d(input:Dynamic, kernel_size:Dynamic, stride:Dynamic, padding:Dynamic, ceil_mode:Dynamic, count_include_pad:Dynamic, divisor_override:Dynamic):Dynamic;
	static public function batch_norm(input:Dynamic, running_mean:Dynamic, running_var:Dynamic, weight:Dynamic, bias:Dynamic, training:Dynamic, momentum:Dynamic, eps:Dynamic):Dynamic;
	/**
		Cast a value to a type.
		
		This returns the value unchanged.  To the type checker this
		signals that the return value has the designated type, but at
		runtime we intentionally don't check anything (we want this
		to be as fast as possible).
	**/
	@:native("cast")
	static public function _cast(typ:Dynamic, val:Dynamic):Dynamic;
	static public function cat(tensors:Dynamic, dim:Dynamic):Dynamic;
	static public function ceil(input:Dynamic):Dynamic;
	static public function clamp(input:Dynamic, min:Dynamic, max:Dynamic):Dynamic;
	static public function contiguous(input:Dynamic):Dynamic;
	static public function conv2d(input:Dynamic, weight:Dynamic, bias:Dynamic, stride:Dynamic, padding:Dynamic, dilation:Dynamic, groups:Dynamic):Dynamic;
	static public function cos(input:Dynamic):Dynamic;
	static public function cosh(input:Dynamic):Dynamic;
	static public function custom_dequantize_mapper(node:Dynamic, mod:Dynamic):Dynamic;
	/**
		Custom function for mapping a call_function getattr to other ops. Currently only
		supports loading a getattr called on a torch.Tensor with attr name "shape", which is
		supported by mapping it to acc_ops.size().
	**/
	static public function custom_getattr_mapper(node:Dynamic, _:Dynamic):Dynamic;
	static public function custom_narrow_mapper(node:Dynamic, mod:Dynamic):Dynamic;
	/**
		For Tensor.reshape node, args could be (input, 1, 2, 3) or (input, (1, 2, 3)).
		Here we do some special handling with the `shape` arg in order to map it to
		acc_ops.reshape. It also handles the case when `shape` is a list instead of
		tuple.
	**/
	static public function custom_tensor_reshape_mapper(node:Dynamic, _:Dynamic):Dynamic;
	static public function custom_tensor_to_mapper(node:Dynamic, _:Dynamic):Dynamic;
	/**
		Add custom mapping for torch.add because it has an `alpha` parameter which scales
		the `other` input, and we want to make that mul a separate node.
	**/
	static public function custom_torch_add_mapper(node:Dynamic, mod:Dynamic):Dynamic;
	/**
		`input_tensor_meta` contains extra argument of quantization
		parameters, e.g. scale/zero_point and will be using for
		lowring dequantize op to TensorRT
	**/
	static public function dequantize(input:Dynamic, input_tensor_meta:Dynamic):Dynamic;
	static public function div(input:Dynamic, other:Dynamic):Dynamic;
	/**
		Remove dropout node and directly map its input to output.
	**/
	static public function dropout_mapper(node:Dynamic, mod:Dynamic):Dynamic;
	static public function embedding_bag(input:Dynamic, weight:Dynamic, offsets:Dynamic, max_norm:Dynamic, norm_type:Dynamic, scale_grad_by_freq:Dynamic, mode:Dynamic, sparse:Dynamic, per_sample_weights:Dynamic, include_last_offset:Dynamic, padding_idx:Dynamic):Dynamic;
	static public function embedding_bag_4bit_rowwise_offsets(weight:Dynamic, indices:Dynamic, offsets:Dynamic, scale_grad_by_freq:Dynamic, mode:Dynamic, pruned_weights:Dynamic, per_sample_weights:Dynamic, compressed_indices_mapping:Dynamic, include_last_offset:Dynamic):Dynamic;
	static public function embedding_bag_byte_rowwise_offsets(weight:Dynamic, indices:Dynamic, offsets:Dynamic, scale_grad_by_freq:Dynamic, mode:Dynamic, pruned_weights:Dynamic, per_sample_weights:Dynamic, compressed_indices_mapping:Dynamic, include_last_offset:Dynamic):Dynamic;
	static public function exp(input:Dynamic):Dynamic;
	static public function flatten(input:Dynamic, ?start_dim:Dynamic, ?end_dim:Dynamic):Dynamic;
	static public function floor(input:Dynamic):Dynamic;
	static public function getitem(input:Dynamic, idx:Dynamic):Dynamic;
	static public function layer_norm(input:Dynamic, normalized_shape:Dynamic, weight:Dynamic, bias:Dynamic, eps:Dynamic):Dynamic;
	static public function linalg_norm(input:Dynamic, ord:Dynamic, dim:Dynamic, keepdim:Dynamic):Dynamic;
	static public function linear(input:Dynamic, weight:Dynamic, bias:Dynamic):Dynamic;
	static public function log(input:Dynamic):Dynamic;
	static public function matmul(input:Dynamic, other:Dynamic):Dynamic;
	static public function max_dim_reduce(input:Dynamic, ?dim:Dynamic, ?keepdim:Dynamic):Dynamic;
	static public function max_full_reduce(input:Dynamic):Dynamic;
	static public function max_pool2d(input:Dynamic, kernel_size:Dynamic, stride:Dynamic, padding:Dynamic, dilation:Dynamic, ceil_mode:Dynamic, return_indices:Dynamic):Dynamic;
	static public function maximum(input:Dynamic, other:Dynamic):Dynamic;
	static public function min_dim_reduce(input:Dynamic, ?dim:Dynamic, ?keepdim:Dynamic):Dynamic;
	static public function min_full_reduce(input:Dynamic):Dynamic;
	static public function minimum(input:Dynamic, other:Dynamic):Dynamic;
	static public function mul(input:Dynamic, other:Dynamic):Dynamic;
	static public function neg(input:Dynamic):Dynamic;
	/**
		Mapping from quantzed Conv2d module to acc_op.conv. We unpack all the parameters
		in this mapper and pass them directly to conv2d node.
	**/
	static public function packed_quantized_conv2d_mapper(node:Dynamic, mod:Dynamic):Dynamic;
	/**
		Mapping from quantized ConvReLU2d module to acc_op.relu. We use packed_quantized_conv2d_mapper to unpack all the parameters
		in this mapper and pass the returned conv2d node directly to relu node.
	**/
	static public function packed_quantized_convrelu2d_mapper(node:Dynamic, mod:Dynamic):Dynamic;
	/**
		Mapping from quantized_linear module to acc_op.linear. We unpack weight and bias
		in this mapper and pass them directly to linear node.
	**/
	static public function packed_quantized_linear_mapper(node:Dynamic, mod:Dynamic):Dynamic;
	static public function permute(input:Dynamic, permutation:Dynamic):Dynamic;
	static public function pow(input:Dynamic, exponent:Dynamic):Dynamic;
	static public function quantize_per_tensor(input:Dynamic, ?acc_out_ty:Dynamic):Dynamic;
	static public function quantized_add(input:Dynamic, other:Dynamic, ?acc_out_ty:Dynamic):Dynamic;
	static public function quantized_batch_norm2d(input:Dynamic, running_mean:Dynamic, running_var:Dynamic, weight:Dynamic, bias:Dynamic, eps:Dynamic, acc_out_ty:Dynamic):Dynamic;
	static public function quantized_conv2d(input:Dynamic, weight:Dynamic, bias:Dynamic, stride:Dynamic, padding:Dynamic, dilation:Dynamic, groups:Dynamic, padding_mode:Dynamic, ?acc_out_ty:Dynamic):Dynamic;
	static public function quantized_linear(input:Dynamic, weight:Dynamic, bias:Dynamic, ?acc_out_ty:Dynamic):Dynamic;
	static public function quantized_mul(input:Dynamic, other:Dynamic, ?acc_out_ty:Dynamic):Dynamic;
	static public function reciprocal(input:Dynamic):Dynamic;
	/**
		For a new acc op, add this as decorator to register it.
	**/
	static public function register_acc_op(acc_op:Dynamic):Dynamic;
	/**
		Use this decorator to map a non-acc operator to an acc operator.
		
		Args:
		    op_and_target: A tuple that contains op and target of the node that represents the non-acc operator.
		    arg_replacement_tuples: Please refer to the comment on above for `ArgReplacementTuplesType`.
		    kwargs_to_move_to_acc_out_ty: The kwargs we want to move out from the non-acc op kwargs to acc_out_ty.
	**/
	static public function register_acc_op_mapping(op_and_target:Dynamic, ?arg_replacement_tuples:Dynamic, ?kwargs_to_move_to_acc_out_ty:Dynamic):Dynamic;
	static public function register_custom_acc_mapper_fn(op_and_target:Dynamic, arg_replacement_tuples:Dynamic, ?needs_shapes_for_normalization:Dynamic, ?allow_normalize_from_torch_package:Dynamic):Dynamic;
	static public function relu(input:Dynamic, ?inplace:Dynamic):Dynamic;
	static public function reshape(input:Dynamic, ?acc_out_ty:Dynamic):Dynamic;
	static public function sigmoid(input:Dynamic):Dynamic;
	static public function sign(input:Dynamic):Dynamic;
	static public function sin(input:Dynamic):Dynamic;
	static public function sinh(input:Dynamic):Dynamic;
	static public function size(input:Dynamic):Dynamic;
	static public function slice_tensor(input:Dynamic, dims:Dynamic, starts:Dynamic, stops:Dynamic, steps:Dynamic):Dynamic;
	/**
		_stacklevel are ignored here.
	**/
	static public function softmax(input:Dynamic, dim:Dynamic, dtype:Dynamic):Dynamic;
	static public function split(input:Dynamic, split_size:Dynamic, dim:Dynamic):Dynamic;
	static public function sqrt(input:Dynamic):Dynamic;
	static public function square_mapper(node:Dynamic, _:Dynamic):Dynamic;
	static public function squeeze(input:Dynamic, ?dim:Dynamic):Dynamic;
	/**
		Map torch.stack to unsqueeze + cat.
	**/
	static public function stack_mapper(node:Dynamic, _:Dynamic):Dynamic;
	static public function sub(input:Dynamic, other:Dynamic):Dynamic;
	static public function sum(input:Dynamic, ?dim:Dynamic, ?keepdim:Dynamic, ?dtype:Dynamic):Dynamic;
	static public function t_mapper(node:Dynamic, _:Dynamic):Dynamic;
	static public function tan(input:Dynamic):Dynamic;
	static public function tanh(input:Dynamic):Dynamic;
	/**
		Mapping from Tensor.size() to acc_ops.size. We map size() to acc_ops.size directly
		and map size(dim) to acc_ops.size + acc_ops.getitem.
	**/
	static public function tensor_size_mapper(node:Dynamic, _:Dynamic):Dynamic;
	static public var this_arg_is_optional : Dynamic;
	static public function to_dtype(input:Dynamic, ?acc_out_ty:Dynamic):Dynamic;
	static public function topk(input:Dynamic, k:Dynamic, dim:Dynamic, largest:Dynamic, sorted:Dynamic):Dynamic;
	/**
		Map torch.argmin to acc_ops.flatten (depend on dim) + acc_ops.topk + acc_ops.getitem
		+ acc_ops.squeeze (depends on keepdim).
	**/
	static public function torch_argmin_mapper(node:Dynamic, _:Dynamic):Dynamic;
	static public function torch_log1p_mapper(node:Dynamic, _:Dynamic):Dynamic;
	/**
		If split_size_or_sections is sections, map the node to slice_tensors
		+ tuple_construct. Otherwise, if split_size_or_sections is split_size,
		map the node to acc_ops.split.
	**/
	static public function torch_split_mapper(node:Dynamic, mod:Dynamic):Dynamic;
	static public function transpose_mapper(node:Dynamic, _:Dynamic):Dynamic;
	static public function tuple_construct(tensors:Dynamic):Dynamic;
	static public function unsqueeze(input:Dynamic, dim:Dynamic):Dynamic;
}