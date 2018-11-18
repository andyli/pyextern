/* This file is generated, do not edit! */
package torch.autograd._function;
@:pythonImport("torch.autograd.function") extern class _Function_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _iter_None_tensors(obj:Dynamic):Dynamic;
	static public function _iter_filter(condition:Dynamic, ?allow_unknown:Dynamic, ?condition_msg:Dynamic):Dynamic;
	static public function _iter_jit_values(obj:Dynamic):Dynamic;
	static public function _iter_tensors(obj:Dynamic):Dynamic;
	static public function _iter_tensors_permissive(obj:Dynamic):Dynamic;
	static public function _map_tensor_data(obj:Dynamic):Dynamic;
	static public function _nested_map(condition:Dynamic, fn:Dynamic, ?condition_msg:Dynamic):Dynamic;
	static public function _unflatten(input:Dynamic, proto:Dynamic):Dynamic;
	static public function once_differentiable(fn:Dynamic):Dynamic;
	/**
		Marks Function as traceable for the JIT.
		
		Traceable functions have additional restrictions - they can't pass any
		data-dependent values to backward (e.g. Prod passes the output, which makes
		it non-traceable), and their backward should be implemented entirely in terms
		of operations on autograd Tensors in all cases.
		
		DON'T USE THIS DECORATOR. IT IS FOR INTERNAL USE ONLY AND SHOULD BE HANDLED WITH
		CARE (or can give incorrect results otherwise).
	**/
	static public function traceable(fn_cls:Dynamic):Dynamic;
	/**
		Create a base class with a metaclass.
	**/
	static public function with_metaclass(meta:Dynamic, ?bases:python.VarArgs<Dynamic>):Dynamic;
}