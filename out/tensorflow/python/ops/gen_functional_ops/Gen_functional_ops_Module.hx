/* This file is generated, do not edit! */
package tensorflow.python.ops.gen_functional_ops;
@:pythonImport("tensorflow.python.ops.gen_functional_ops") extern class Gen_functional_ops_Module {
	static public function _InitOpDefLibrary():Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var __symbolic_gradient_outputs : Dynamic;
	static public var _op_def_lib : Dynamic;
	/**
		Computes the gradient function for function f via backpropagation.
		
		Args:
		  input: A list of `Tensor` objects. a list of input tensors of size N + M;
		  Tout: A list of `tf.DTypes` that has length `>= 1`.
		    the type list for the input list.
		  f: . The function we want to compute the gradient for.
		
		    The function 'f' must be a numerical function which takes N inputs and
		    produces M outputs. Its gradient function 'g', which is computed by
		    this SymbolicGradient op is a function taking N + M inputs and
		    produces N outputs.
		
		    I.e. if we have
		       (y1, y2, ..., y_M) = f(x1, x2, ..., x_N),
		    then, g is
		       (dL/dx1, dL/dx2, ..., dL/dx_N) = g(x1, x2, ..., x_N,
		                                         dL/dy1, dL/dy2, ..., dL/dy_M),
		
		    where L is a scalar-value function of (x1, x2, ..., xN) (e.g., the
		    loss function). dL/dx_i is the partial derivative of L with respect
		    to x_i.
		
		    (Needs some math expert to say the comment above better.)
		  name: A name for the operation (optional).
		
		Returns:
		  A list of `Tensor` objects of type `Tout`.
		  a list of output tensors of size N;
	**/
	static public function _symbolic_gradient(input:Dynamic, Tout:Dynamic, f:Dynamic, ?name:Dynamic):Dynamic;
}