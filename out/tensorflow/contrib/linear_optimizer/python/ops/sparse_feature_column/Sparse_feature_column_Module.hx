/* This file is generated, do not edit! */
package tensorflow.contrib.linear_optimizer.python.ops.sparse_feature_column;
@:pythonImport("tensorflow.contrib.linear_optimizer.python.ops.sparse_feature_column") extern class Sparse_feature_column_Module {
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
		Converts the given `value` to an `Tensor`.
		
		This function converts Python objects of various types to `Tensor`
		objects. It accepts `Tensor` objects, numpy arrays, Python lists,
		and Python scalars. For example:
		
		This function can be useful when composing a new operation in Python
		All standard Python op constructors apply this function to each of their
		Tensor-valued inputs, which allows those ops to accept numpy arrays, Python
		lists, and scalars in addition to `Tensor` objects.
		
		Args:
		  value: An object whose type has a registered `Tensor` conversion function.
		  dtype: Optional element type for the returned tensor. If missing, the
		    type is inferred from the type of `value`.
		  name: Optional name to use if a new `Tensor` is created.
		  as_ref: True if we want the mutable view of Variables, if applicable.
		  preferred_dtype: Optional element type for the returned tensor,
		    used when dtype is None. In some cases, a caller may not have a
		    dtype in mind when converting to a tensor, so preferred_dtype
		    can be used as a soft preference.  If the conversion to
		    `preferred_dtype` is not possible, this argument has no effect.
		
		Returns:
		  A `Tensor` based on `value`.
		
		Raises:
		  TypeError: If no conversion function is registered for `value`.
		  RuntimeError: If a registered conversion function returns an invalid value.
	**/
	static public function internal_convert_to_tensor(value:Dynamic, ?dtype:Dynamic, ?name:Dynamic, ?as_ref:Dynamic, ?preferred_dtype:Dynamic):Dynamic;
	/**
		Returns a context manager for use when defining a Python op.
		
		This context manager validates that the given `values` are from the
		same graph, makes that graph the default graph, and pushes a
		name scope in that graph (see
		@{tf.Graph.name_scope}
		for more details on that).
		
		For example, to define a new Python op called `my_op`:
		
		```python
		def my_op(a, b, c, name=None):
		  with tf.name_scope(name, "MyOp", [a, b, c]) as scope:
		    a = tf.convert_to_tensor(a, name="a")
		    b = tf.convert_to_tensor(b, name="b")
		    c = tf.convert_to_tensor(c, name="c")
		    # Define some computation that uses `a`, `b`, and `c`.
		    return foo_op(..., name=scope)
		```
		
		Args:
		  name: The name argument that is passed to the op function.
		  default_name: The default name to use if the `name` argument is `None`.
		  values: The list of `Tensor` arguments that are passed to the op function.
		
		Returns:
		  A context manager for use in defining Python ops. Yields the name scope.
		
		Raises:
		  ValueError: if neither `name` nor `default_name` is provided
		    but `values` are.
	**/
	static public function name_scope(name:Dynamic, ?default_name:Dynamic, ?values:Dynamic):Dynamic;
	static public var print_function : Dynamic;
}