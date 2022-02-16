/* This file is generated, do not edit! */
package torch.onnx.symbolic_opset14;
@:pythonImport("torch.onnx.symbolic_opset14") extern class Symbolic_opset14_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function batch_norm(g:Dynamic, input:Dynamic, weight:Dynamic, bias:Dynamic, running_mean:Dynamic, running_var:Dynamic, training:Dynamic, momentum:Dynamic, eps:Dynamic, cudnn_enabled:Dynamic):Dynamic;
	static public function hardswish(g:Dynamic, self:Dynamic):Dynamic;
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
	static public function reshape(g:Dynamic, self:Dynamic, shape:Dynamic):Dynamic;
	static public function tril(g:Dynamic, self:Dynamic, diagonal:Dynamic, ?out:Dynamic):Dynamic;
	static public function triu(g:Dynamic, self:Dynamic, diagonal:Dynamic, ?out:Dynamic):Dynamic;
}