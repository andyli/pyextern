/* This file is generated, do not edit! */
package torch.onnx;
@:pythonImport("torch.onnx") extern class Onnx_Module {
	static public var ONNX_ARCHIVE_MODEL_PROTO_NAME : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __path__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function _export_to_pretty_string(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function _optimize_trace(trace:Dynamic, operator_export_type:Dynamic):Dynamic;
	static public function _run_symbolic_function(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function _run_symbolic_method(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function _symbolic_override_wrapper_maker(symbolic_fn:Dynamic, might_trace:Dynamic, fn:Dynamic):Dynamic;
	static public function export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function export_to_pretty_string(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function set_training(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Decorator to override ONNX export of the a function with specified subgraph.
		
		Effectively allows to attach symbolic() implementation to an arbitrary
		python function or autograd.Function. Requirements for the decorated
		function:
		 - being non-member function or autograd.Function
		 - positional inputs are Tensors or (nested) lists or tuples of
		   them (similar requirement to NestedIOFunction)
		 - outputs are similarly Tensors or (nested) lists or tuples of them
		 - non-tensor typed values should be keyword arguments both in definition
		   and when called
		
		Example usage:
		
		```
		def symb(g, x, y):
		    return g.op('Sum', x, y[0], y[1])
		
		@symbolic_override(symb)
		def foo(x, y):
		    return x + y[0] + y[1]
		```
	**/
	static public function symbolic_override(symbolic_fn:Dynamic):Dynamic;
	/**
		Decorator to override ONNX export of the a function with specified subgraph.
		
		Equivalent to :func:`symbolic_override` but checks only the first argument
		of the function to figure out whether the tracing is on. Thus the first arg
		needs to be a Tensor.
	**/
	static public function symbolic_override_first_arg_based(symbolic_fn:Dynamic):Dynamic;
	/**
		Decorator to override ONNX export of the a function with specified subgraph.
		
		Equivalent to :func:`symbolic_override` but checks only the first argument
		of the function to figure out whether the tracing is on. Thus the first arg
		needs to be a Tensor.
	**/
	static public function symbolic_override_packed_sequence_based(symbolic_fn:Dynamic):Dynamic;
}