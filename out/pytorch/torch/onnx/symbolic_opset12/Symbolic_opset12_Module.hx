/* This file is generated, do not edit! */
package torch.onnx.symbolic_opset12;
@:pythonImport("torch.onnx.symbolic_opset12") extern class Symbolic_opset12_Module {
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
	static public function _parse_arg(value:Dynamic, desc:Dynamic, ?arg_name:Dynamic, ?node_name:Dynamic):Dynamic;
	static public function _reshape_from_tensor(g:Dynamic, input:Dynamic, shape:Dynamic):Dynamic;
	static public function _unimplemented(op:Dynamic, msg:Dynamic):Dynamic;
	static public function argmax(g:Dynamic, input:Dynamic, dim:Dynamic, keepdim:Dynamic):Dynamic;
	static public function argmin(g:Dynamic, input:Dynamic, dim:Dynamic, keepdim:Dynamic):Dynamic;
	static public function binary_cross_entropy_with_logits(g:Dynamic, input:Dynamic, target:Dynamic, weight:Dynamic, pos_weight:Dynamic, reduction:Dynamic):Dynamic;
	static public function celu(g:Dynamic, self:Dynamic, alpha:Dynamic):Dynamic;
	static public function cross_entropy_loss(g:Dynamic, self:Dynamic, target:Dynamic, weight:Dynamic, reduction:Dynamic, ignore_index:Dynamic, label_smoothing:Dynamic):Dynamic;
	static public function dropout(g:Dynamic, input:Dynamic, p:Dynamic, train:Dynamic):Dynamic;
	static public function einsum(g:Dynamic, equation:Dynamic, tensor_list:Dynamic):Dynamic;
	static public function ge(g:Dynamic, input:Dynamic, other:Dynamic):Dynamic;
	static public function le(g:Dynamic, input:Dynamic, other:Dynamic):Dynamic;
	static public var maxsize : Dynamic;
	static public function nll_loss(g:Dynamic, self:Dynamic, target:Dynamic, weight:Dynamic, reduction:Dynamic, ignore_index:Dynamic):Dynamic;
	static public function nll_loss2d(g:Dynamic, self:Dynamic, target:Dynamic, weight:Dynamic, reduction:Dynamic, ignore_index:Dynamic):Dynamic;
	static public function nll_loss_nd(g:Dynamic, self:Dynamic, target:Dynamic, weight:Dynamic, reduction:Dynamic, ignore_index:Dynamic):Dynamic;
	static public function outer(g:Dynamic, input:Dynamic, other:Dynamic):Dynamic;
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
	static public function permute(g:Dynamic, self:Dynamic, dims:Dynamic):Dynamic;
	static public function pow(g:Dynamic, self:Dynamic, exponent:Dynamic):Dynamic;
	static public function tensordot(g:Dynamic, input_a:Dynamic, input_b:Dynamic, dims_a:Dynamic, dims_b:Dynamic, ?out:Dynamic):Dynamic;
	static public function unfold(g:Dynamic, input:Dynamic, dimension:Dynamic, size:Dynamic, step:Dynamic):Dynamic;
}