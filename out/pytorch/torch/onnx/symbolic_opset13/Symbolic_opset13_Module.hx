/* This file is generated, do not edit! */
package torch.onnx.symbolic_opset13;
@:pythonImport("torch.onnx.symbolic_opset13") extern class Symbolic_opset13_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _add_block(node:Dynamic):Dynamic;
	static public function _add_input_to_block(block:Dynamic):Dynamic;
	static public function _add_output_to_block(block:Dynamic, value:Dynamic):Dynamic;
	static public function _maybe_cast_reduce_op_input(g:Dynamic, self:Dynamic):Dynamic;
	static public function _reduce_op_symbolic(onnx_op_name:Dynamic):Dynamic;
	static public function _reduce_with_dtype(onnx_op:Dynamic, name:Dynamic):Dynamic;
	static public function _unimplemented(op:Dynamic, msg:Dynamic):Dynamic;
	static public function expand(g:Dynamic, self:Dynamic, size:Dynamic, implicit:Dynamic):Dynamic;
	static public function fake_quantize_per_channel_affine(g:Dynamic, inputs:Dynamic, scale:Dynamic, zero_point:Dynamic, axis:Dynamic, ?quant_min:Dynamic, ?quant_max:Dynamic):Dynamic;
	static public function frobenius_norm(g:Dynamic, self:Dynamic, ?dim:Dynamic, ?keepdim:Dynamic):Dynamic;
	static public function log_softmax(g:Dynamic, input:Dynamic, dim:Dynamic, ?dtype:Dynamic):Dynamic;
	static public function nonzero(g:Dynamic, input:Dynamic):Dynamic;
	static public function nonzero_numpy(g:Dynamic, input:Dynamic, ?_outputs:Dynamic):Dynamic;
	static public function overload_by_arg_count(fn:Dynamic):Dynamic;
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
	static public function repeat_interleave(g:Dynamic, self:Dynamic, repeats:Dynamic, ?dim:Dynamic, ?output_size:Dynamic):Dynamic;
	static public function softmax(g:Dynamic, input:Dynamic, dim:Dynamic, ?dtype:Dynamic):Dynamic;
	static public function split(g:Dynamic, self:Dynamic, split_size_or_sizes:Dynamic, dim:Dynamic, ?_outputs:Dynamic):Dynamic;
	static public function split_with_sizes(g:Dynamic, self:Dynamic, split_sizes:Dynamic, dim:Dynamic, ?_outputs:Dynamic):Dynamic;
	static public function sum(g:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function unbind(g:Dynamic, self:Dynamic, ?dim:Dynamic, ?_outputs:Dynamic):Dynamic;
	static public function unsafe_chunk(g:Dynamic, self:Dynamic, chunks:Dynamic, dim:Dynamic, ?_outputs:Dynamic):Dynamic;
	static public function unsafe_split(g:Dynamic, self:Dynamic, split_size_or_sizes:Dynamic, dim:Dynamic, ?_outputs:Dynamic):Dynamic;
	static public function unsafe_split_with_sizes(g:Dynamic, self:Dynamic, split_sizes:Dynamic, dim:Dynamic, ?_outputs:Dynamic):Dynamic;
	static public function unsqueeze(g:Dynamic, self:Dynamic, dim:Dynamic):Dynamic;
	static public function where(g:Dynamic, condition:Dynamic, ?self:Dynamic, ?other:Dynamic, ?_outputs:Dynamic):Dynamic;
}