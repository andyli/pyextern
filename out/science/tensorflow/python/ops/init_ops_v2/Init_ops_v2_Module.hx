/* This file is generated, do not edit! */
package tensorflow.python.ops.init_ops_v2;
@:pythonImport("tensorflow.python.ops.init_ops_v2") extern class Init_ops_v2_Module {
	static public var _PARTITION_OFFSET : Dynamic;
	static public var _PARTITION_SHAPE : Dynamic;
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
		  A tuple of integer scalars (fan_in, fan_out).
	**/
	static public function _compute_fans(shape:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	/**
		He normal initializer.
		
		Initializers allow you to pre-specify an initialization strategy, encoded in
		the Initializer object, without knowing the shape and dtype of the variable
		being initialized.
		
		It draws samples from a truncated normal distribution centered on 0 with
		`stddev = sqrt(2 / fan_in)` where `fan_in` is the number of input units in the
		weight tensor.
		
		Examples:
		
		>>> def make_variables(k, initializer):
		...   return (tf.Variable(initializer(shape=[k, k], dtype=tf.float32)),
		...           tf.Variable(initializer(shape=[k, k, k], dtype=tf.float32)))
		>>> v1, v2 = make_variables(3, tf.initializers.he_normal())
		>>> v1
		<tf.Variable ... shape=(3, 3) ...
		>>> v2
		<tf.Variable ... shape=(3, 3, 3) ...
		>>> make_variables(4, tf.initializers.RandomNormal())
		(<tf.Variable ... shape=(4, 4) dtype=float32...
		 <tf.Variable ... shape=(4, 4, 4) dtype=float32...
		
		Args:
		  seed: A Python integer. Used to seed the random generator.
		
		Returns:
		  A callable Initializer with `shape` and `dtype` arguments which generates a
		  tensor.
		
		References:
		    [He et al., 2015](https://www.cv-foundation.org/openaccess/content_iccv_2015/html/He_Delving_Deep_into_ICCV_2015_paper.html) # pylint: disable=line-too-long
		    ([pdf](https://www.cv-foundation.org/openaccess/content_iccv_2015/papers/He_Delving_Deep_into_ICCV_2015_paper.pdf))
	**/
	static public function he_normal(?seed:Dynamic):Dynamic;
	/**
		He uniform variance scaling initializer.
		
		Initializers allow you to pre-specify an initialization strategy, encoded in
		the Initializer object, without knowing the shape and dtype of the variable
		being initialized.
		
		Draws samples from a uniform distribution within [-limit, limit] where `limit`
		is `sqrt(6 / fan_in)` where `fan_in` is the number of input units in the
		weight tensor.
		
		Examples:
		
		>>> def make_variables(k, initializer):
		...   return (tf.Variable(initializer(shape=[k, k], dtype=tf.float32)),
		...           tf.Variable(initializer(shape=[k, k, k], dtype=tf.float32)))
		>>> v1, v2 = make_variables(3, tf.initializers.he_uniform())
		>>> v1
		<tf.Variable ... shape=(3, 3) ...
		>>> v2
		<tf.Variable ... shape=(3, 3, 3) ...
		>>> make_variables(4, tf.initializers.RandomNormal())
		(<tf.Variable ... shape=(4, 4) dtype=float32...
		 <tf.Variable ... shape=(4, 4, 4) dtype=float32...
		
		Args:
		  seed: A Python integer. Used to seed the random generator.
		
		Returns:
		  A callable Initializer with `shape` and `dtype` arguments which generates a
		  tensor.
		
		References:
		    [He et al., 2015](https://www.cv-foundation.org/openaccess/content_iccv_2015/html/He_Delving_Deep_into_ICCV_2015_paper.html) # pylint: disable=line-too-long
		    ([pdf](https://www.cv-foundation.org/openaccess/content_iccv_2015/papers/He_Delving_Deep_into_ICCV_2015_paper.pdf))
	**/
	static public function he_uniform(?seed:Dynamic):Dynamic;
	/**
		LeCun normal initializer.
		
		Initializers allow you to pre-specify an initialization strategy, encoded in
		the Initializer object, without knowing the shape and dtype of the variable
		being initialized.
		
		Draws samples from a truncated normal distribution centered on 0 with `stddev
		= sqrt(1 / fan_in)` where `fan_in` is the number of input units in the weight
		tensor.
		
		Examples:
		
		>>> def make_variables(k, initializer):
		...   return (tf.Variable(initializer(shape=[k, k], dtype=tf.float32)),
		...           tf.Variable(initializer(shape=[k, k, k], dtype=tf.float32)))
		>>> v1, v2 = make_variables(3, tf.initializers.lecun_normal())
		>>> v1
		<tf.Variable ... shape=(3, 3) ...
		>>> v2
		<tf.Variable ... shape=(3, 3, 3) ...
		>>> make_variables(4, tf.initializers.RandomNormal())
		(<tf.Variable ... shape=(4, 4) dtype=float32...
		 <tf.Variable ... shape=(4, 4, 4) dtype=float32...
		
		Args:
		  seed: A Python integer. Used to seed the random generator.
		
		Returns:
		  A callable Initializer with `shape` and `dtype` arguments which generates a
		  tensor.
		
		References:
		    - Self-Normalizing Neural Networks,
		    [Klambauer et al., 2017]
		    (https://papers.nips.cc/paper/6698-self-normalizing-neural-networks)
		    ([pdf]
		    (https://papers.nips.cc/paper/6698-self-normalizing-neural-networks.pdf))
		    - Efficient Backprop,
		    [Lecun et al., 1998](http://yann.lecun.com/exdb/publis/pdf/lecun-98b.pdf)
	**/
	static public function lecun_normal(?seed:Dynamic):Dynamic;
	/**
		LeCun uniform initializer.
		
		Initializers allow you to pre-specify an initialization strategy, encoded in
		the Initializer object, without knowing the shape and dtype of the variable
		being initialized.
		
		Draws samples from a uniform distribution within [-limit, limit] where `limit`
		is `sqrt(3 / fan_in)` where `fan_in` is the number of input units in the
		weight tensor.
		
		Examples:
		
		>>> def make_variables(k, initializer):
		...   return (tf.Variable(initializer(shape=[k, k], dtype=tf.float32)),
		...           tf.Variable(initializer(shape=[k, k, k], dtype=tf.float32)))
		>>> v1, v2 = make_variables(3, tf.initializers.lecun_uniform())
		>>> v1
		<tf.Variable ... shape=(3, 3) ...
		>>> v2
		<tf.Variable ... shape=(3, 3, 3) ...
		>>> make_variables(4, tf.initializers.RandomNormal())
		(<tf.Variable ... shape=(4, 4) dtype=float32...
		 <tf.Variable ... shape=(4, 4, 4) dtype=float32...
		
		Args:
		  seed: A Python integer. Used to seed the random generator.
		
		Returns:
		  A callable Initializer with `shape` and `dtype` arguments which generates a
		  tensor.
		
		References:
		    - Self-Normalizing Neural Networks,
		    [Klambauer et al., 2017](https://papers.nips.cc/paper/6698-self-normalizing-neural-networks) # pylint: disable=line-too-long
		    ([pdf](https://papers.nips.cc/paper/6698-self-normalizing-neural-networks.pdf))
		    - Efficient Backprop,
		    [Lecun et al., 1998](http://yann.lecun.com/exdb/publis/pdf/lecun-98b.pdf)
	**/
	static public function lecun_uniform(?seed:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}