/* This file is generated, do not edit! */
package tensorflow.python.ops.numpy_ops.np_config;
@:pythonImport("tensorflow.python.ops.numpy_ops.np_config") extern class Np_config_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	/**
		Enable NumPy behavior on Tensors.
		
		Enabling NumPy behavior has three effects:
		* It adds to `tf.Tensor` some common NumPy methods such as `T`,
		  `reshape` and `ravel`.
		* It changes dtype promotion in `tf.Tensor` operators to be
		  compatible with NumPy. For example,
		  `tf.ones([], tf.int32) + tf.ones([], tf.float32)` used to throw a
		  "dtype incompatible" error, but after this it will return a
		  float64 tensor (obeying NumPy's promotion rules).
		* It enhances `tf.Tensor`'s indexing capability to be on par with
		  [NumPy's](https://numpy.org/doc/stable/reference/arrays.indexing.html).
		
		Args:
		  prefer_float32: Controls whether dtype inference will use float32
		  for Python floats, or float64 (the default and the
		  NumPy-compatible behavior).
	**/
	static public function enable_numpy_behavior(?prefer_float32:Dynamic):Dynamic;
	static public var print_function : Dynamic;
}