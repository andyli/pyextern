/* This file is generated, do not edit! */
package torch.onnx.symbolic_opset7;
@:pythonImport("torch.onnx.symbolic_opset7") extern class Symbolic_opset7_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _block_list_in_opset(name:Dynamic):Dynamic;
	static public function _div_rounding_mode(g:Dynamic, self:Dynamic, other:Dynamic, rounding_mode:Dynamic):Dynamic;
	static public function _floor_divide(g:Dynamic, self:Dynamic, other:Dynamic):Dynamic;
	static public function adaptive_max_pool1d(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function adaptive_max_pool2d(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function adaptive_max_pool3d(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var block_listed_op : Dynamic;
	static public var block_listed_operators : Dynamic;
	static public function div(g:Dynamic, self:Dynamic, other:Dynamic, ?args:python.VarArgs<Dynamic>):Dynamic;
	static public function expand(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function expand_as(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function max(g:Dynamic, self:Dynamic, ?dim_or_y:Dynamic, ?keepdim:Dynamic):Dynamic;
	static public function max_pool1d_with_indices(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function max_pool2d_with_indices(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function max_pool3d_with_indices(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function meshgrid(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function min(g:Dynamic, self:Dynamic, ?dim_or_y:Dynamic, ?keepdim:Dynamic):Dynamic;
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
	static public function scan(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}