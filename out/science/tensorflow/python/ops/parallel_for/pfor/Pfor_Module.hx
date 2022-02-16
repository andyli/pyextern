/* This file is generated, do not edit! */
package tensorflow.python.ops.parallel_for.pfor;
@:pythonImport("tensorflow.python.ops.parallel_for.pfor") extern class Pfor_Module {
	static public var _INTERNAL_STACKING_TYPE_IDS : Dynamic;
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
		  - for SNHWC, we transpose to NHWSC.
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
	static public function _convert_adjust_contrastv2(pfor_input:Dynamic):Dynamic;
	static public function _convert_adjust_hue(pfor_input:Dynamic):Dynamic;
	static public function _convert_adjust_saturation(pfor_input:Dynamic):Dynamic;
	static public function _convert_approximate_equal(pfor_input:Dynamic):Dynamic;
	static public function _convert_argmax_argmin(pfor_input:Dynamic, _:Dynamic, op_func:Dynamic):Dynamic;
	static public function _convert_assert(pfor_input:Dynamic):Dynamic;
	static public function _convert_batch_mat_mul(pfor_input:Dynamic):Dynamic;
	static public function _convert_batch_mat_mul_v2(pfor_input:Dynamic):Dynamic;
	static public function _convert_batch_to_space_nd(pfor_input:Dynamic):Dynamic;
	static public function _convert_biasadd(pfor_input:Dynamic):Dynamic;
	static public function _convert_biasaddgrad(pfor_input:Dynamic):Dynamic;
	static public function _convert_broadcast_to(pfor_input:Dynamic):Dynamic;
	static public function _convert_bucketize(pfor_input:Dynamic):Dynamic;
	static public function _convert_cast(pfor_input:Dynamic):Dynamic;
	static public function _convert_check_numerics(pfor_input:Dynamic):Dynamic;
	static public function _convert_cholesky(pfor_input:Dynamic):Dynamic;
	static public function _convert_clip_by_value(pfor_input:Dynamic):Dynamic;
	static public function _convert_concatv2(pfor_input:Dynamic):Dynamic;
	static public function _convert_conv2d_backprop_filter(pfor_input:Dynamic):Dynamic;
	static public function _convert_cross(pfor_input:Dynamic):Dynamic;
	static public function _convert_cumfoo(pfor_input:Dynamic, _:Dynamic, op_func:Dynamic):Dynamic;
	static public function _convert_cwise(pfor_input:Dynamic):Dynamic;
	static public function _convert_decode_csv(pfor_input:Dynamic):Dynamic;
	static public function _convert_depthwise_conv2d_native(pfor_input:Dynamic):Dynamic;
	static public function _convert_depthwise_conv2d_native_backprop_filter(pfor_input:Dynamic):Dynamic;
	static public function _convert_depthwise_conv2d_native_backprop_input(pfor_input:Dynamic):Dynamic;
	static public function _convert_diag(pfor_input:Dynamic):Dynamic;
	static public function _convert_diag_part(pfor_input:Dynamic):Dynamic;
	static public function _convert_einsum(pfor_input:Dynamic, op_type:Dynamic):Dynamic;
	static public function _convert_ensure_shape(pfor_input:Dynamic):Dynamic;
	static public function _convert_equal(pfor_input:Dynamic):Dynamic;
	static public function _convert_expanddims(pfor_input:Dynamic):Dynamic;
	static public function _convert_fft(pfor_input:Dynamic, _:Dynamic, op_func:Dynamic):Dynamic;
	static public function _convert_fill(pfor_input:Dynamic):Dynamic;
	static public function _convert_flatten_batch(pfor_input:Dynamic, op_type:Dynamic, dims:Dynamic):Dynamic;
	static public function _convert_flatten_batch_shape_input(pfor_input:Dynamic, op_type:Dynamic, flatten_dims:Dynamic, shape_dim:Dynamic):Dynamic;
	static public function _convert_function_call(func:Dynamic, converter:Dynamic, inputs:Dynamic):Dynamic;
	static public function _convert_fused_batch_norm(pfor_input:Dynamic):Dynamic;
	static public function _convert_fused_batch_norm_grad(pfor_input:Dynamic):Dynamic;
	static public function _convert_gather(pfor_input:Dynamic):Dynamic;
	static public function _convert_gather_nd(pfor_input:Dynamic):Dynamic;
	static public function _convert_grads(pfor_input:Dynamic, op_type:Dynamic, ?args:python.VarArgs<Dynamic>, ?kw_args:python.KwArgs<Dynamic>):Dynamic;
	static public function _convert_identity(pfor_input:Dynamic, op_type:Dynamic, op_func:Dynamic):Dynamic;
	static public function _convert_identity_n(pfor_input:Dynamic):Dynamic;
	static public function _convert_if(pfor_input:Dynamic):Dynamic;
	static public function _convert_leaky_relu(pfor_input:Dynamic):Dynamic;
	static public function _convert_log_matrix_determinant(pfor_input:Dynamic):Dynamic;
	static public function _convert_matmul(pfor_input:Dynamic):Dynamic;
	static public function _convert_matrix_band_part(pfor_input:Dynamic):Dynamic;
	static public function _convert_matrix_diag_part_v2(pfor_input:Dynamic):Dynamic;
	static public function _convert_matrix_diag_v2(pfor_input:Dynamic):Dynamic;
	static public function _convert_matrix_inverse(pfor_input:Dynamic):Dynamic;
	static public function _convert_matrix_set_diag(pfor_input:Dynamic):Dynamic;
	static public function _convert_matrix_set_diag_v2(pfor_input:Dynamic):Dynamic;
	static public function _convert_matrix_solve(pfor_input:Dynamic):Dynamic;
	static public function _convert_matrix_triangular_solve(pfor_input:Dynamic):Dynamic;
	static public function _convert_multinomial(pfor_input:Dynamic):Dynamic;
	static public function _convert_not_equal(pfor_input:Dynamic):Dynamic;
	static public function _convert_one_hot(pfor_input:Dynamic):Dynamic;
	static public function _convert_optional_from_value(pfor_input:Dynamic):Dynamic;
	static public function _convert_optional_get_value(pfor_input:Dynamic):Dynamic;
	static public function _convert_pack(pfor_input:Dynamic):Dynamic;
	static public function _convert_pad(pfor_input:Dynamic):Dynamic;
	static public function _convert_parse_example_v2(pfor_input:Dynamic):Dynamic;
	static public function _convert_parse_single_example(pfor_input:Dynamic):Dynamic;
	static public function _convert_partitioned_call(pfor_input:Dynamic):Dynamic;
	static public function _convert_print(pfor_input:Dynamic):Dynamic;
	static public function _convert_print_v2(pfor_input:Dynamic):Dynamic;
	static public function _convert_random(pfor_input:Dynamic, op_type:Dynamic, ?args:python.VarArgs<Dynamic>, ?kw_args:python.KwArgs<Dynamic>):Dynamic;
	static public function _convert_random_with_param(pfor_input:Dynamic):Dynamic;
	static public function _convert_rank(pfor_input:Dynamic):Dynamic;
	static public function _convert_reduction(pfor_input:Dynamic, _:Dynamic, op_func:Dynamic):Dynamic;
	static public function _convert_reshape(pfor_input:Dynamic):Dynamic;
	static public function _convert_reverse(pfor_input:Dynamic):Dynamic;
	static public function _convert_rfft(pfor_input:Dynamic, _:Dynamic, op_func:Dynamic, attr_name:Dynamic):Dynamic;
	static public function _convert_roll(pfor_input:Dynamic):Dynamic;
	static public function _convert_searchsorted(pfor_input:Dynamic, _:Dynamic, op_func:Dynamic):Dynamic;
	static public function _convert_select(pfor_input:Dynamic):Dynamic;
	static public function _convert_selectv2(pfor_input:Dynamic):Dynamic;
	static public function _convert_self_adjoint_eig(pfor_input:Dynamic):Dynamic;
	static public function _convert_shape(pfor_input:Dynamic):Dynamic;
	static public function _convert_shape_n(pfor_input:Dynamic):Dynamic;
	static public function _convert_size(pfor_input:Dynamic):Dynamic;
	static public function _convert_slice(pfor_input:Dynamic):Dynamic;
	static public function _convert_softmax(pfor_input:Dynamic, op_type:Dynamic, op_func:Dynamic):Dynamic;
	static public function _convert_space_to_batch_nd(pfor_input:Dynamic):Dynamic;
	static public function _convert_sparse_segment(pfor_input:Dynamic, _:Dynamic, op_func:Dynamic):Dynamic;
	static public function _convert_sparse_segment_grad(pfor_input:Dynamic, _:Dynamic, op_func:Dynamic):Dynamic;
	static public function _convert_split(pfor_input:Dynamic):Dynamic;
	static public function _convert_split_v(pfor_input:Dynamic):Dynamic;
	static public function _convert_squeeze(pfor_input:Dynamic):Dynamic;
	static public function _convert_stack_pop_v2(pfor_input:Dynamic):Dynamic;
	static public function _convert_stack_push_v2(pfor_input:Dynamic):Dynamic;
	static public function _convert_stateless_multinomial(pfor_input:Dynamic):Dynamic;
	static public function _convert_strided_slice(pfor_input:Dynamic):Dynamic;
	static public function _convert_strided_slice_grad(pfor_input:Dynamic):Dynamic;
	static public function _convert_string_format(pfor_input:Dynamic):Dynamic;
	static public function _convert_tensor_array_gather_v3(pfor_input:Dynamic):Dynamic;
	static public function _convert_tensor_array_grad_v3(pfor_input:Dynamic):Dynamic;
	static public function _convert_tensor_array_push_back(pfor_input:Dynamic):Dynamic;
	static public function _convert_tensor_array_read_v3(pfor_input:Dynamic):Dynamic;
	static public function _convert_tensor_array_scatter_v3(pfor_input:Dynamic):Dynamic;
	static public function _convert_tensor_array_set_item(pfor_input:Dynamic):Dynamic;
	static public function _convert_tensor_array_size_v3(pfor_input:Dynamic):Dynamic;
	static public function _convert_tensor_array_v3(pfor_input:Dynamic):Dynamic;
	static public function _convert_tensor_array_write_v3(pfor_input:Dynamic):Dynamic;
	static public function _convert_tensor_list_concat_v2(pfor_input:Dynamic):Dynamic;
	static public function _convert_tensor_list_element_shape(pfor_input:Dynamic):Dynamic;
	static public function _convert_tensor_list_from_tensor(pfor_input:Dynamic):Dynamic;
	static public function _convert_tensor_list_gather(pfor_input:Dynamic):Dynamic;
	static public function _convert_tensor_list_get_item(pfor_input:Dynamic):Dynamic;
	static public function _convert_tensor_list_length(pfor_input:Dynamic):Dynamic;
	static public function _convert_tensor_list_push_back(pfor_input:Dynamic):Dynamic;
	static public function _convert_tensor_list_reserve(pfor_input:Dynamic):Dynamic;
	static public function _convert_tensor_list_scatter(pfor_input:Dynamic):Dynamic;
	static public function _convert_tensor_list_stack(pfor_input:Dynamic):Dynamic;
	static public function _convert_tile(pfor_input:Dynamic):Dynamic;
	static public function _convert_transpose(pfor_input:Dynamic, _:Dynamic, op_func:Dynamic):Dynamic;
	static public function _convert_unpack(pfor_input:Dynamic):Dynamic;
	static public function _convert_unsortedsegmentsum(pfor_input:Dynamic, _:Dynamic, op_func:Dynamic):Dynamic;
	static public function _convert_while(pfor_input:Dynamic):Dynamic;
	static public function _convert_xla_sharding(pfor_input:Dynamic):Dynamic;
	static public function _convert_zeroslike(pfor_input:Dynamic):Dynamic;
	/**
		Utility to create an op.
	**/
	static public function _create_op(op_type:Dynamic, inputs:Dynamic, op_dtypes:Dynamic, ?attrs:Dynamic):Dynamic;
	static public function _fallback_converter(pfor_input:Dynamic, ?warn:Dynamic):Dynamic;
	/**
		Flattens a rank 2 tensor, adding an offset to each row.
	**/
	static public function _flatten_array_with_offset(ids:Dynamic, offset_delta:Dynamic, num_rows:Dynamic):Dynamic;
	/**
		Merges first two dimensions.
	**/
	static public function _flatten_first_two_dims(x:Dynamic):Dynamic;
	/**
		Merges the first dim with the specified dim.
	**/
	static public function _flatten_with_inner_dim(x:Dynamic, dim:Dynamic, x_rank:Dynamic):Dynamic;
	/**
		Returns True if handle was created inside the pfor loop.
	**/
	static public function _handle_inside_pfor(pfor_input:Dynamic, handle:Dynamic):Dynamic;
	/**
		Stacks and flattens first dim of inputs at indices `input_indices`.
	**/
	static public function _inputs_with_flattening(pfor_input:Dynamic, input_indices:Dynamic):Dynamic;
	static public function _is_stateful_pfor_op(op:Dynamic):Dynamic;
	/**
		Identifies variant tensors which pfor always maintains as scalars.
		
		For these, the pfor tensor is recorded as "stacked" if the content of the
		variant tensor (e.g. the elements of a TensorList) are all stacked.
		
		Args:
		  t: A tensor to identify.
		Returns:
		  True if `t` is a TensorList/Optional, False not, None if unknown.
	**/
	static public function _is_variant_with_internal_stacking(t:Dynamic):Dynamic;
	static public function _outputs_for_branch(func_name:Dynamic, indices:Dynamic, pfor_input:Dynamic, inputs:Dynamic):Dynamic;
	/**
		Extracts shape and dtype information from a variant tensor `t`.
	**/
	static public function _parse_variant_shapes_and_types(t:Dynamic):Dynamic;
	static public function _partition_inputs_for_indices(inputs:Dynamic, indices:Dynamic):Dynamic;
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
	static public function _stack_tensor_list(handle:Dynamic, dtype:Dynamic, loop_len_vector:Dynamic, ?element_shape:Dynamic):Dynamic;
	static public function _stack_tensor_list_shape(shape:Dynamic, first_dim:Dynamic):Dynamic;
	/**
		stacks `t` according to its loop context.
	**/
	static public function _tile_variant(t:Dynamic, pfor_input:Dynamic):Dynamic;
	/**
		stacks `t` `length` times.
	**/
	static public function _tile_variant_with_length(t:Dynamic, length:Dynamic):Dynamic;
	static public function _transpose_dim_to_front(x:Dynamic, dim:Dynamic):Dynamic;
	static public function _transpose_first_two_dims(value:Dynamic):Dynamic;
	/**
		Splits first dimension into [first_dim, -1].
	**/
	static public function _unflatten_first_dim(x:Dynamic, first_dim:Dynamic):Dynamic;
	/**
		Undoes _flatten_with_inner_dim.
	**/
	static public function _unflatten_with_inner_dim(x:Dynamic, dim:Dynamic, x_rank:Dynamic, stack_size:Dynamic):Dynamic;
	static public function _unstack_flow(value:Dynamic):Dynamic;
	static public function _untile_variant(t:Dynamic):Dynamic;
	/**
		Fetches handle data for a variant tensor `t`, or None if unavailable.
	**/
	static public function _variant_handle_data(t:Dynamic):Dynamic;
	/**
		Returns the full_type_pb2 type of `t`, or None if it is not available.
	**/
	static public function _variant_type_id(t:Dynamic):Dynamic;
	static public function _wrap_and_tile_variants(tensor:Dynamic, length:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	static public var force_stateful_ops : Dynamic;
	static public var passthrough_stateful_ops : Dynamic;
	static public var print_function : Dynamic;
	/**
		Helper to create a WrappedTensor object.
	**/
	static public function wrap(tensor:Dynamic, ?is_stacked:Dynamic, ?is_sparse_stacked:Dynamic):Dynamic;
}