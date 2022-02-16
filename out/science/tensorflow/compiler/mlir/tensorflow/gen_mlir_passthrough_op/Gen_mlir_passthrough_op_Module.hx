/* This file is generated, do not edit! */
package tensorflow.compiler.mlir.tensorflow.gen_mlir_passthrough_op;
@:pythonImport("tensorflow.compiler.mlir.tensorflow.gen_mlir_passthrough_op") extern class Gen_mlir_passthrough_op_Module {
	/**
		TODO: add doc.
		
		Args:
		  inputs: A list of `Tensor` objects.
		  mlir_module: A `string`.
		  Toutputs: A list of `tf.DTypes`.
		  name: A name for the operation (optional).
		
		Returns:
		  A list of `Tensor` objects of type `Toutputs`.
	**/
	static public function MlirPassthroughOp(inputs:Dynamic, mlir_module:Dynamic, Toutputs:Dynamic, ?name:Dynamic):Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Dispatch(self: tensorflow.python.framework._pywrap_python_api_dispatcher.PythonAPIDispatcher, arg0: handle, arg1: handle) -> object
	**/
	static public function _dispatcher_for_mlir_passthrough_op(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Decorator for marking endpoints deprecated.
		
		This decorator does not print deprecation messages.
		TODO(annarev): eventually start printing deprecation warnings when
		@deprecation_endpoints decorator is added.
		
		Args:
		  *args: Deprecated endpoint names.
		
		Returns:
		  A function that takes symbol as an argument and adds
		  _tf_deprecated_api_names to that symbol.
		  _tf_deprecated_api_names would be set to a list of deprecated
		  endpoint names for the symbol.
	**/
	static public function deprecated_endpoints(?args:python.VarArgs<Dynamic>):Dynamic;
	/**
		TODO: add doc.
		
		Args:
		  inputs: A list of `Tensor` objects.
		  mlir_module: A `string`.
		  Toutputs: A list of `tf.DTypes`.
		  name: A name for the operation (optional).
		
		Returns:
		  A list of `Tensor` objects of type `Toutputs`.
	**/
	static public function mlir_passthrough_op(inputs:Dynamic, mlir_module:Dynamic, Toutputs:Dynamic, ?name:Dynamic):Dynamic;
	static public function mlir_passthrough_op_eager_fallback(inputs:Dynamic, mlir_module:Dynamic, Toutputs:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}