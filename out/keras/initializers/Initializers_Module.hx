/* This file is generated, do not edit! */
package keras.initializers;
@:pythonImport("keras.initializers") extern class Initializers_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Computes the number of input and output units for a weight shape.
		
		# Arguments
		    shape: Integer shape tuple.
		    data_format: Image data format to use for convolution kernels.
		        Note that all kernels in Keras are standardized on the
		        `channels_last` ordering (even when inputs are set
		        to `channels_first`).
		
		# Returns
		    A tuple of scalars, `(fan_in, fan_out)`.
		
		# Raises
		    ValueError: in case of invalid `data_format` argument.
	**/
	static public function _compute_fans(shape:Dynamic, ?data_format:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public function deserialize(config:Dynamic, ?custom_objects:Dynamic):Dynamic;
	static public function deserialize_keras_object(identifier:Dynamic, ?module_objects:Dynamic, ?custom_objects:Dynamic, ?printable_module_name:Dynamic):Dynamic;
	static public var division : Dynamic;
	static public function get(identifier:Dynamic):Dynamic;
	/**
		Glorot normal initializer, also called Xavier normal initializer.
		
		It draws samples from a truncated normal distribution centered on 0
		with `stddev = sqrt(2 / (fan_in + fan_out))`
		where `fan_in` is the number of input units in the weight tensor
		and `fan_out` is the number of output units in the weight tensor.
		
		# Arguments
		    seed: A Python integer. Used to seed the random generator.
		
		# Returns
		    An initializer.
		
		# References
		    Glorot & Bengio, AISTATS 2010
		    http://jmlr.org/proceedings/papers/v9/glorot10a/glorot10a.pdf
	**/
	static public function glorot_normal(?seed:Dynamic):Dynamic;
	/**
		Glorot uniform initializer, also called Xavier uniform initializer.
		
		It draws samples from a uniform distribution within [-limit, limit]
		where `limit` is `sqrt(6 / (fan_in + fan_out))`
		where `fan_in` is the number of input units in the weight tensor
		and `fan_out` is the number of output units in the weight tensor.
		
		# Arguments
		    seed: A Python integer. Used to seed the random generator.
		
		# Returns
		    An initializer.
		
		# References
		    Glorot & Bengio, AISTATS 2010
		    http://jmlr.org/proceedings/papers/v9/glorot10a/glorot10a.pdf
	**/
	static public function glorot_uniform(?seed:Dynamic):Dynamic;
	/**
		He normal initializer.
		
		It draws samples from a truncated normal distribution centered on 0
		with `stddev = sqrt(2 / fan_in)`
		where `fan_in` is the number of input units in the weight tensor.
		
		# Arguments
		    seed: A Python integer. Used to seed the random generator.
		
		# Returns
		    An initializer.
		
		# References
		    He et al., http://arxiv.org/abs/1502.01852
	**/
	static public function he_normal(?seed:Dynamic):Dynamic;
	/**
		He uniform variance scaling initializer.
		
		It draws samples from a uniform distribution within [-limit, limit]
		where `limit` is `sqrt(6 / fan_in)`
		where `fan_in` is the number of input units in the weight tensor.
		
		# Arguments
		    seed: A Python integer. Used to seed the random generator.
		
		# Returns
		    An initializer.
		
		# References
		    He et al., http://arxiv.org/abs/1502.01852
	**/
	static public function he_uniform(?seed:Dynamic):Dynamic;
	/**
		LeCun normal initializer.
		
		It draws samples from a truncated normal distribution centered on 0
		with `stddev = sqrt(1 / fan_in)`
		where `fan_in` is the number of input units in the weight tensor.
		
		# Arguments
		    seed: A Python integer. Used to seed the random generator.
		
		# Returns
		    An initializer.
		
		# References
		    - [Self-Normalizing Neural Networks](https://arxiv.org/abs/1706.02515)
		    - [Efficient Backprop](http://yann.lecun.com/exdb/publis/pdf/lecun-98b.pdf)
	**/
	static public function lecun_normal(?seed:Dynamic):Dynamic;
	/**
		LeCun uniform initializer.
		
		It draws samples from a uniform distribution within [-limit, limit]
		where `limit` is `sqrt(3 / fan_in)`
		where `fan_in` is the number of input units in the weight tensor.
		
		# Arguments
		    seed: A Python integer. Used to seed the random generator.
		
		# Returns
		    An initializer.
		
		# References
		    LeCun 98, Efficient Backprop,
		    http://yann.lecun.com/exdb/publis/pdf/lecun-98b.pdf
	**/
	static public function lecun_uniform(?seed:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	static public function serialize(initializer:Dynamic):Dynamic;
	static public function serialize_keras_object(instance:Dynamic):Dynamic;
}