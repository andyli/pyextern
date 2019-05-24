/* This file is generated, do not edit! */
package tensorflow.python.ops.parallel_for.pfor;
@:pythonImport("tensorflow.python.ops.parallel_for.pfor") extern class Pfor_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Merge the stack dimension with the channel dimension.
		
		If S is pfor's stacking dimension, then,
		  - for SNCHW, we transpose to NSCHW. If N dimension has size 1, the transpose
		    should be cheap.
		  - for SNHWC, we transpose to NHWCS.
		We then merge the S and C dimension.
		
		Args:
		  x: ops.Tensor to transform.
		  data_format: "NCHW" or "NHWC".
		
		Returns:
		  A 3-element tuple with the transformed value, along with the shape for
		  reshape and order for transpose required to transform back.
	**/
	static public function _channel_flatten_input(x:Dynamic, data_format:Dynamic):Dynamic;
	static public var _channel_flatten_input_cache : Dynamic;
	static public function _convert_addn(pfor_input:Dynamic):Dynamic;
	static public function _convert_approximate_equal(pfor_input:Dynamic):Dynamic;
	static public function _convert_assert(pfor_input:Dynamic):Dynamic;
	static public function _convert_batch_mat_mul(pfor_input:Dynamic):Dynamic;
	static public function _convert_biasadd(pfor_input:Dynamic):Dynamic;
	static public function _convert_biasaddgrad(pfor_input:Dynamic):Dynamic;
	static public function _convert_cast(pfor_input:Dynamic):Dynamic;
	static public function _convert_concatv2(pfor_input:Dynamic):Dynamic;
	static public function _convert_conv2d_backprop_filter(pfor_input:Dynamic):Dynamic;
	static public function _convert_cumfoo(pfor_input:Dynamic, _:Dynamic, op_func:Dynamic):Dynamic;
	static public function _convert_cwise(pfor_input:Dynamic, op_type:Dynamic, op_func:Dynamic):Dynamic;
	static public function _convert_decode_csv(pfor_input:Dynamic):Dynamic;
	static public function _convert_expanddims(pfor_input:Dynamic):Dynamic;
	static public function _convert_flatten_batch(pfor_input:Dynamic, op_type:Dynamic, dims:Dynamic):Dynamic;
	static public function _convert_flatten_batch_shape_input(pfor_input:Dynamic, op_type:Dynamic, flatten_dims:Dynamic, shape_dim:Dynamic):Dynamic;
	static public function _convert_fused_batch_norm(pfor_input:Dynamic):Dynamic;
	static public function _convert_fused_batch_norm_grad(pfor_input:Dynamic):Dynamic;
	static public function _convert_gather(pfor_input:Dynamic):Dynamic;
	static public function _convert_grads(pfor_input:Dynamic, op_type:Dynamic, ?args:python.VarArgs<Dynamic>, ?kw_args:python.KwArgs<Dynamic>):Dynamic;
	static public function _convert_identity(pfor_input:Dynamic, op_type:Dynamic, op_func:Dynamic):Dynamic;
	static public function _convert_identity_n(pfor_input:Dynamic):Dynamic;
	static public function _convert_matmul(pfor_input:Dynamic):Dynamic;
	static public function _convert_pack(pfor_input:Dynamic):Dynamic;
	static public function _convert_pad(pfor_input:Dynamic):Dynamic;
	static public function _convert_parse_single_example(pfor_input:Dynamic):Dynamic;
	static public function _convert_print(pfor_input:Dynamic):Dynamic;
	static public function _convert_random(pfor_input:Dynamic, op_type:Dynamic, ?args:python.VarArgs<Dynamic>, ?kw_args:python.KwArgs<Dynamic>):Dynamic;
	static public function _convert_rank(pfor_input:Dynamic):Dynamic;
	static public function _convert_reduction(pfor_input:Dynamic, _:Dynamic, op_func:Dynamic):Dynamic;
	static public function _convert_reshape(pfor_input:Dynamic):Dynamic;
	static public function _convert_select(pfor_input:Dynamic):Dynamic;
	static public function _convert_shape(pfor_input:Dynamic):Dynamic;
	static public function _convert_shape_n(pfor_input:Dynamic):Dynamic;
	static public function _convert_size(pfor_input:Dynamic):Dynamic;
	static public function _convert_slice(pfor_input:Dynamic):Dynamic;
	static public function _convert_split(pfor_input:Dynamic):Dynamic;
	static public function _convert_split_v(pfor_input:Dynamic):Dynamic;
	static public function _convert_stack_pop_v2(pfor_input:Dynamic):Dynamic;
	static public function _convert_stack_push_v2(pfor_input:Dynamic):Dynamic;
	static public function _convert_strided_slice(pfor_input:Dynamic):Dynamic;
	static public function _convert_strided_slice_grad(pfor_input:Dynamic):Dynamic;
	static public function _convert_tensor_array_gather_v3(pfor_input:Dynamic):Dynamic;
	static public function _convert_tensor_array_grad_v3(pfor_input:Dynamic):Dynamic;
	static public function _convert_tensor_array_read_v3(pfor_input:Dynamic):Dynamic;
	static public function _convert_tensor_array_scatter_v3(pfor_input:Dynamic):Dynamic;
	static public function _convert_tensor_array_size_v3(pfor_input:Dynamic):Dynamic;
	static public function _convert_tensor_array_v3(pfor_input:Dynamic):Dynamic;
	static public function _convert_tensor_array_write_v3(pfor_input:Dynamic):Dynamic;
	static public function _convert_tile(pfor_input:Dynamic):Dynamic;
	static public function _convert_transpose(pfor_input:Dynamic):Dynamic;
	static public function _convert_unpack(pfor_input:Dynamic):Dynamic;
	static public function _convert_unsortedsegmentsum(pfor_input:Dynamic):Dynamic;
	static public function _convert_zeroslike(pfor_input:Dynamic):Dynamic;
	/**
		Utility to create an op.
	**/
	static public function _create_op(op_type:Dynamic, inputs:Dynamic, op_dtypes:Dynamic, ?attrs:Dynamic):Dynamic;
	static public function _fallback_converter(pfor_input:Dynamic):Dynamic;
	/**
		Merges first two dimensions.
	**/
	static public function _flatten_first_two_dims(x:Dynamic):Dynamic;
	/**
		Returns True if handle was created inside the pfor loop.
	**/
	static public function _handle_inside_pfor(pfor_input:Dynamic, handle:Dynamic):Dynamic;
	/**
		Stacks and flattens first dim of inputs at indices `input_indices`.
	**/
	static public function _inputs_with_flattening(pfor_input:Dynamic, input_indices:Dynamic):Dynamic;
	static public function _is_stateful_pfor_op(op:Dynamic):Dynamic;
	static public var _pfor_converter_registry : Dynamic;
	/**
		stacks `t` `length` times.
	**/
	static public function _stack(t:Dynamic, length:Dynamic):Dynamic;
	static public var _stack_cache : Dynamic;
	/**
		Create cache key corresponding to a stack handle.
	**/
	static public function _stack_cache_key(pfor_input:Dynamic):Dynamic;
	static public function _stack_handle_inside_pfor(handle:Dynamic, pfor_input:Dynamic):Dynamic;
	static public function _transpose_first_two_dims(value:Dynamic):Dynamic;
	/**
		Splits first dimension into [first_dim, -1].
	**/
	static public function _unflatten_first_dim(x:Dynamic, first_dim:Dynamic):Dynamic;
	static public function _unstack_flow(value:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	static public var passthrough_stateful_ops : Dynamic;
	static public var print_function : Dynamic;
	/**
		Helper to create a WrappedTensor object.
	**/
	static public function wrap(tensor:Dynamic, ?is_stacked:Dynamic, ?is_sparse_stacked:Dynamic):Dynamic;
}