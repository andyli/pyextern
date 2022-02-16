/* This file is generated, do not edit! */
package tensorflow.python.keras.mixed_precision.loss_scale_optimizer;
@:pythonImport("tensorflow.python.keras.mixed_precision.loss_scale_optimizer") extern class Loss_scale_optimizer_Module {
	static public var _DEFAULT_GROWTH_STEPS : Dynamic;
	static public var _DEFAULT_INITIAL_SCALE : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Assigns a value to a variable if the value is finite.
	**/
	static public function _assign_if_finite(_var:Dynamic, value:Dynamic):Dynamic;
	/**
		Returns a scalar boolean tensor indicating if all gradients are finite.
	**/
	static public function _is_all_finite(grads:Dynamic):Dynamic;
	/**
		Multiply a (possibly sparse) gradient by the given scale factor.
	**/
	static public function _multiply_gradient(gradient:Dynamic, scale:Dynamic):Dynamic;
	/**
		Returns the tensor's op in graph mode, or the tensor in eager mode.
		
		This is useful because sometimes an op is needed in graph mode instead of a
		tensor. In eager mode, there are no ops.
		
		Args:
		  tensor: A tensor.
		
		Returns:
		  The tensor's op in graph mode. The tensor in eager mode.
	**/
	static public function _op_in_graph_mode(tensor:Dynamic):Dynamic;
	static public function keras_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Returns True if the current Strategy supports loss scaling.
	**/
	static public function strategy_supports_loss_scaling():Dynamic;
}