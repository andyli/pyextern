/* This file is generated, do not edit! */
package tensorflow.contrib.linear_optimizer.python.ops.sdca_ops;
@:pythonImport("tensorflow.contrib.linear_optimizer.python.ops.sdca_ops") extern class Sdca_ops_Module {
	static public var __all__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Converts the given `value` to a `Tensor`.
		
		This function converts Python objects of various types to `Tensor`
		objects. It accepts `Tensor` objects, numpy arrays, Python lists,
		and Python scalars. For example:
		
		```python
		import numpy as np
		
		def my_func(arg):
		  arg = tf.convert_to_tensor(arg, dtype=tf.float32)
		  return tf.matmul(arg, arg) + arg
		
		# The following calls are equivalent.
		value_1 = my_func(tf.constant([[1.0, 2.0], [3.0, 4.0]]))
		value_2 = my_func([[1.0, 2.0], [3.0, 4.0]])
		value_3 = my_func(np.array([[1.0, 2.0], [3.0, 4.0]], dtype=np.float32))
		```
		
		This function can be useful when composing a new operation in Python
		(such as `my_func` in the example above). All standard Python op
		constructors apply this function to each of their Tensor-valued
		inputs, which allows those ops to accept numpy arrays, Python lists,
		and scalars in addition to `Tensor` objects.
		
		Args:
		  value: An object whose type has a registered `Tensor` conversion function.
		  dtype: Optional element type for the returned tensor. If missing, the
		    type is inferred from the type of `value`.
		  name: Optional name to use if a new `Tensor` is created.
		  as_ref: True if we want the result as a ref tensor. Only used if a new
		    `Tensor` is created.
		
		Returns:
		  A `Tensor` based on `value`.
		
		Raises:
		  TypeError: If no conversion function is registered for `value`.
		  RuntimeError: If a registered conversion function returns an invalid value.
	**/
	static public function convert_to_tensor(value:Dynamic, ?dtype:Dynamic, ?name:Dynamic, ?as_ref:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Loads a TensorFlow plugin, containing custom ops and kernels.
		
		Pass "library_filename" to a platform-specific mechanism for dynamically
		loading a library. The rules for determining the exact location of the
		library are platform-specific and are not documented here. When the
		library is loaded, ops and kernels registered in the library via the
		REGISTER_* macros are made available in the TensorFlow process. Note
		that ops with the same name as an existing op are rejected and not
		registered with the process.
		
		Args:
		  library_filename: Path to the plugin.
		    Relative or absolute filesystem path to a dynamic library file.
		
		Returns:
		  A python module containing the Python wrappers for Ops defined in
		  the plugin.
		
		Raises:
		  RuntimeError: when unable to load the library or get the python wrappers.
	**/
	static public function load_op_library(library_filename:Dynamic):Dynamic;
	/**
		Wrapper for `Graph.name_scope()` using the default graph.
		
		See
		[`Graph.name_scope()`](../../api_docs/python/framework.md#Graph.name_scope)
		for more details.
		
		Args:
		  name: A name for the scope.
		
		Returns:
		  A context manager that installs `name` as a new name scope in the
		  default graph.
	**/
	static public function name_scope(name:Dynamic):Dynamic;
	/**
		Returns a context manager for use when defining a Python op.
		
		This context manager validates that the given `values` are from the
		same graph, ensures that graph is the default graph, and pushes a
		name scope.
		
		For example, to define a new Python op called `my_op`:
		
		```python
		def my_op(a, b, c, name=None):
		  with tf.op_scope([a, b, c], name, "MyOp") as scope:
		    a = tf.convert_to_tensor(a, name="a")
		    b = tf.convert_to_tensor(b, name="b")
		    c = tf.convert_to_tensor(c, name="c")
		    # Define some computation that uses `a`, `b`, and `c`.
		    return foo_op(..., name=scope)
		```
		
		Args:
		  values: The list of `Tensor` arguments that are passed to the op function.
		  name: The name argument that is passed to the op function.
		  default_name: The default name to use if the `name` argument is `None`.
		
		Returns:
		  A context manager for use in defining Python ops. Yields the name scope.
		
		Raises:
		  ValueError: if neither `name` nor `default_name` is provided.
	**/
	static public function op_scope(values:Dynamic, name:Dynamic, ?default_name:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Computes sigmoid cross entropy given `logits`.
		
		Measures the probability error in discrete classification tasks in which each
		class is independent and not mutually exclusive.  For instance, one could
		perform multilabel classification where a picture can contain both an elephant
		and a dog at the same time.
		
		For brevity, let `x = logits`, `z = targets`.  The logistic loss is
		
		      z * -log(sigmoid(x)) + (1 - z) * -log(1 - sigmoid(x))
		    = z * -log(1 / (1 + exp(-x))) + (1 - z) * -log(exp(-x) / (1 + exp(-x)))
		    = z * log(1 + exp(-x)) + (1 - z) * (-log(exp(-x)) + log(1 + exp(-x)))
		    = z * log(1 + exp(-x)) + (1 - z) * (x + log(1 + exp(-x))
		    = (1 - z) * x + log(1 + exp(-x))
		    = x - x * z + log(1 + exp(-x))
		
		For x < 0, to avoid overflow in exp(-x), we reformulate the above
		
		      x - x * z + log(1 + exp(-x))
		    = log(exp(x)) - x * z + log(1 + exp(-x))
		    = - x * z + log(1 + exp(x))
		
		Hence, to ensure stability and avoid overflow, the implementation uses this
		equivalent formulation
		
		    max(x, 0) - x * z + log(1 + exp(-abs(x)))
		
		`logits` and `targets` must have the same type and shape.
		
		Args:
		  logits: A `Tensor` of type `float32` or `float64`.
		  targets: A `Tensor` of the same type and shape as `logits`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of the same shape as `logits` with the componentwise
		  logistic losses.
		
		Raises:
		  ValueError: If `logits` and `targets` do not have the same shape.
	**/
	static public function sigmoid_cross_entropy_with_logits(logits:Dynamic, targets:Dynamic, ?name:Dynamic):Dynamic;
}