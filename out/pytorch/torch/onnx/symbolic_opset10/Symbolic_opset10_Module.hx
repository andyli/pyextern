/* This file is generated, do not edit! */
package torch.onnx.symbolic_opset10;
@:pythonImport("torch.onnx.symbolic_opset10") extern class Symbolic_opset10_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public function __interpolate(g:Dynamic, input:Dynamic, size:Dynamic, scale_factor:Dynamic, mode:Dynamic, align_corners:Dynamic, recompute_scale_factor:Dynamic):Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _avg_pool(name:Dynamic, tuple_fn:Dynamic):Dynamic;
	static public function _div_rounding_mode(g:Dynamic, self:Dynamic, other:Dynamic, rounding_mode:Dynamic):Dynamic;
	static public function _floor_divide(g:Dynamic, self:Dynamic, other:Dynamic):Dynamic;
	static public function _interpolate(name:Dynamic, dim:Dynamic, interpolate_mode:Dynamic):Dynamic;
	static public function _max_pool(name:Dynamic, tuple_fn:Dynamic, ndims:Dynamic, return_indices:Dynamic):Dynamic;
	static public function _pair(x:Dynamic):Dynamic;
	static public function _single(x:Dynamic):Dynamic;
	static public function _slice(g:Dynamic, input:Dynamic, axes:Dynamic, starts:Dynamic, ends:Dynamic, ?steps:Dynamic, ?dynamic_slice:Dynamic):Dynamic;
	static public function _triple(x:Dynamic):Dynamic;
	static public function _unimplemented(op:Dynamic, msg:Dynamic):Dynamic;
	static public function avg_pool1d(g:Dynamic, input:Dynamic, kernel_size:Dynamic, stride:Dynamic, padding:Dynamic, ceil_mode:Dynamic, count_include_pad:Dynamic, ?divisor_override:Dynamic):Dynamic;
	static public function avg_pool2d(g:Dynamic, input:Dynamic, kernel_size:Dynamic, stride:Dynamic, padding:Dynamic, ceil_mode:Dynamic, count_include_pad:Dynamic, ?divisor_override:Dynamic):Dynamic;
	static public function avg_pool3d(g:Dynamic, input:Dynamic, kernel_size:Dynamic, stride:Dynamic, padding:Dynamic, ceil_mode:Dynamic, count_include_pad:Dynamic, ?divisor_override:Dynamic):Dynamic;
	static public function div(g:Dynamic, self:Dynamic, other:Dynamic, ?args:python.VarArgs<Dynamic>):Dynamic;
	static public function embedding_bag(g:Dynamic, embedding_matrix:Dynamic, indices:Dynamic, offsets:Dynamic, scale_grad_by_freq:Dynamic, mode:Dynamic, sparse:Dynamic, per_sample_weights:Dynamic, include_last_offset:Dynamic, padding_idx:Dynamic):Dynamic;
	static public function fake_quantize_per_tensor_affine(g:Dynamic, inputs:Dynamic, scale:Dynamic, zero_point:Dynamic, ?quant_min:Dynamic, ?quant_max:Dynamic):Dynamic;
	static public function flip(g:Dynamic, input:Dynamic, dims:Dynamic):Dynamic;
	static public function fmod(g:Dynamic, input:Dynamic, other:Dynamic):Dynamic;
	static public function isinf(g:Dynamic, input:Dynamic):Dynamic;
	static public function max_pool1d(g:Dynamic, input:Dynamic, kernel_size:Dynamic, stride:Dynamic, padding:Dynamic, dilation:Dynamic, ceil_mode:Dynamic):Dynamic;
	static public function max_pool1d_with_indices(g:Dynamic, input:Dynamic, kernel_size:Dynamic, stride:Dynamic, padding:Dynamic, dilation:Dynamic, ceil_mode:Dynamic):Dynamic;
	static public function max_pool2d(g:Dynamic, input:Dynamic, kernel_size:Dynamic, stride:Dynamic, padding:Dynamic, dilation:Dynamic, ceil_mode:Dynamic):Dynamic;
	static public function max_pool2d_with_indices(g:Dynamic, input:Dynamic, kernel_size:Dynamic, stride:Dynamic, padding:Dynamic, dilation:Dynamic, ceil_mode:Dynamic):Dynamic;
	static public function max_pool3d(g:Dynamic, input:Dynamic, kernel_size:Dynamic, stride:Dynamic, padding:Dynamic, dilation:Dynamic, ceil_mode:Dynamic):Dynamic;
	static public function max_pool3d_with_indices(g:Dynamic, input:Dynamic, kernel_size:Dynamic, stride:Dynamic, padding:Dynamic, dilation:Dynamic, ceil_mode:Dynamic):Dynamic;
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
	static public function slice(g:Dynamic, self:Dynamic, ?args:python.VarArgs<Dynamic>):Dynamic;
	static public function sort(g:Dynamic, self:Dynamic, dim:Dynamic, decending:Dynamic, ?out:Dynamic):Dynamic;
	static public function topk(g:Dynamic, self:Dynamic, k:Dynamic, dim:Dynamic, largest:Dynamic, sorted:Dynamic, ?out:Dynamic):Dynamic;
	static public function upsample_bilinear2d(g:Dynamic, input:Dynamic, output_size:Dynamic, ?args:python.VarArgs<Dynamic>):Dynamic;
	static public function upsample_linear1d(g:Dynamic, input:Dynamic, output_size:Dynamic, ?args:python.VarArgs<Dynamic>):Dynamic;
	static public function upsample_nearest1d(g:Dynamic, input:Dynamic, output_size:Dynamic, ?args:python.VarArgs<Dynamic>):Dynamic;
	static public function upsample_nearest2d(g:Dynamic, input:Dynamic, output_size:Dynamic, ?args:python.VarArgs<Dynamic>):Dynamic;
	static public function upsample_nearest3d(g:Dynamic, input:Dynamic, output_size:Dynamic, ?args:python.VarArgs<Dynamic>):Dynamic;
	static public function upsample_trilinear3d(g:Dynamic, input:Dynamic, output_size:Dynamic, ?args:python.VarArgs<Dynamic>):Dynamic;
}