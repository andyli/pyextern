/* This file is generated, do not edit! */
package tensorflow.python.ops.gen_script_ops;
@:pythonImport("tensorflow.python.ops.gen_script_ops") extern class Gen_script_ops_Module {
	/**
		Eagerly executes a python function to compute func(input)->output. The
		
		semantics of the input, output, and attributes are the same as those for
		PyFunc.
		
		Args:
		  input: A list of `Tensor` objects.
		  token: A `string`.
		  Tout: A list of `tf.DTypes`.
		  is_async: An optional `bool`. Defaults to `False`.
		  name: A name for the operation (optional).
		
		Returns:
		  A list of `Tensor` objects of type `Tout`.
	**/
	static public function EagerPyFunc(input:Dynamic, token:Dynamic, Tout:Dynamic, ?is_async:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Invokes a python function to compute func(input)->output.
		
		This operation is considered stateful. For a stateless version, see
		PyFuncStateless.
		
		Args:
		  input: A list of `Tensor` objects.
		    List of Tensors that will provide input to the Op.
		  token: A `string`.
		    A token representing a registered python function in this address space.
		  Tout: A list of `tf.DTypes`. Data types of the outputs from the op.
		    The length of the list specifies the number of outputs.
		  name: A name for the operation (optional).
		
		Returns:
		  A list of `Tensor` objects of type `Tout`.
	**/
	static public function PyFunc(input:Dynamic, token:Dynamic, Tout:Dynamic, ?name:Dynamic):Dynamic;
	/**
		A stateless version of PyFunc.
		
		Args:
		  input: A list of `Tensor` objects.
		  token: A `string`.
		  Tout: A list of `tf.DTypes`.
		  name: A name for the operation (optional).
		
		Returns:
		  A list of `Tensor` objects of type `Tout`.
	**/
	static public function PyFuncStateless(input:Dynamic, token:Dynamic, Tout:Dynamic, ?name:Dynamic):Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
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
		Eagerly executes a python function to compute func(input)->output. The
		
		semantics of the input, output, and attributes are the same as those for
		PyFunc.
		
		Args:
		  input: A list of `Tensor` objects.
		  token: A `string`.
		  Tout: A list of `tf.DTypes`.
		  is_async: An optional `bool`. Defaults to `False`.
		  name: A name for the operation (optional).
		
		Returns:
		  A list of `Tensor` objects of type `Tout`.
	**/
	static public function eager_py_func(input:Dynamic, token:Dynamic, Tout:Dynamic, ?is_async:Dynamic, ?name:Dynamic):Dynamic;
	static public function eager_py_func_eager_fallback(input:Dynamic, token:Dynamic, Tout:Dynamic, is_async:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Invokes a python function to compute func(input)->output.
		
		This operation is considered stateful. For a stateless version, see
		PyFuncStateless.
		
		Args:
		  input: A list of `Tensor` objects.
		    List of Tensors that will provide input to the Op.
		  token: A `string`.
		    A token representing a registered python function in this address space.
		  Tout: A list of `tf.DTypes`. Data types of the outputs from the op.
		    The length of the list specifies the number of outputs.
		  name: A name for the operation (optional).
		
		Returns:
		  A list of `Tensor` objects of type `Tout`.
	**/
	static public function py_func(input:Dynamic, token:Dynamic, Tout:Dynamic, ?name:Dynamic):Dynamic;
	static public function py_func_eager_fallback(input:Dynamic, token:Dynamic, Tout:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		A stateless version of PyFunc.
		
		Args:
		  input: A list of `Tensor` objects.
		  token: A `string`.
		  Tout: A list of `tf.DTypes`.
		  name: A name for the operation (optional).
		
		Returns:
		  A list of `Tensor` objects of type `Tout`.
	**/
	static public function py_func_stateless(input:Dynamic, token:Dynamic, Tout:Dynamic, ?name:Dynamic):Dynamic;
	static public function py_func_stateless_eager_fallback(input:Dynamic, token:Dynamic, Tout:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}