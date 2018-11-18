/* This file is generated, do not edit! */
package tensorflow.contrib.gan.python.features.python.random_tensor_pool_impl;
@:pythonImport("tensorflow.contrib.gan.python.features.python.random_tensor_pool_impl") extern class Random_tensor_pool_impl_Module {
	static public var __all__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _to_list(x:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
	/**
		Queue storing input values and returning random previously stored ones.
		
		Every time the returned `output_value` is evaluated, `input_value` is
		evaluated and its value either directly returned (with
		`1-pooling_probability`) or stored in the pool and a random one of the samples
		currently in the pool is popped and returned. As long as the pool in not fully
		filled, the input_value is always directly returned, as well as stored in the
		pool. Note during inference / testing, it may be appropriate to set
		`pool_size` = 0 or `pooling_probability` = 0.
		
		Args:
		  input_values: An arbitrarily nested structure of `tf.Tensors`, from which to
		    read values to be pooled.
		  pool_size: An integer specifying the maximum size of the pool. Defaults to
		    50.
		  pooling_probability: A float `Tensor` specifying the probability of getting
		    a value from the pool, as opposed to just the current input.
		  name: A string prefix for the name scope for all tensorflow ops.
		
		Returns:
		  A nested structure of `Tensor` objects with the same structure as
		  `input_values`. With the given probability, the Tensor values are either the
		  same as in `input_values` or a randomly chosen sample that was previously
		  inserted in the pool.
		
		Raises:
		  ValueError: If `pool_size` is negative.
	**/
	static public function tensor_pool(input_values:Dynamic, ?pool_size:Dynamic, ?pooling_probability:Dynamic, ?name:Dynamic):Dynamic;
}