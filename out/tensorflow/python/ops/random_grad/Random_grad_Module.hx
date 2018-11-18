/* This file is generated, do not edit! */
package tensorflow.python.ops.random_grad;
@:pythonImport("tensorflow.python.ops.random_grad") extern class Random_grad_Module {
	/**
		Returns the gradient of a Gamma sample w.r.t. alpha.
		
		The gradient is computed using implicit differentiation, see
		"Implicit Reparameterization Gradients" (https://arxiv.org/abs/1805.08498).
		
		Args:
		  op: A `RandomGamma` operation. We assume that the inputs to the operation
		    are `shape` and `alpha` tensors, and the output is the `sample` tensor.
		  grad: The incoming gradient `dloss / dsample` of the same shape as
		    `op.outputs[0]`.
		
		Returns:
		  A `Tensor` with derivatives `dloss / dalpha`
	**/
	static public function _RandomGammaGrad(op:Dynamic, grad:Dynamic):Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var absolute_import : Dynamic;
	static public function add_leading_unit_dimensions(x:Dynamic, num_dimensions:Dynamic):Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
}