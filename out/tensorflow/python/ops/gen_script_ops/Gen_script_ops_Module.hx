/* This file is generated, do not edit! */
package tensorflow.python.ops.gen_script_ops;
@:pythonImport("tensorflow.python.ops.gen_script_ops") extern class Gen_script_ops_Module {
	static public function _InitOpDefLibrary():Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __py_func_outputs : Dynamic;
	static public var __py_func_stateless_outputs : Dynamic;
	static public var __spec__ : Dynamic;
	static public var _op_def_lib : Dynamic;
	/**
		Invokes a python function to compute func(input)->output.
		
		This operation is considered stateful. For a stateless version, see
		PyFuncStateless.
		
		Args:
		  input: A list of `Tensor` objects.
		    List of Tensors that will provide input to the Op.
		  token: A `string`.
		    A token representing a registered python function in this address space.
		  Tout: A list of `tf.DTypes` that has length `>= 1`.
		    Data types of the outputs from the op.
		    The length of the list specifies the number of outputs.
		  name: A name for the operation (optional).
		
		Returns:
		  A list of `Tensor` objects of type `Tout`. The outputs from the Op.
	**/
	static public function _py_func(input:Dynamic, token:Dynamic, Tout:Dynamic, ?name:Dynamic):Dynamic;
	/**
		A stateless version of PyFunc.
		
		Args:
		  input: A list of `Tensor` objects.
		  token: A `string`.
		  Tout: A list of `tf.DTypes` that has length `>= 1`.
		  name: A name for the operation (optional).
		
		Returns:
		  A list of `Tensor` objects of type `Tout`.
	**/
	static public function _py_func_stateless(input:Dynamic, token:Dynamic, Tout:Dynamic, ?name:Dynamic):Dynamic;
}