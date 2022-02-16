/* This file is generated, do not edit! */
package tensorflow.compat.v2.summary.experimental;
@:pythonImport("tensorflow.compat.v2.summary.experimental") extern class Experimental_Module {
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
		Returns the default summary step for the current thread.
		
		Returns:
		  The step set by `tf.summary.experimental.set_step()` if one has been set,
		  otherwise None.
	**/
	static public function get_step():Dynamic;
	/**
		Sets the default summary step for the current thread.
		
		For convenience, this function sets a default value for the `step` parameter
		used in summary-writing functions elsewhere in the API so that it need not
		be explicitly passed in every such invocation. The value can be a constant
		or a variable, and can be retrieved via `tf.summary.experimental.get_step()`.
		
		Note: when using this with @tf.functions, the step value will be captured at
		the time the function is traced, so changes to the step outside the function
		will not be reflected inside the function unless using a `tf.Variable` step.
		
		Args:
		  step: An `int64`-castable default step value, or None to unset.
	**/
	static public function set_step(step:Dynamic):Dynamic;
	/**
		Experimental context manager for use when defining a custom summary op.
		
		This behaves similarly to `tf.name_scope`, except that it returns a generated
		summary tag in addition to the scope name. The tag is structurally similar to
		the scope name - derived from the user-provided name, prefixed with enclosing
		name scopes if any - but we relax the constraint that it be uniquified, as
		well as the character set limitation (so the user-provided name can contain
		characters not legal for scope names; in the scope name these are removed).
		
		This makes the summary tag more predictable and consistent for the user.
		
		For example, to define a new summary op called `my_op`:
		
		```python
		def my_op(name, my_value, step):
		  with tf.summary.summary_scope(name, "MyOp", [my_value]) as (tag, scope):
		    my_value = tf.convert_to_tensor(my_value)
		    return tf.summary.write(tag, my_value, step=step)
		```
		
		Args:
		  name: string name for the summary.
		  default_name: Optional; if provided, used as default name of the summary.
		  values: Optional; passed as `values` parameter to name_scope.
		
		Yields:
		  A tuple `(tag, scope)` as described above.
	**/
	static public function summary_scope(name:Dynamic, ?default_name:Dynamic, ?values:Dynamic):Dynamic;
	/**
		Writes a summary using raw `tf.compat.v1.Summary` protocol buffers.
		
		Experimental: this exists to support the usage of V1-style manual summary
		writing (via the construction of a `tf.compat.v1.Summary` protocol buffer)
		with the V2 summary writing API.
		
		Args:
		  tensor: the string Tensor holding one or more serialized `Summary` protobufs
		  step: Explicit `int64`-castable monotonic step value for this summary. If
		    omitted, this defaults to `tf.summary.experimental.get_step()`, which must
		    not be None.
		  name: Optional string name for this op.
		
		Returns:
		  True on success, or false if no summary was written because no default
		  summary writer was available.
		
		Raises:
		  ValueError: if a default writer exists, but no step was provided and
		    `tf.summary.experimental.get_step()` is None.
	**/
	static public function write_raw_pb(tensor:Dynamic, ?step:Dynamic, ?name:Dynamic):Dynamic;
}