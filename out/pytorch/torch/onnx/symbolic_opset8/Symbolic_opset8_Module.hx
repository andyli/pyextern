/* This file is generated, do not edit! */
package torch.onnx.symbolic_opset8;
@:pythonImport("torch.onnx.symbolic_opset8") extern class Symbolic_opset8_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public function __interpolate(g:Dynamic, input:Dynamic, size:Dynamic, scale_factor:Dynamic, mode:Dynamic, align_corners:Dynamic, recompute_scale_factor:Dynamic):Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _block_list_in_opset(name:Dynamic):Dynamic;
	/**
		partial(func, *args, **keywords) - new function with partial application
		of the given arguments and keywords.
	**/
	static public function _cast_Float(g:Dynamic, input:Dynamic, non_blocking:Dynamic):Dynamic;
	static public function _cast_to_type(g:Dynamic, input:Dynamic, to_type:Dynamic):Dynamic;
	static public function _comparison_operator(g:Dynamic, input:Dynamic, other:Dynamic, op_name:Dynamic):Dynamic;
	static public function _constant_fill(g:Dynamic, sizes:Dynamic, dtype:Dynamic, const_value:Dynamic):Dynamic;
	static public function _interpolate(name:Dynamic, dim:Dynamic, interpolate_mode:Dynamic):Dynamic;
	static public function _try_cast_integer_to_float(g:Dynamic, ?args:python.VarArgs<Dynamic>):Dynamic;
	static public function _try_get_scalar_type(?args:python.VarArgs<Dynamic>):Dynamic;
	static public function _unimplemented(op:Dynamic, msg:Dynamic):Dynamic;
	static public function addmm(g:Dynamic, self:Dynamic, mat1:Dynamic, mat2:Dynamic, beta:Dynamic, alpha:Dynamic):Dynamic;
	static public function all(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function any(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function arange(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var block_listed_op : Dynamic;
	static public var block_listed_operators : Dynamic;
	static public function bmm(g:Dynamic, self:Dynamic, other:Dynamic):Dynamic;
	static public function div(g:Dynamic, self:Dynamic, other:Dynamic, ?args:python.VarArgs<Dynamic>):Dynamic;
	static public function empty(g:Dynamic, sizes:Dynamic, dtype:Dynamic, layout:Dynamic, device:Dynamic, ?pin_memory:Dynamic, ?memory_format:Dynamic):Dynamic;
	static public function empty_like(g:Dynamic, input:Dynamic, dtype:Dynamic, layout:Dynamic, device:Dynamic, ?pin_memory:Dynamic, ?memory_format:Dynamic):Dynamic;
	static public function erf(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function flatten(g:Dynamic, input:Dynamic, start_dim:Dynamic, end_dim:Dynamic):Dynamic;
	static public function full(g:Dynamic, sizes:Dynamic, value:Dynamic, dtype:Dynamic, layout:Dynamic, device:Dynamic, ?pin_memory:Dynamic):Dynamic;
	static public function full_like(g:Dynamic, input:Dynamic, fill_value:Dynamic, dtype:Dynamic, layout:Dynamic, device:Dynamic, ?pin_memory:Dynamic, ?memory_format:Dynamic):Dynamic;
	static public function gather(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function gt(g:Dynamic, input:Dynamic, other:Dynamic):Dynamic;
	static public function index_copy(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function index_fill(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function isnan(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function lt(g:Dynamic, input:Dynamic, other:Dynamic):Dynamic;
	static public function masked_fill(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function matmul(g:Dynamic, self:Dynamic, other:Dynamic):Dynamic;
	static public function mm(g:Dynamic, self:Dynamic, other:Dynamic):Dynamic;
	static public function nonzero(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function ones(g:Dynamic, sizes:Dynamic, dtype:Dynamic, layout:Dynamic, device:Dynamic, ?pin_memory:Dynamic):Dynamic;
	static public function ones_like(g:Dynamic, input:Dynamic, dtype:Dynamic, layout:Dynamic, device:Dynamic, ?pin_memory:Dynamic, ?memory_format:Dynamic):Dynamic;
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
	static public function prelu(g:Dynamic, self:Dynamic, weight:Dynamic):Dynamic;
	static public function repeat(g:Dynamic, self:Dynamic, repeats:Dynamic):Dynamic;
	static public function repeat_interleave(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function scatter(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function scatter_add(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function sign(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function upsample_bilinear2d(g:Dynamic, input:Dynamic, output_size:Dynamic, ?args:python.VarArgs<Dynamic>):Dynamic;
	static public function upsample_linear1d(g:Dynamic, input:Dynamic, output_size:Dynamic, ?args:python.VarArgs<Dynamic>):Dynamic;
	static public function upsample_nearest1d(g:Dynamic, input:Dynamic, output_size:Dynamic, ?args:python.VarArgs<Dynamic>):Dynamic;
	static public function upsample_nearest2d(g:Dynamic, input:Dynamic, output_size:Dynamic, ?args:python.VarArgs<Dynamic>):Dynamic;
	static public function upsample_nearest3d(g:Dynamic, input:Dynamic, output_size:Dynamic, ?args:python.VarArgs<Dynamic>):Dynamic;
	static public function upsample_trilinear3d(g:Dynamic, input:Dynamic, output_size:Dynamic, ?args:python.VarArgs<Dynamic>):Dynamic;
	static public function where(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function zeros(g:Dynamic, sizes:Dynamic, dtype:Dynamic, layout:Dynamic, device:Dynamic, ?pin_memory:Dynamic):Dynamic;
	static public function zeros_like(g:Dynamic, input:Dynamic, dtype:Dynamic, layout:Dynamic, device:Dynamic, ?pin_memory:Dynamic, ?memory_format:Dynamic):Dynamic;
}