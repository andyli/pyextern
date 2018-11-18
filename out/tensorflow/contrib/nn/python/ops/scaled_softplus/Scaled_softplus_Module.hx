/* This file is generated, do not edit! */
package tensorflow.contrib.nn.python.ops.scaled_softplus;
@:pythonImport("tensorflow.contrib.nn.python.ops.scaled_softplus") extern class Scaled_softplus_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Returns the gradient, sum-reduced and reshaped to `t`'s shape.
	**/
	static public function _reduce_and_reshape_grad(g:Dynamic, t:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
	/**
		Returns `y = alpha * ln(1 + exp(x / alpha))` or `min(y, clip)`.
		
		This can be seen as a softplus applied to the scaled input, with the output
		appropriately scaled. As `alpha` tends to 0, `scaled_softplus(x, alpha)` tends
		to `relu(x)`. The clipping is optional. As alpha->0, scaled_softplus(x, alpha)
		tends to relu(x), and scaled_softplus(x, alpha, clip=6) tends to relu6(x).
		
		Note: the gradient for this operation is defined to depend on the backprop
		inputs as well as the outputs of this operation.
		
		Args:
		  x: A `Tensor` of inputs.
		  alpha: A `Tensor`, indicating the amount of smoothness. The caller
		      must ensure that `alpha > 0`.
		  clip: (optional) A `Tensor`, the upper bound to clip the values.
		  name: A name for the scope of the operations (optional).
		
		Returns:
		  A tensor of the size and type determined by broadcasting of the inputs.
	**/
	static public function scaled_softplus(x:Dynamic, alpha:Dynamic, ?clip:Dynamic, ?name:Dynamic):Dynamic;
}