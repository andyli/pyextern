/* This file is generated, do not edit! */
package torch.onnx.symbolic_helper;
@:pythonImport("torch.onnx.symbolic_helper") extern class Symbolic_helper_Module {
	static public function Set(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var __annotations__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public function __interpolate_helper(g:Dynamic, input:Dynamic, size:Dynamic, scale_factor:Dynamic, mode:Dynamic, align_corners:Dynamic, recompute_scale_factor:Dynamic):Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _arange_cast_helper(g:Dynamic, end:Dynamic, ?start:Dynamic, ?step:Dynamic, ?dtype:Dynamic):Dynamic;
	static public function _arange_helper(g:Dynamic, ?args:python.VarArgs<Dynamic>):Dynamic;
	static public function _avgpool_helper(tuple_fn:Dynamic, padding:Dynamic, kernel_size:Dynamic, stride:Dynamic, divisor_override:Dynamic, name:Dynamic):Dynamic;
	static public function _batchnorm_helper(g:Dynamic, input:Dynamic, weight:Dynamic, bias:Dynamic, running_mean:Dynamic, running_var:Dynamic):Dynamic;
	static public function _block_list_in_opset(name:Dynamic):Dynamic;
	static public function _cast_func_template(to_i:Dynamic, g:Dynamic, input:Dynamic, non_blocking:Dynamic):Dynamic;
	static public var _default_onnx_opset_version : Dynamic;
	static public function _dtype_is_fp(type_value:Dynamic):Dynamic;
	static public var _export_onnx_opset_version : Dynamic;
	static public function _flatten_helper(g:Dynamic, input:Dynamic, start_dim:Dynamic, end_dim:Dynamic, dim:Dynamic):Dynamic;
	/**
		Create a wrapped number based on https://github.com/pytorch/pytorch/issues/9515
		A Tensor is a considered a "wrapped number" if it is
		auto-wrapped from a C++ or Python number type. Integer types are
		wrapped as 0-dim int64 tensors and floating-point types are
		wrapped as 0-dim double tensors.
		
		The input to this function is constant value. If the data type
		is a floating point type, it is converted to a 0-dim double
		tensor, else it is converted to a 0-dim tensor of its original type
	**/
	static public function _generate_wrapped_number(g:Dynamic, scalar:Dynamic):Dynamic;
	static public function _get_const(value:Dynamic, desc:Dynamic, arg_name:Dynamic):Dynamic;
	static public function _get_interpolate_attributes(g:Dynamic, mode:Dynamic, args:Dynamic):Dynamic;
	static public function _get_tensor_dim_size(x:Dynamic, dim:Dynamic):Dynamic;
	static public function _get_tensor_rank(x:Dynamic):Dynamic;
	static public function _get_tensor_sizes(x:Dynamic, ?allow_nonstatic:Dynamic):Dynamic;
	static public function _handle_reduce_dim_none(g:Dynamic, self:Dynamic, op_name:Dynamic):Dynamic;
	/**
		Convert self into the same type of tensor, as necessary.
		
		We only support implicit casting for scalars, so we never
		actually need to insert an ONNX cast operator here; just
		fix up the scalar.
	**/
	static public function _if_scalar_type_as(g:Dynamic, self:Dynamic, tensor:Dynamic):Dynamic;
	static public function _index_fill_reshape_helper(g:Dynamic, self:Dynamic, dim:Dynamic, index:Dynamic):Dynamic;
	static public function _interpolate_get_scales(g:Dynamic, scale_factor:Dynamic, dim:Dynamic):Dynamic;
	static public function _interpolate_get_scales_and_mode(g:Dynamic, input:Dynamic, size:Dynamic, scale_factor:Dynamic, mode:Dynamic, align_corners:Dynamic):Dynamic;
	static public function _interpolate_get_scales_if_available(g:Dynamic, scales:Dynamic):Dynamic;
	static public function _interpolate_helper(name:Dynamic, dim:Dynamic, interpolate_mode:Dynamic):Dynamic;
	static public function _interpolate_size_to_scales(g:Dynamic, input:Dynamic, output_size:Dynamic, dim:Dynamic):Dynamic;
	static public function _interpolate_warning(interpolate_mode:Dynamic):Dynamic;
	static public function _is_constant(value:Dynamic):Dynamic;
	static public function _is_fp(value:Dynamic):Dynamic;
	static public function _is_list(x:Dynamic):Dynamic;
	static public function _is_none(x:Dynamic):Dynamic;
	static public function _is_packed_list(list_value:Dynamic):Dynamic;
	/**
		Check if x is a scalar list, for example: List[float], List[int].
		
		Besides checking the type is ListType, we also check if the data type is
		a valid ONNX data type.
	**/
	static public function _is_scalar_list(x:Dynamic):Dynamic;
	static public function _is_split_static(split_size_or_sizes:Dynamic, _outputs:Dynamic):Dynamic;
	static public function _is_tensor(x:Dynamic):Dynamic;
	static public function _is_tensor_list(x:Dynamic):Dynamic;
	static public function _is_value(x:Dynamic):Dynamic;
	static public function _maybe_get_const(value:Dynamic, desc:Dynamic):Dynamic;
	static public function _maybe_get_scalar(value:Dynamic):Dynamic;
	static public var _onnx_main_opset : Dynamic;
	static public function _onnx_opset_unsupported(op_name:Dynamic, current_opset:Dynamic, supported_opset:Dynamic):Dynamic;
	static public function _onnx_opset_unsupported_detailed(op_name:Dynamic, current_opset:Dynamic, supported_opset:Dynamic, reason:Dynamic):Dynamic;
	static public var _onnx_shape_inference : Dynamic;
	static public var _onnx_stable_opsets : Dynamic;
	static public function _onnx_unsupported(op_name:Dynamic):Dynamic;
	static public var _operator_export_type : Dynamic;
	static public function _optional_input_placeholder_tensor(g:Dynamic):Dynamic;
	static public function _parse_arg(value:Dynamic, desc:Dynamic, ?arg_name:Dynamic, ?node_name:Dynamic):Dynamic;
	static public var _quantized_ops : Dynamic;
	static public function _reducesum_helper(g:Dynamic, input:Dynamic, ?axes_i:Dynamic, ?keepdims_i:Dynamic, ?noop_with_empty_axes_i:Dynamic):Dynamic;
	static public function _repeat_interleave_split_helper(g:Dynamic, self:Dynamic, reps:Dynamic, dim:Dynamic):Dynamic;
	static public function _reshape_helper(g:Dynamic, input:Dynamic, shape:Dynamic, ?allowzero:Dynamic):Dynamic;
	/**
		Convert a scalar tensor into a Python value.
	**/
	static public function _scalar(x:Dynamic):Dynamic;
	static public function _scatter_helper(g:Dynamic, self:Dynamic, dim:Dynamic, index:Dynamic, src:Dynamic):Dynamic;
	static public function _select_helper(g:Dynamic, self:Dynamic, dim:Dynamic, index:Dynamic, ?apply_reshape:Dynamic):Dynamic;
	static public function _set_onnx_shape_inference(onnx_shape_inference:Dynamic):Dynamic;
	static public function _set_operator_export_type(operator_export_type:Dynamic):Dynamic;
	static public function _set_opset_version(opset_version:Dynamic):Dynamic;
	static public function _set_training_mode(training_mode:Dynamic):Dynamic;
	static public function _size_helper(g:Dynamic, self:Dynamic, dim:Dynamic):Dynamic;
	static public function _slice_helper(g:Dynamic, input:Dynamic, axes:Dynamic, starts:Dynamic, ends:Dynamic, ?steps:Dynamic, ?dynamic_slice:Dynamic):Dynamic;
	static public function _sort_helper(g:Dynamic, input:Dynamic, dim:Dynamic, ?decending:Dynamic, ?out:Dynamic):Dynamic;
	static public function _squeeze_helper(g:Dynamic, input:Dynamic, axes_i:Dynamic):Dynamic;
	/**
		Return the sum of a 'start' value (default: 0) plus an iterable of numbers
		
		When the iterable is empty, return the start value.
		This function is intended specifically for use with numeric values and may
		reject non-numeric types.
	**/
	static public function _sum(iterable:Dynamic, ?start:Dynamic):Dynamic;
	static public function _topk_helper(g:Dynamic, input:Dynamic, k:Dynamic, dim:Dynamic, ?largest:Dynamic, ?sorted:Dynamic, ?out:Dynamic):Dynamic;
	static public var _training_mode : Dynamic;
	static public function _try_get_scalar_type(?args:python.VarArgs<Dynamic>):Dynamic;
	static public function _unbind_helper(g:Dynamic, self:Dynamic, dim:Dynamic, _outputs:Dynamic):Dynamic;
	static public function _unimplemented(op:Dynamic, msg:Dynamic):Dynamic;
	static public function _unpack_list(list_value:Dynamic):Dynamic;
	static public function _unsqueeze_helper(g:Dynamic, input:Dynamic, axes_i:Dynamic):Dynamic;
	static public var cast_pytorch_to_onnx : Dynamic;
	static public function check_training_mode(op_train_mode:Dynamic, op_name:Dynamic):Dynamic;
	static public var maxsize : Dynamic;
	/**
		A decorator which converts args from torch._C.Value to built-in types.
		
		For example:
		@parse_args('v', 'i', 'fs')
		foo(g, a, b, c):
		  assert isinstance(a, torch._C.Value)
		  assert isinstance(b, int)
		  assert isinstance(c, list)
		  assert isinstance(c[0], float)
		
		Args:
		  arg_descriptors: list of str, where each element is
		    a string that specifies the type to convert to. Valid descriptors:
		    "v": no conversion, keep torch._C.Value.
		    "i": int
		    "is": list(int)
		    "f": float
		    "fs": list of float
		    "b": bool
		    "s": str
		    "t": torch.Tensor
	**/
	static public function parse_args(?arg_descriptors:python.VarArgs<Dynamic>):Dynamic;
	static public var scalar_name_to_pytorch : Dynamic;
	static public var scalar_type_to_onnx : Dynamic;
	static public var scalar_type_to_pytorch_type : Dynamic;
	/**
		Decorator factory to apply update_wrapper() to a wrapper function
		
		Returns a decorator that invokes update_wrapper() with the decorated
		function as the wrapper argument and the arguments to wraps() as the
		remaining arguments. Default arguments are as for update_wrapper().
		This is a convenience function to simplify applying partial() to
		update_wrapper().
	**/
	static public function wraps(wrapped:Dynamic, ?assigned:Dynamic, ?updated:Dynamic):Dynamic;
}