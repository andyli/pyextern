/* This file is generated, do not edit! */
package tensorflow.contrib.nn.python.ops.alpha_dropout;
@:pythonImport("tensorflow.contrib.nn.python.ops.alpha_dropout") extern class Alpha_dropout_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Computes alpha dropout.
		
		Alpha Dropout is a dropout that maintains the self-normalizing property. For
		an input with zero mean and unit standard deviation, the output of
		Alpha Dropout maintains the original mean and standard deviation of the input.
		
		See [Self-Normalizing Neural Networks](https://arxiv.org/abs/1706.02515)
		
		Args:
		  x: A tensor.
		  keep_prob: A scalar `Tensor` with the same type as x. The probability
		    that each element is kept.
		  noise_shape: A 1-D `Tensor` of type `int32`, representing the
		    shape for randomly generated keep/drop flags.
		  seed: A Python integer. Used to create random seeds. See
		    `tf.set_random_seed` for behavior.
		  name: A name for this operation (optional).
		
		Returns:
		  A Tensor of the same shape of `x`.
		
		Raises:
		  ValueError: If `keep_prob` is not in `(0, 1]`.
	**/
	static public function alpha_dropout(x:Dynamic, keep_prob:Dynamic, ?noise_shape:Dynamic, ?seed:Dynamic, ?name:Dynamic):Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
}