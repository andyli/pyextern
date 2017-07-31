/* This file is generated, do not edit! */
package tensorflow.python.ops.script_ops;
@:pythonImport("tensorflow.python.ops.script_ops") extern class Script_ops_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _py_funcs(token:Dynamic, args:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
	/**
		Wraps a python function and uses it as a TensorFlow op.
		
		Given a python function `func`, which takes numpy arrays as its
		inputs and returns numpy arrays as its outputs, wrap this function as an
		operation in a TensorFlow graph. The following snippet constructs a simple
		TensorFlow graph that invokes the `np.sinh()` NumPy function as a operation
		in the graph:
		
		```python
		def my_func(x):
		  # x will be a numpy array with the contents of the placeholder below
		  return np.sinh(x)
		inp = tf.placeholder(tf.float32)
		y = tf.py_func(my_func, [inp], tf.float32)
		```
		
		**N.B.** The `tf.py_func()` operation has the following known limitations:
		
		* The body of the function (i.e. `func`) will not be serialized in a
		  `GraphDef`. Therefore, you should not use this function if you need to
		  serialize your model and restore it in a different environment.
		
		* The operation must run in the same address space as the Python program
		  that calls `tf.py_func()`. If you are using distributed TensorFlow, you
		  must run a `tf.train.Server` in the same process as the program that calls
		  `tf.py_func()` and you must pin the created operation to a device in that
		  server (e.g. using `with tf.device():`).
		
		Args:
		  func: A Python function, which accepts a list of NumPy `ndarray` objects
		    having element types that match the corresponding `tf.Tensor` objects
		    in `inp`, and returns a list of `ndarray` objects (or a single `ndarray`)
		    having element types that match the corresponding values in `Tout`.
		  inp: A list of `Tensor` objects.
		  Tout: A list or tuple of tensorflow data types or a single tensorflow data
		    type if there is only one, indicating what `func` returns.
		  stateful: (Boolean.) If True, the function should be considered stateful.
		    If a function is stateless, when given the same input it will return the
		    same output and have no observable side effects. Optimizations such as
		    common subexpression elimination are only performed on stateless
		    operations.
		  name: A name for the operation (optional).
		
		Returns:
		  A list of `Tensor` or a single `Tensor` which `func` computes.
	**/
	static public function py_func(func:Dynamic, inp:Dynamic, Tout:Dynamic, ?stateful:Dynamic, ?name:Dynamic):Dynamic;
}