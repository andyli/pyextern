/* This file is generated, do not edit! */
package tensorflow.compat.v2.autograph;
@:pythonImport("tensorflow.compat.v2.autograph") extern class Autograph_Module {
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
		Sets the AutoGraph verbosity level.
		
		_Debug logging in AutoGraph_
		
		More verbose logging is useful to enable when filing bug reports or doing
		more in-depth debugging.
		
		There are two means to control the logging verbosity:
		
		 * The `set_verbosity` function
		
		 * The `AUTOGRAPH_VERBOSITY` environment variable
		
		`set_verbosity` takes precedence over the environment variable.
		
		For example:
		
		```python
		import os
		import tensorflow as tf
		
		os.environ['AUTOGRAPH_VERBOSITY'] = '5'
		# Verbosity is now 5
		
		tf.autograph.set_verbosity(0)
		# Verbosity is now 0
		
		os.environ['AUTOGRAPH_VERBOSITY'] = '1'
		# No effect, because set_verbosity was already called.
		```
		
		Logs entries are output to [absl](https://abseil.io)'s
		[default output](https://abseil.io/docs/python/guides/logging),
		with `INFO` level.
		Logs can be mirrored to stdout by using the `alsologtostdout` argument.
		Mirroring is enabled by default when Python runs in interactive mode.
		
		Args:
		  level: int, the verbosity level; larger values specify increased verbosity;
		    0 means no logging. When reporting bugs, it is recommended to set this
		    value to a larger number, like 10.
		  alsologtostdout: bool, whether to also output log messages to `sys.stdout`.
	**/
	static public function set_verbosity(level:Dynamic, ?alsologtostdout:Dynamic):Dynamic;
	/**
		Returns the source code generated by AutoGraph, as a string.
		
		Example usage:
		
		>>> def f(x):
		...   if x < 0:
		...     x = -x
		...   return x
		>>> tf.autograph.to_code(f)
		"...def tf__f(x):..."
		
		Also see: `tf.autograph.to_graph`.
		
		Note: If a function has been decorated with `tf.function`, pass its
		underlying Python function, rather than the callable that `tf.function
		creates:
		
		>>> @tf.function
		... def f(x):
		...   if x < 0:
		...     x = -x
		...   return x
		>>> tf.autograph.to_code(f.python_function)
		"...def tf__f(x):..."
		
		Args:
		  entity: Python callable or class to convert.
		  recursive: Whether to recursively convert any functions that the converted
		    function may call.
		  experimental_optional_features: `None`, a tuple of, or a single
		    `tf.autograph.experimental.Feature` value.
		
		Returns:
		  The converted code as string.
	**/
	static public function to_code(entity:Dynamic, ?recursive:Dynamic, ?experimental_optional_features:Dynamic):Dynamic;
	/**
		Converts a Python entity into a TensorFlow graph.
		
		Also see: `tf.autograph.to_code`, `tf.function`.
		
		Unlike `tf.function`, `to_graph` is a low-level transpiler that converts
		Python code to TensorFlow graph code. It does not implement any caching,
		variable management or create any actual ops, and is best used where greater
		control over the generated TensorFlow graph is desired. Another difference
		from `tf.function` is that `to_graph` will not wrap the graph into a
		TensorFlow function or a Python callable. Internally, `tf.function` uses
		`to_graph`.
		
		Example usage:
		
		>>> def f(x):
		...   if x > 0:
		...     y = x * x
		...   else:
		...     y = -x
		...   return y
		...
		>>> converted_f = to_graph(f)
		>>> x = tf.constant(2)
		>>> converted_f(x)  # converted_foo is like a TensorFlow Op.
		<tf.Tensor: shape=(), dtype=int32, numpy=4>
		
		Supported Python entities include:
		  * functions
		  * classes
		  * object methods
		
		Functions are converted into new functions with converted code.
		
		Classes are converted by generating a new class whose methods use converted
		code.
		
		Methods are converted into unbound function that have an additional first
		argument called `self`.
		
		For a tutorial, see the
		[tf.function and AutoGraph guide](https://www.tensorflow.org/guide/function).
		For more detailed information, see the
		[AutoGraph reference documentation](https://github.com/tensorflow/tensorflow/blob/master/tensorflow/python/autograph/g3doc/reference/index.md).
		
		Args:
		  entity: Python callable or class to convert.
		  recursive: Whether to recursively convert any functions that the converted
		    function may call.
		  experimental_optional_features: `None`, a tuple of, or a single
		    `tf.autograph.experimental.Feature` value.
		
		Returns:
		  Same as `entity`, the converted Python function or class.
		
		Raises:
		  ValueError: If the entity could not be converted.
	**/
	static public function to_graph(entity:Dynamic, ?recursive:Dynamic, ?experimental_optional_features:Dynamic):Dynamic;
	/**
		Traces argument information at compilation time.
		
		`trace` is useful when debugging, and it always executes during the tracing
		phase, that is, when the TF graph is constructed.
		
		_Example usage_
		
		```python
		import tensorflow as tf
		
		for i in tf.range(10):
		  tf.autograph.trace(i)
		# Output: <Tensor ...>
		```
		
		Args:
		  *args: Arguments to print to `sys.stdout`.
	**/
	static public function trace(?args:python.VarArgs<Dynamic>):Dynamic;
}