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
		
		Args:
		  shape: Integer shape tuple or TF tensor shape.
		
		Returns:
		  A tuple of scalars (fan_in, fan_out).
	**/
	static public function _compute_fans(shape:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Decorator for marking functions or methods deprecated.
		
		This decorator logs a deprecation warning whenever the decorated function is
		called. It has the following format:
		
		  <function> (from <module>) is deprecated and will be removed after <date>.
		  Instructions for updating:
		  <instructions>
		
		If `date` is None, 'after <date>' is replaced with 'in a future version'.
		<function> will include the class name if it is a method.
		
		It also edits the docstring of the function: ' (deprecated)' is appended
		to the first line of the docstring and a deprecation notice is prepended
		to the rest of the docstring.
		
		Args:
		  date: String or None. The date the function is scheduled to be removed.
		    Must be ISO 8601 (YYYY-MM-DD), or None.
		  instructions: String. Instructions on how to update code using the
		    deprecated function.
		  warn_once: Boolean. Set to `True` to warn only the first time the decorated
		    function is called. Otherwise, every call will log a warning.
		
		Returns:
		  Decorated function or method.
		
		Raises:
		  ValueError: If date is not None or in ISO 8601 format, or instructions are
		    empty.
	**/
	static public function deprecated(date:Dynamic, instructions:Dynamic, ?warn_once:Dynamic):Dynamic;
	/**
		Decorator for marking specific function argument values as deprecated.
		
		This decorator logs a deprecation warning whenever the decorated function is
		called with the deprecated argument values. It has the following format:
		
		  Calling <function> (from <module>) with <arg>=<value> is deprecated and
		  will be removed after <date>. Instructions for updating:
		    <instructions>
		
		If `date` is None, 'after <date>' is replaced with 'in a future version'.
		<function> will include the class name if it is a method.
		
		It also edits the docstring of the function: ' (deprecated arguments)' is
		appended to the first line of the docstring and a deprecation notice is
		prepended to the rest of the docstring.
		
		Args:
		  date: String or None. The date the function is scheduled to be removed.
		    Must be ISO 8601 (YYYY-MM-DD), or None
		  instructions: String. Instructions on how to update code using the
		    deprecated function.
		  warn_once: If `True`, warn only the first time this function is called with
		    deprecated argument values. Otherwise, every call (with a deprecated
		    argument value) will log a warning.
		  **deprecated_kwargs: The deprecated argument values.
		
		Returns:
		  Decorated function or method.
		
		Raises:
		  ValueError: If date is not None or in ISO 8601 format, or instructions are
		    empty.
	**/
	static public function deprecated_arg_values(date:Dynamic, instructions:Dynamic, ?warn_once:Dynamic, ?deprecated_kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var division : Dynamic;
	/**
		He normal initializer.
		
		It draws samples from a truncated normal distribution centered on 0
		with `stddev = sqrt(2 / fan_in)`
		where `fan_in` is the number of input units in the weight tensor.
		
		Arguments:
		    seed: A Python integer. Used to seed the random generator.
		
		Returns:
		    An initializer.
		
		References:
		    He et al., http://arxiv.org/abs/1502.01852
	**/
	static public function he_normal(?seed:Dynamic):Dynamic;
	/**
		He uniform variance scaling initializer.
		
		It draws samples from a uniform distribution within [-limit, limit]
		where `limit` is `sqrt(6 / fan_in)`
		where `fan_in` is the number of input units in the weight tensor.
		
		Arguments:
		    seed: A Python integer. Used to seed the random generator.
		
		Returns:
		    An initializer.
		
		References:
		    He et al., http://arxiv.org/abs/1502.01852
	**/
	static public function he_uniform(?seed:Dynamic):Dynamic;
	/**
		LeCun normal initializer.
		
		It draws samples from a truncated normal distribution centered on 0
		with `stddev = sqrt(1 / fan_in)`
		where `fan_in` is the number of input units in the weight tensor.
		
		Arguments:
		    seed: A Python integer. Used to seed the random generator.
		
		Returns:
		    An initializer.
		
		References:
		    - [Self-Normalizing Neural Networks](https://arxiv.org/abs/1706.02515)
		    - [Efficient
		    Backprop](http://yann.lecun.com/exdb/publis/pdf/lecun-98b.pdf)
	**/
	static public function lecun_normal(?seed:Dynamic):Dynamic;
	/**
		LeCun uniform initializer.
		
		It draws samples from a uniform distribution within [-limit, limit]
		where `limit` is `sqrt(3 / fan_in)`
		where `fan_in` is the number of input units in the weight tensor.
		
		Arguments:
		    seed: A Python integer. Used to seed the random generator.
		
		Returns:
		    An initializer.
		
		References:
		    LeCun 98, Efficient Backprop,
		    http://yann.lecun.com/exdb/publis/pdf/lecun-98b.pdf
	**/
	static public function lecun_uniform(?seed:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}