/* This file is generated, do not edit! */
package tensorflow.compat.v2.experimental.numpy.random;
@:pythonImport("tensorflow.compat.v2.experimental.numpy.random") extern class Random_Module {
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
		TensorFlow variant of NumPy's `random.poisson`.
		
		See the NumPy documentation for [`numpy.random.poisson`](https://numpy.org/doc/1.16/reference/generated/numpy.random.poisson.html).
	**/
	static public function poisson(?lam:Dynamic, ?size:Dynamic):Dynamic;
	/**
		TensorFlow variant of NumPy's `random.rand`.
		
		See the NumPy documentation for [`numpy.random.rand`](https://numpy.org/doc/1.16/reference/generated/numpy.random.rand.html).
	**/
	static public function rand(?size:python.VarArgs<Dynamic>):Dynamic;
	/**
		TensorFlow variant of NumPy's `random.randint`.
		
		See the NumPy documentation for [`numpy.random.randint`](https://numpy.org/doc/1.16/reference/generated/numpy.random.randint.html).
	**/
	static public function randint(low:Dynamic, ?high:Dynamic, ?size:Dynamic, ?dtype:Dynamic):Dynamic;
	/**
		TensorFlow variant of NumPy's `random.randn`.
		
		Returns samples from a normal distribution.
		
		  Uses `tf.random_normal`.
		
		  Args:
		    *args: The shape of the output array.
		
		  Returns:
		    An ndarray with shape `args` and dtype `float64`.
		  
		
		See the NumPy documentation for [`numpy.random.randn`](https://numpy.org/doc/1.16/reference/generated/numpy.random.randn.html).
	**/
	static public function randn(?args:python.VarArgs<Dynamic>):Dynamic;
	/**
		TensorFlow variant of NumPy's `random.random`.
		
		See the NumPy documentation for [`numpy.random.random`](https://numpy.org/doc/1.16/reference/generated/numpy.random.random.html).
	**/
	static public function random(?size:Dynamic):Dynamic;
	/**
		TensorFlow variant of NumPy's `random.seed`.
		
		Sets the seed for the random number generator.
		
		  Uses `tf.set_random_seed`.
		
		  Args:
		    s: an integer.
		  
		
		See the NumPy documentation for [`numpy.random.seed`](https://numpy.org/doc/1.16/reference/generated/numpy.random.seed.html).
	**/
	static public function seed(s:Dynamic):Dynamic;
	/**
		TensorFlow variant of NumPy's `random.standard_normal`.
		
		See the NumPy documentation for [`numpy.random.standard_normal`](https://numpy.org/doc/1.16/reference/generated/numpy.random.standard_normal.html).
	**/
	static public function standard_normal(?size:Dynamic):Dynamic;
	/**
		TensorFlow variant of NumPy's `random.uniform`.
		
		See the NumPy documentation for [`numpy.random.uniform`](https://numpy.org/doc/1.16/reference/generated/numpy.random.uniform.html).
	**/
	static public function uniform(?low:Dynamic, ?high:Dynamic, ?size:Dynamic):Dynamic;
}