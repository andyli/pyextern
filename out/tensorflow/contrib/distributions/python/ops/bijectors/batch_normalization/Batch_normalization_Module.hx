/* This file is generated, do not edit! */
package tensorflow.contrib.distributions.python.ops.bijectors.batch_normalization;
@:pythonImport("tensorflow.contrib.distributions.python.ops.bijectors.batch_normalization") extern class Batch_normalization_Module {
	static public var __all__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Inverse of tf.nn.batch_normalization. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed after 2018-10-01.
		Instructions for updating:
		The TensorFlow Distributions library has moved to TensorFlow Probability (https://github.com/tensorflow/probability). You should update all references to use `tfp.distributions` instead of `tf.contrib.distributions`.
		
		Args:
		  x: Input `Tensor` of arbitrary dimensionality.
		  mean: A mean `Tensor`.
		  variance: A variance `Tensor`.
		  offset: An offset `Tensor`, often denoted `beta` in equations, or
		    None. If present, will be added to the normalized tensor.
		  scale: A scale `Tensor`, often denoted `gamma` in equations, or
		    `None`. If present, the scale is applied to the normalized tensor.
		  variance_epsilon: A small `float` added to the minibatch `variance` to
		    prevent dividing by zero.
		  name: A name for this operation (optional).
		
		Returns:
		  batch_unnormalized: The de-normalized, de-scaled, de-offset `Tensor`.
	**/
	static public function _undo_batch_normalization(x:Dynamic, mean:Dynamic, variance:Dynamic, offset:Dynamic, scale:Dynamic, variance_epsilon:Dynamic, ?name:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
}