/* This file is generated, do not edit! */
package torch.onnx.symbolic_opset11;
@:pythonImport("torch.onnx.symbolic_opset11") extern class Symbolic_opset11_Module {
	static public function Delete(g:Dynamic, tensor_list:Dynamic, dim:Dynamic):Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public function __getitem_(g:Dynamic, self:Dynamic, i:Dynamic):Dynamic;
	static public function __interpolate(g:Dynamic, input:Dynamic, size:Dynamic, scale_factor:Dynamic, mode:Dynamic, align_corners:Dynamic, recompute_scale_factor:Dynamic):Dynamic;
	static public var __loader__ : Dynamic;
	static public function __lshift_(g:Dynamic, self:Dynamic, other:Dynamic):Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public function __rshift_(g:Dynamic, self:Dynamic, other:Dynamic):Dynamic;
	static public var __spec__ : Dynamic;
	static public function _add_block(node:Dynamic):Dynamic;
	static public function _add_input_to_block(block:Dynamic):Dynamic;
	static public function _add_output_to_block(block:Dynamic, value:Dynamic):Dynamic;
	static public function _avg_pool(name:Dynamic, tuple_fn:Dynamic):Dynamic;
	static public function _dim_arange(g:Dynamic, like:Dynamic, dim:Dynamic):Dynamic;
	static public function _get_im2col_indices_along_dim(g:Dynamic, input_d:Dynamic, kernel_size_d:Dynamic, dilation_d:Dynamic, padding_d:Dynamic, stride_d:Dynamic):Dynamic;
	static public function _get_im2col_output_shape(g:Dynamic, input:Dynamic, kernel_h:Dynamic, kernel_w:Dynamic):Dynamic;
	static public function _get_im2col_padded_input(g:Dynamic, input:Dynamic, padding_h:Dynamic, padding_w:Dynamic):Dynamic;
	static public function _interpolate(name:Dynamic, dim:Dynamic, interpolate_mode:Dynamic):Dynamic;
	static public function _is_tensor_list(x:Dynamic):Dynamic;
	static public function _len(g:Dynamic, self:Dynamic):Dynamic;
	static public function _pair(x:Dynamic):Dynamic;
	static public function _prepare_onnx_paddings(g:Dynamic, input:Dynamic, pad:Dynamic):Dynamic;
	static public function _set_item(g:Dynamic, tensor_list:Dynamic, i:Dynamic, v:Dynamic):Dynamic;
	static public function _single(x:Dynamic):Dynamic;
	static public function _triple(x:Dynamic):Dynamic;
	static public function _unimplemented(op:Dynamic, msg:Dynamic):Dynamic;
	static public function _unique2(g:Dynamic, self:Dynamic, sorted:Dynamic, return_inverse:Dynamic, return_counts:Dynamic):Dynamic;
	static public function add(g:Dynamic, self:Dynamic, other:Dynamic, ?alpha:Dynamic):Dynamic;
	static public function append(g:Dynamic, self:Dynamic, tensor:Dynamic):Dynamic;
	static public function arange(g:Dynamic, ?args:python.VarArgs<Dynamic>):Dynamic;
	static public function avg_pool1d(g:Dynamic, input:Dynamic, kernel_size:Dynamic, stride:Dynamic, padding:Dynamic, ceil_mode:Dynamic, count_include_pad:Dynamic, ?divisor_override:Dynamic):Dynamic;
	static public function avg_pool2d(g:Dynamic, input:Dynamic, kernel_size:Dynamic, stride:Dynamic, padding:Dynamic, ceil_mode:Dynamic, count_include_pad:Dynamic, ?divisor_override:Dynamic):Dynamic;
	static public function avg_pool3d(g:Dynamic, input:Dynamic, kernel_size:Dynamic, stride:Dynamic, padding:Dynamic, ceil_mode:Dynamic, count_include_pad:Dynamic, ?divisor_override:Dynamic):Dynamic;
	static public function cat(g:Dynamic, tensor_list:Dynamic, dim:Dynamic):Dynamic;
	static public function chunk(g:Dynamic, self:Dynamic, chunks:Dynamic, dim:Dynamic):Dynamic;
	static public function clamp(g:Dynamic, self:Dynamic, min:Dynamic, max:Dynamic):Dynamic;
	static public function clamp_max(g:Dynamic, self:Dynamic, max:Dynamic):Dynamic;
	static public function clamp_min(g:Dynamic, self:Dynamic, min:Dynamic):Dynamic;
	static public function constant_pad_nd(g:Dynamic, input:Dynamic, padding:Dynamic, ?value:Dynamic):Dynamic;
	static public function cumsum(g:Dynamic, self:Dynamic, dim:Dynamic, ?dtype:Dynamic):Dynamic;
	static public function embedding_bag(g:Dynamic, embedding_matrix:Dynamic, indices:Dynamic, offsets:Dynamic, scale_grad_by_freq:Dynamic, mode:Dynamic, sparse:Dynamic, per_sample_weights:Dynamic, include_last_offset:Dynamic, padding_idx:Dynamic):Dynamic;
	static public function expand(g:Dynamic, self:Dynamic, size:Dynamic, implicit:Dynamic):Dynamic;
	static public function flatten(g:Dynamic, input:Dynamic, start_dim:Dynamic, end_dim:Dynamic):Dynamic;
	static public function gather(g:Dynamic, self:Dynamic, dim:Dynamic, index:Dynamic, ?sparse_grad:Dynamic):Dynamic;
	static public function hardtanh(g:Dynamic, self:Dynamic, min_val:Dynamic, max_val:Dynamic):Dynamic;
	static public function im2col(g:Dynamic, input:Dynamic, kernel_size:Dynamic, dilation:Dynamic, padding:Dynamic, stride:Dynamic):Dynamic;
	static public function index(g:Dynamic, self:Dynamic, index:Dynamic):Dynamic;
	static public function index_copy(g:Dynamic, self:Dynamic, dim:Dynamic, index:Dynamic, source:Dynamic):Dynamic;
	static public function index_fill(g:Dynamic, self:Dynamic, dim:Dynamic, index:Dynamic, value:Dynamic):Dynamic;
	static public function index_put(g:Dynamic, self:Dynamic, indices_list_value:Dynamic, values:Dynamic, ?accumulate:Dynamic):Dynamic;
	static public function insert(g:Dynamic, self:Dynamic, pos:Dynamic, tensor:Dynamic):Dynamic;
	static public function linalg_det(g:Dynamic, self:Dynamic):Dynamic;
	static public function logdet(g:Dynamic, input:Dynamic):Dynamic;
	static public function masked_scatter(g:Dynamic, self:Dynamic, mask:Dynamic, source:Dynamic):Dynamic;
	static public function masked_select(g:Dynamic, self:Dynamic, mask:Dynamic):Dynamic;
	static public var maxsize : Dynamic;
	static public function mm(g:Dynamic, self:Dynamic, other:Dynamic):Dynamic;
	static public function mul(g:Dynamic, self:Dynamic, other:Dynamic):Dynamic;
	static public function narrow(g:Dynamic, input:Dynamic, dim:Dynamic, start:Dynamic, length:Dynamic):Dynamic;
	static public function normal(g:Dynamic, loc:Dynamic, scale:Dynamic, seed:Dynamic):Dynamic;
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
	static public function pixel_shuffle(g:Dynamic, self:Dynamic, upscale_factor:Dynamic):Dynamic;
	static public function pop(g:Dynamic, tensor_list:Dynamic, dim:Dynamic):Dynamic;
	static public function prim_ConstantChunk(g:Dynamic, self:Dynamic, chunks:Dynamic, dim:Dynamic):Dynamic;
	static public function reflection_pad(g:Dynamic, input:Dynamic, padding:Dynamic):Dynamic;
	static public function reflection_pad1d(g:Dynamic, input:Dynamic, padding:Dynamic):Dynamic;
	static public function reflection_pad2d(g:Dynamic, input:Dynamic, padding:Dynamic):Dynamic;
	static public function reflection_pad3d(g:Dynamic, input:Dynamic, padding:Dynamic):Dynamic;
	static public function relu6(g:Dynamic, input:Dynamic):Dynamic;
	static public function replication_pad(g:Dynamic, input:Dynamic, padding:Dynamic):Dynamic;
	static public function replication_pad1d(g:Dynamic, input:Dynamic, padding:Dynamic):Dynamic;
	static public function replication_pad2d(g:Dynamic, input:Dynamic, padding:Dynamic):Dynamic;
	static public function replication_pad3d(g:Dynamic, input:Dynamic, padding:Dynamic):Dynamic;
	static public function round(g:Dynamic, self:Dynamic):Dynamic;
	static public function scatter(g:Dynamic, self:Dynamic, dim:Dynamic, index:Dynamic, src:Dynamic):Dynamic;
	static public function select(g:Dynamic, self:Dynamic, dim:Dynamic, index:Dynamic):Dynamic;
	static public function size(g:Dynamic, self:Dynamic, ?dim:Dynamic):Dynamic;
	static public function sort(g:Dynamic, self:Dynamic, dim:Dynamic, decending:Dynamic, ?out:Dynamic):Dynamic;
	static public function split(g:Dynamic, self:Dynamic, split_size_or_sizes:Dynamic, dim:Dynamic, ?_outputs:Dynamic):Dynamic;
	static public function split_with_sizes(g:Dynamic, self:Dynamic, split_sizes:Dynamic, dim:Dynamic, ?_outputs:Dynamic):Dynamic;
	static public function squeeze(g:Dynamic, self:Dynamic, ?dim:Dynamic):Dynamic;
	static public function stack(g:Dynamic, tensor_list:Dynamic, dim:Dynamic):Dynamic;
	static public function topk(g:Dynamic, self:Dynamic, k:Dynamic, dim:Dynamic, largest:Dynamic, sorted:Dynamic, ?out:Dynamic):Dynamic;
	static public function unbind(g:Dynamic, self:Dynamic, ?dim:Dynamic, ?_outputs:Dynamic):Dynamic;
	static public function unique_dim(g:Dynamic, self:Dynamic, dim:Dynamic, sorted:Dynamic, return_inverse:Dynamic, return_counts:Dynamic):Dynamic;
	static public function unsqueeze(g:Dynamic, self:Dynamic, dim:Dynamic):Dynamic;
	static public function unused(g:Dynamic):Dynamic;
	static public function upsample_bicubic2d(g:Dynamic, input:Dynamic, output_size:Dynamic, ?args:python.VarArgs<Dynamic>):Dynamic;
	static public function upsample_bilinear2d(g:Dynamic, input:Dynamic, output_size:Dynamic, ?args:python.VarArgs<Dynamic>):Dynamic;
	static public function upsample_linear1d(g:Dynamic, input:Dynamic, output_size:Dynamic, ?args:python.VarArgs<Dynamic>):Dynamic;
	static public function upsample_nearest1d(g:Dynamic, input:Dynamic, output_size:Dynamic, ?args:python.VarArgs<Dynamic>):Dynamic;
	static public function upsample_nearest2d(g:Dynamic, input:Dynamic, output_size:Dynamic, ?args:python.VarArgs<Dynamic>):Dynamic;
	static public function upsample_nearest3d(g:Dynamic, input:Dynamic, output_size:Dynamic, ?args:python.VarArgs<Dynamic>):Dynamic;
	static public function upsample_trilinear3d(g:Dynamic, input:Dynamic, output_size:Dynamic, ?args:python.VarArgs<Dynamic>):Dynamic;
}