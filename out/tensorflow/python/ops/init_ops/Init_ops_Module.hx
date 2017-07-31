/* This file is generated, do not edit! */
package tensorflow.python.ops.init_ops;
@:pythonImport("tensorflow.python.ops.init_ops") extern class Init_ops_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Validate and return floating point type based on `dtype`.
		
		`dtype` must be a floating point type.
		
		Args:
		  dtype: The data type to validate.
		
		Returns:
		  Validated type.
		
		Raises:
		  ValueError: if `dtype` is not a floating point type.
	**/
	static public function _assert_float_dtype(dtype:Dynamic):Dynamic;
	/**
		Computes the number of input and output units for a weight shape.
		
		Arguments:
		  shape: Integer shape tuple or TF tensor shape.
		
		Returns:
		  A tuple of scalars (fan_in, fan_out).
	**/
	static public function _compute_fans(shape:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	/**
		The Glorot normal initializer, also called Xavier normal initializer.
		
		It draws samples from a truncated normal distribution centered on 0
		with `stddev = sqrt(2 / (fan_in + fan_out))`
		where `fan_in` is the number of input units in the weight tensor
		and `fan_out` is the number of output units in the weight tensor.
		
		Reference: http://jmlr.org/proceedings/papers/v9/glorot10a/glorot10a.pdf
		
		Arguments:
		  seed: A Python integer. Used to create random seeds. See
		    @{tf.set_random_seed}
		    for behavior.
		  dtype: The data type. Only floating point types are supported.
		
		Returns:
		  An initializer.
	**/
	static public function glorot_normal_initializer(?seed:Dynamic, ?dtype:Dynamic):Dynamic;
	/**
		The Glorot uniform initializer, also called Xavier uniform initializer.
		
		It draws samples from a uniform distribution within [-limit, limit]
		where `limit` is `sqrt(6 / (fan_in + fan_out))`
		where `fan_in` is the number of input units in the weight tensor
		and `fan_out` is the number of output units in the weight tensor.
		
		Reference: http://jmlr.org/proceedings/papers/v9/glorot10a/glorot10a.pdf
		
		Arguments:
		  seed: A Python integer. Used to create random seeds. See
		    @{tf.set_random_seed}
		    for behavior.
		  dtype: The data type. Only floating point types are supported.
		
		Returns:
		  An initializer.
	**/
	static public function glorot_uniform_initializer(?seed:Dynamic, ?dtype:Dynamic):Dynamic;
	static public var print_function : Dynamic;
}