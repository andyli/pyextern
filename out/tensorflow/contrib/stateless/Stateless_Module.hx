/* This file is generated, do not edit! */
package tensorflow.contrib.stateless;
@:pythonImport("tensorflow.contrib.stateless") extern class Stateless_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __path__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Outputs deterministic pseudorandom values from a normal distribution.
		
		The generated values will have mean 0 and standard deviation 1.
		
		The outputs are a deterministic function of `shape` and `seed`.
		
		Args:
		  shape: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    The shape of the output tensor.
		  seed: A `Tensor` of type `int64`. 2 seeds (shape [2]).
		  dtype: An optional `tf.DType` from: `tf.half, tf.float32, tf.float64`. Defaults to `tf.float32`.
		    The type of the output.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `dtype`. Random values with specified shape.
	**/
	static public function stateless_random_normal(shape:Dynamic, seed:Dynamic, ?dtype:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Outputs deterministic pseudorandom random values from a uniform distribution.
		
		The generated values follow a uniform distribution in the range `[0, 1)`. The
		lower bound 0 is included in the range, while the upper bound 1 is excluded.
		
		The outputs are a deterministic function of `shape` and `seed`.
		
		Args:
		  shape: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    The shape of the output tensor.
		  seed: A `Tensor` of type `int64`. 2 seeds (shape [2]).
		  dtype: An optional `tf.DType` from: `tf.half, tf.float32, tf.float64`. Defaults to `tf.float32`.
		    The type of the output.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `dtype`. Random values with specified shape.
	**/
	static public function stateless_random_uniform(shape:Dynamic, seed:Dynamic, ?dtype:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Outputs deterministic pseudorandom values from a truncated normal distribution.
		
		The generated values follow a normal distribution with mean 0 and standard
		deviation 1, except that values whose magnitude is more than 2 standard
		deviations from the mean are dropped and re-picked.
		
		The outputs are a deterministic function of `shape` and `seed`.
		
		Args:
		  shape: A `Tensor`. Must be one of the following types: `int32`, `int64`.
		    The shape of the output tensor.
		  seed: A `Tensor` of type `int64`. 2 seeds (shape [2]).
		  dtype: An optional `tf.DType` from: `tf.half, tf.float32, tf.float64`. Defaults to `tf.float32`.
		    The type of the output.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `dtype`. Random values with specified shape.
	**/
	static public function stateless_truncated_normal(shape:Dynamic, seed:Dynamic, ?dtype:Dynamic, ?name:Dynamic):Dynamic;
}