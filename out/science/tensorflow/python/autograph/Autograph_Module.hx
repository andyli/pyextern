/* This file is generated, do not edit! */
package tensorflow.python.autograph;
@:pythonImport("tensorflow.python.autograph") extern class Autograph_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __path__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var _allowed_symbols : Dynamic;
	/**
		Decorator that compiles a function to use TensorFlow ops.
		
		The decorator is dynamic - it recompiles the target whenever the decorated
		function is called. This means the parameter values are known at conversion.
		It also means that repeated calls with different types of parameters will be
		correctly processed.
		
		Args:
		  recursive: bool, whether to recursively convert any functions or classes
		    that the converted function may use.
		  optional_features: converted.Feature, allows toggling optional or
		    experimental features. When set to None, only the core features are
		    enabled.
		  user_requested: bool, whether this is a function that the user explicitly
		    asked to be converted. See ConversionOptions.user_requested.
		  conversion_ctx: Optional ag_ctx.ControlStatusCtx, the Autograph context in
		    which `f` is used.
		
		Returns:
		  Callable, a decorator that converts the given function into an equivalent
		  function that uses TensorFlow ops.
	**/
	static public function convert(?recursive:Dynamic, ?optional_features:Dynamic, ?user_requested:Dynamic, ?conversion_ctx:Dynamic):Dynamic;
	/**
		Converts a function call inline.
		
		For internal use only.
		
		Note: The argument list is optimized for readability of generated code, which
		may look like this:
		
		  ag__.converted_call(f, (arg1, arg2), None, fscope)
		  ag__.converted_call(f, (), dict(arg1=val1, **kwargs), fscope)
		  ag__.converted_call(f, (arg1, arg2) + varargs, dict(**kwargs), lscope)
		
		Args:
		  f: The function to convert.
		  args: Tuple, the original positional arguments of f
		  kwargs: Optional[Dict], the original keyword arguments of f
		  caller_fn_scope: Optional[function_wrappers.FunctionScope], the function
		    scope of the converted function in which this call was originally made.
		  options: Optional[converter.ConversionOptions], conversion options. If not
		    specified, the value of caller_fn_scope.callopts is used. Either options
		    or caller_fn_scope must be present.
		
		Returns:
		  Any, the result of executing a possibly-converted `f` with the given
		    arguments.
	**/
	static public function converted_call(f:Dynamic, args:Dynamic, kwargs:Dynamic, ?caller_fn_scope:Dynamic, ?options:Dynamic):Dynamic;
	/**
		Decorator that suppresses the conversion of a function.
		
		Args:
		  func: function to decorate.
		
		Returns:
		  If `func` is not None, returns a `Callable` which is equivalent to
		  `func`, but is not converted by AutoGraph.
		  If `func` is None, returns a decorator that, when invoked with a
		  single `func` argument, returns a `Callable` equivalent to the
		  above case.
	**/
	static public function do_not_convert(?func:Dynamic):Dynamic;
	/**
		Indicates that the entity is expected hold items of specified type/shape.
		
		The staged TensorFlow ops will reflect and assert this data type. Ignored
		otherwise.
		
		Args:
		  entity: The entity to annotate.
		  dtype: TensorFlow dtype value to assert for entity.
		  shape: Optional shape to assert for entity.
	**/
	static public function set_element_type(entity:Dynamic, dtype:Dynamic, ?shape:Dynamic):Dynamic;
	/**
		Specifies additional arguments to be passed to the enclosing while_loop.
		
		The parameters apply to and only to the immediately enclosing loop. It only
		has effect if the loop is staged as a TF while_loop; otherwise the parameters
		have no effect.
		
		Usage:
		
		  >>> @tf.function(autograph=True)
		  ... def f():
		  ...   n = 0
		  ...   for i in tf.range(10):
		  ...     tf.autograph.experimental.set_loop_options(maximum_iterations=3)
		  ...     n += 1
		  ...   return n
		
		  >>> @tf.function(autograph=True)
		  ... def f():
		  ...   v = tf.constant((0,))
		  ...   for i in tf.range(3):
		  ...     tf.autograph.experimental.set_loop_options(
		  ...         shape_invariants=[(v, tf.TensorShape([None]))]
		  ...     )
		  ...     v = tf.concat((v, [i]), 0)
		  ...   return v
		
		Also see tf.while_loop.
		
		Args:
		  parallel_iterations: The maximum number of iterations allowed to run in
		      parallel at any given time. Note that this does not guarantee parallel
		      execution.
		  swap_memory: Whether to store intermediate values needed for
		      gradients on the CPU instead of GPU.
		  maximum_iterations: Allows limiting the total number of iterations executed
		      by the loop.
		  shape_invariants: Allows controlling the argument with the same name passed
		      to tf.while_loop. Unlike tf.while_loop, this is a list of
		      `(tensor, shape)` pairs.
	**/
	static public function set_loop_options(?parallel_iterations:Dynamic, ?swap_memory:Dynamic, ?maximum_iterations:Dynamic, ?shape_invariants:Dynamic):Dynamic;
	/**
		Stacks the input, if it admits the notion of stacking.
		
		For example, a list of tensors can be stacked into a larger tensor. This
		function is similar to tf.stack, but it accepts non-lists and lists of
		non-tensors as arguments. In the latter case, the function does nothing.
		
		Args:
		  list_or_tensor: Any
		  element_dtype: tf.DType, optional dtypedtype for the elements in the list.
		      Required if the input is stackable, and the list is untyped.
		  strict: bool, if True an error is raised if the input is not stackable.
		      Otherwise the function is a no-op.
		
		Returns:
		  Any, if the input is stackable, the result will be a tf.Tensor. Otherwise,
		  if strict=False, the result will be list_or_tensor.
		
		Raises:
		  ValueError: if strict=True and the input is not stackable.
	**/
	static public function stack(list_or_tensor:Dynamic, ?element_dtype:Dynamic, ?strict:Dynamic):Dynamic;
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
}