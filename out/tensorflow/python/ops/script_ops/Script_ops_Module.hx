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
		Wraps a python function and uses it as a tensorflow op.
		
		Given a python function `func`, which takes numpy arrays as its
		inputs and returns numpy arrays as its outputs. E.g.,
		
		```python
		def my_func(x):
		  # x will be a numpy array with the contents of the placeholder below
		  return np.sinh(x)
		inp = tf.placeholder(tf.float32, [...])
		y = py_func(my_func, [inp], [tf.float32])
		```
		
		The above snippet constructs a tf graph which invokes a numpy
		sinh(x) as an op in the graph.
		
		Args:
		  func: A python function.
		  inp: A list of `Tensor`.
		  Tout: A list of tensorflow data types indicating what `func`
		        returns.
		  stateful: A boolean indicating whether the function should be considered
		            stateful or stateless. I.e. whether it, given the same input, will
		            return the same output and at the same time does not change state
		            in an observable way. Optimizations such as common subexpression
		            elimination are only possible when operations are stateless.
		  name: A name for the operation (optional).
		
		Returns:
		  A list of `Tensor` which `func` computes.
	**/
	static public function py_func(func:Dynamic, inp:Dynamic, Tout:Dynamic, ?stateful:Dynamic, ?name:Dynamic):Dynamic;
}