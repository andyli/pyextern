/* This file is generated, do not edit! */
package tensorflow.python;
@:pythonImport("tensorflow.python") extern class Python_Module {
	static public var __all__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __path__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var _exported_dunders : Dynamic;
	static public var _tf2_gauge : Dynamic;
	/**
		Connects to a single machine to enable remote execution on it.
		
		Will make devices on the remote host available to use. Note that calling this
		more than once will work, but will invalidate any tensor handles on the old
		remote devices.
		
		Using the default job_name of worker, you can schedule ops to run remotely as
		follows:
		```python
		# When eager execution is enabled, connect to the remote host.
		tf.config.experimental_connect_to_host("exampleaddr.com:9876")
		
		with ops.device("job:worker/replica:0/task:1/device:CPU:0"):
		  # The following tensors should be resident on the remote device, and the op
		  # will also execute remotely.
		  x1 = array_ops.ones([2, 2])
		  x2 = array_ops.ones([2, 2])
		  y = math_ops.matmul(x1, x2)
		```
		
		Args:
		  remote_host: a single or a list the remote server addr in host-port format.
		  job_name: The job name under which the new server will be accessible.
		
		Raises:
		  ValueError: if remote_host is None.
	**/
	static public function connect_to_remote_host(?remote_host:Dynamic, ?job_name:Dynamic):Dynamic;
	/**
		Enables eager execution for the lifetime of this program.
		
		Eager execution provides an imperative interface to TensorFlow. With eager
		execution enabled, TensorFlow functions execute operations immediately (as
		opposed to adding to a graph to be executed later in a `tf.compat.v1.Session`)
		and
		return concrete values (as opposed to symbolic references to a node in a
		computational graph).
		
		For example:
		
		```python
		tf.compat.v1.enable_eager_execution()
		
		# After eager execution is enabled, operations are executed as they are
		# defined and Tensor objects hold concrete values, which can be accessed as
		# numpy.ndarray`s through the numpy() method.
		assert tf.multiply(6, 7).numpy() == 42
		```
		
		Eager execution cannot be enabled after TensorFlow APIs have been used to
		create or execute graphs. It is typically recommended to invoke this function
		at program startup and not in a library (as most libraries should be usable
		both with and without eager execution).
		
		@compatibility(TF2)
		This function is not necessary if you are using TF2. Eager execution is
		enabled by default.
		@end_compatibility
		
		Args:
		  config: (Optional.) A `tf.compat.v1.ConfigProto` to use to configure the
		    environment in which operations are executed. Note that
		    `tf.compat.v1.ConfigProto` is also used to configure graph execution (via
		    `tf.compat.v1.Session`) and many options within `tf.compat.v1.ConfigProto`
		    are not implemented (or are irrelevant) when eager execution is enabled.
		  device_policy: (Optional.) Policy controlling how operations requiring
		    inputs on a specific device (e.g., a GPU 0) handle inputs on a different
		    device  (e.g. GPU 1 or CPU). When set to None, an appropriate value will
		    be picked automatically. The value picked may change between TensorFlow
		    releases.
		    Valid values:
		    - tf.contrib.eager.DEVICE_PLACEMENT_EXPLICIT: raises an error if the
		      placement is not correct.
		    - tf.contrib.eager.DEVICE_PLACEMENT_WARN: copies the tensors which are not
		      on the right device but logs a warning.
		    - tf.contrib.eager.DEVICE_PLACEMENT_SILENT: silently copies the tensors.
		      Note that this may hide performance problems as there is no notification
		      provided when operations are blocked on the tensor being copied between
		      devices.
		    - tf.contrib.eager.DEVICE_PLACEMENT_SILENT_FOR_INT32: silently copies
		      int32 tensors, raising errors on the other ones.
		  execution_mode: (Optional.) Policy controlling how operations dispatched are
		    actually executed. When set to None, an appropriate value will be picked
		    automatically. The value picked may change between TensorFlow releases.
		    Valid values:
		    - tf.contrib.eager.SYNC: executes each operation synchronously.
		    - tf.contrib.eager.ASYNC: executes each operation asynchronously. These
		      operations may return "non-ready" handles.
		
		Raises:
		  ValueError: If eager execution is enabled after creating/executing a
		   TensorFlow graph, or if options provided conflict with a previous call
		   to this function.
	**/
	static public function enable_eager_execution(?config:Dynamic, ?device_policy:Dynamic, ?execution_mode:Dynamic):Dynamic;
	/**
		Checks whether the current thread has eager execution enabled.
		
		Eager execution is enabled by default and this API returns `True`
		in most of cases. However, this API might return `False` in the following use
		cases.
		
		*  Executing inside `tf.function`, unless under `tf.init_scope` or
		   `tf.config.run_functions_eagerly(True)` is previously called.
		*  Executing inside a transformation function for `tf.dataset`.
		*  `tf.compat.v1.disable_eager_execution()` is called.
		
		General case:
		
		>>> print(tf.executing_eagerly())
		True
		
		Inside `tf.function`:
		
		>>> @tf.function
		... def fn():
		...   with tf.init_scope():
		...     print(tf.executing_eagerly())
		...   print(tf.executing_eagerly())
		>>> fn()
		True
		False
		
		Inside `tf.function` after `tf.config.run_functions_eagerly(True)` is called:
		
		>>> tf.config.run_functions_eagerly(True)
		>>> @tf.function
		... def fn():
		...   with tf.init_scope():
		...     print(tf.executing_eagerly())
		...   print(tf.executing_eagerly())
		>>> fn()
		True
		True
		>>> tf.config.run_functions_eagerly(False)
		
		Inside a transformation function for `tf.dataset`:
		
		>>> def data_fn(x):
		...   print(tf.executing_eagerly())
		...   return x
		>>> dataset = tf.data.Dataset.range(100)
		>>> dataset = dataset.map(data_fn)
		False
		
		Returns:
		  `True` if the current thread has eager execution enabled.
	**/
	static public function executing_eagerly():Dynamic;
	/**
		Returns the Tensorflow eager tensor.
		
		The returned tensor uses the memory shared by dlpack capsules from other
		framework.
		
		  ```python
		  a = tf.experimental.dlpack.from_dlpack(dlcapsule)
		  # `a` uses the memory shared by dlpack
		  ```
		
		Args:
		  dlcapsule: A PyCapsule named as dltensor
		
		Returns:
		  A Tensorflow eager tensor
	**/
	static public function from_dlpack(dlcapsule:Dynamic):Dynamic;
	/**
		Compiles a function into a callable TensorFlow graph. (deprecated arguments)
		
		Warning: SOME ARGUMENTS ARE DEPRECATED: `(experimental_compile)`. They will be removed in a future version.
		Instructions for updating:
		experimental_compile is deprecated, use jit_compile instead
		
		`tf.function` constructs a `tf.types.experimental.GenericFunction` that
		executes a TensorFlow graph (`tf.Graph`) created by trace-compiling the
		TensorFlow operations in `func`. More information on the topic can be found
		in [Introduction to Graphs and tf.function]
		(https://www.tensorflow.org/guide/intro_to_graphs).
		
		See [Better Performance with tf.function]
		(https://www.tensorflow.org/guide/function) for tips on performance and
		known limitations.
		
		Example usage:
		
		>>> @tf.function
		... def f(x, y):
		...   return x ** 2 + y
		>>> x = tf.constant([2, 3])
		>>> y = tf.constant([3, -2])
		>>> f(x, y)
		<tf.Tensor: ... numpy=array([7, 7], ...)>
		
		The trace-compilation allows non-TensorFlow operations to execute, but under
		special conditions. In general, only TensorFlow operations are guaranteed to
		run and create fresh results whenever the `GenericFunction` is called.
		
		## Features
		
		`func` may use data-dependent control flow, including `if`, `for`, `while`
		`break`, `continue` and `return` statements:
		
		>>> @tf.function
		... def f(x):
		...   if tf.reduce_sum(x) > 0:
		...     return x * x
		...   else:
		...     return -x // 2
		>>> f(tf.constant(-2))
		<tf.Tensor: ... numpy=1>
		
		`func`'s closure may include `tf.Tensor` and `tf.Variable` objects:
		
		>>> @tf.function
		... def f():
		...   return x ** 2 + y
		>>> x = tf.constant([-2, -3])
		>>> y = tf.Variable([3, -2])
		>>> f()
		<tf.Tensor: ... numpy=array([7, 7], ...)>
		
		`func` may also use ops with side effects, such as `tf.print`, `tf.Variable`
		and others:
		
		>>> v = tf.Variable(1)
		>>> @tf.function
		... def f(x):
		...   for i in tf.range(x):
		...     v.assign_add(i)
		>>> f(3)
		>>> v
		<tf.Variable ... numpy=4>
		
		Important: Any Python side-effects (appending to a list, printing with
		`print`, etc) will only happen once, when `func` is traced. To have
		side-effects executed into your `tf.function` they need to be written
		as TF ops:
		
		>>> l = []
		>>> @tf.function
		... def f(x):
		...   for i in x:
		...     l.append(i + 1)    # Caution! Will only happen once when tracing
		>>> f(tf.constant([1, 2, 3]))
		>>> l
		[<tf.Tensor ...>]
		
		Instead, use TensorFlow collections like `tf.TensorArray`:
		
		>>> @tf.function
		... def f(x):
		...   ta = tf.TensorArray(dtype=tf.int32, size=0, dynamic_size=True)
		...   for i in range(len(x)):
		...     ta = ta.write(i, x[i] + 1)
		...   return ta.stack()
		>>> f(tf.constant([1, 2, 3]))
		<tf.Tensor: ..., numpy=array([2, 3, 4], ...)>
		
		## `tf.function` creates polymorphic callables
		
		Internally, `tf.types.experimental.GenericFunction` may contain multiple
		`tf.types.experimental.ConcreteFunction`s, each specialized to arguments with
		different data types or shapes, since TensorFlow can perform more
		optimizations on graphs of specific shapes, dtypes and values of constant
		arguments. `tf.function` treats any pure Python values as opaque objects (best
		thought of as compile-time constants), and builds a separate `tf.Graph` for
		each set of Python arguments that it encounters.
		For more information, see the
		[tf.function guide](https://www.tensorflow.org/guide/function#rules_of_tracing)
		
		Executing a `GenericFunction` will select and execute the appropriate
		`ConcreteFunction` based on the argument types and values.
		
		To obtain an individual `ConcreteFunction`, use the
		`GenericFunction.get_concrete_function` method. It can be called with the
		same arguments as `func` and returns a
		`tf.types.experimental.ConcreteFunction`. `ConcreteFunction`s are backed by a
		single `tf.Graph`:
		
		>>> @tf.function
		... def f(x):
		...   return x + 1
		>>> isinstance(f.get_concrete_function(1).graph, tf.Graph)
		True
		
		`ConcreteFunction`s can be executed just like `GenericFunction`s, but their
		input is resticted to the types to which they're specialized.
		
		## Retracing
		
		`ConcreteFunctions` are built (traced) on the fly, as the `GenericFunction` is
		called with new TensorFlow types or shapes, or with new Python values as
		arguments. When `GenericFunction` builds a new trace, it is said that `func`
		is retraced. Retracing is a frequent performance concern for `tf.function` as
		it can be considerably slower than executing a graph that's already been
		traced. It is ideal to minimize the amount of retracing in your code.
		
		Caution: Passing python scalars or lists as arguments to `tf.function` will
		usually retrace. To avoid this, pass numeric arguments as Tensors whenever
		possible:
		
		>>> @tf.function
		... def f(x):
		...   return tf.abs(x)
		>>> f1 = f.get_concrete_function(1)
		>>> f2 = f.get_concrete_function(2)  # Slow - compiles new graph
		>>> f1 is f2
		False
		>>> f1 = f.get_concrete_function(tf.constant(1))
		>>> f2 = f.get_concrete_function(tf.constant(2))  # Fast - reuses f1
		>>> f1 is f2
		True
		
		Python numerical arguments should only be used when they take few distinct
		values, such as hyperparameters like the number of layers in a neural network.
		
		## Input signatures
		
		For Tensor arguments, `GenericFunction`creates a new `ConcreteFunction` for
		every unique set of input shapes and datatypes. The example below creates two
		separate `ConcreteFunction`s, each specialized to a different shape:
		
		>>> @tf.function
		... def f(x):
		...   return x + 1
		>>> vector = tf.constant([1.0, 1.0])
		>>> matrix = tf.constant([[3.0]])
		>>> f.get_concrete_function(vector) is f.get_concrete_function(matrix)
		False
		
		An "input signature" can be optionally provided to `tf.function` to control
		this process. The input signature specifies the shape and type of each
		Tensor argument to the function using a `tf.TensorSpec` object. More general
		shapes can be used. This ensures only one `ConcreteFunction` is created, and
		restricts the `GenericFunction` to the specified shapes and types. It is
		an effective way to limit retracing when Tensors have dynamic shapes.
		
		>>> @tf.function(
		...     input_signature=[tf.TensorSpec(shape=None, dtype=tf.float32)])
		... def f(x):
		...   return x + 1
		>>> vector = tf.constant([1.0, 1.0])
		>>> matrix = tf.constant([[3.0]])
		>>> f.get_concrete_function(vector) is f.get_concrete_function(matrix)
		True
		
		## Variables may only be created once
		
		`tf.function` only allows creating new `tf.Variable` objects when it is called
		for the first time:
		
		>>> class MyModule(tf.Module):
		...   def __init__(self):
		...     self.v = None
		...
		...   @tf.function
		...   def __call__(self, x):
		...     if self.v is None:
		...       self.v = tf.Variable(tf.ones_like(x))
		...     return self.v * x
		
		In general, it is recommended to create `tf.Variable`s outside of
		`tf.function`.
		In simple cases, persisting state across `tf.function` boundaries may be
		implemented using a pure functional style in which state is represented by
		`tf.Tensor`s passed as arguments and returned as return values.
		
		Contrast the two styles below:
		
		>>> state = tf.Variable(1)
		>>> @tf.function
		... def f(x):
		...   state.assign_add(x)
		>>> f(tf.constant(2))  # Non-pure functional style
		>>> state
		<tf.Variable ... numpy=3>
		
		>>> state = tf.constant(1)
		>>> @tf.function
		... def f(state, x):
		...   state += x
		...   return state
		>>> state = f(state, tf.constant(2))  # Pure functional style
		>>> state
		<tf.Tensor: ... numpy=3>
		
		## Python operations execute only once per trace
		
		`func` may contain TensorFlow operations mixed with pure Python operations.
		However, when the function is executed, only the TensorFlow operations will
		run. The Python operations run only once, at trace time. If TensorFlow
		operations depend on results from Pyhton operations, those results will be
		frozen into the graph.
		
		>>> @tf.function
		... def f(a, b):
		...   print('this runs at trace time; a is', a, 'and b is', b)
		...   return b
		>>> f(1, tf.constant(1))
		this runs at trace time; a is 1 and b is Tensor("...", shape=(), dtype=int32)
		<tf.Tensor: shape=(), dtype=int32, numpy=1>
		
		>>> f(1, tf.constant(2))
		<tf.Tensor: shape=(), dtype=int32, numpy=2>
		
		>>> f(2, tf.constant(1))
		this runs at trace time; a is 2 and b is Tensor("...", shape=(), dtype=int32)
		<tf.Tensor: shape=(), dtype=int32, numpy=1>
		
		>>> f(2, tf.constant(2))
		<tf.Tensor: shape=(), dtype=int32, numpy=2>
		
		## Using type annotations to improve performance
		
		'experimental_follow_type_hints` can be used along with type annotations to
		reduce retracing by automatically casting any Python values to `tf.Tensor`
		(something that is not done by default, unless you use input signatures).
		
		>>> @tf.function(experimental_follow_type_hints=True)
		... def f_with_hints(x: tf.Tensor):
		...   print('Tracing')
		...   return x
		>>> @tf.function(experimental_follow_type_hints=False)
		... def f_no_hints(x: tf.Tensor):
		...   print('Tracing')
		...   return x
		>>> f_no_hints(1)
		Tracing
		<tf.Tensor: shape=(), dtype=int32, numpy=1>
		>>> f_no_hints(2)
		Tracing
		<tf.Tensor: shape=(), dtype=int32, numpy=2>
		>>> f_with_hints(1)
		Tracing
		<tf.Tensor: shape=(), dtype=int32, numpy=1>
		>>> f_with_hints(2)
		<tf.Tensor: shape=(), dtype=int32, numpy=2>
		
		Args:
		  func: the function to be compiled. If `func` is None, `tf.function` returns
		    a decorator that can be invoked with a single argument - `func`. In other
		    words, `tf.function(input_signature=...)(func)` is equivalent to
		    `tf.function(func, input_signature=...)`. The former can be used as
		    decorator.
		  input_signature: A possibly nested sequence of `tf.TensorSpec` objects
		    specifying the shapes and dtypes of the Tensors that will be supplied to
		    this function. If `None`, a separate function is instantiated for each
		    inferred input signature.  If input_signature is specified, every input to
		    `func` must be a `Tensor`, and `func` cannot accept `**kwargs`.
		  autograph: Whether autograph should be applied on `func` before tracing a
		    graph. Data-dependent control flow requires `autograph=True`. For more
		    information, see the [tf.function and AutoGraph guide](
		    https://www.tensorflow.org/guide/function#autograph_transformations).
		  jit_compile: If `True`, compiles the function using
		    [XLA](https://tensorflow.org/xla). XLA performs compiler optimizations,
		    such as fusion, and attempts to emit more efficient code. This may
		    drastically improve the performance. If set to `True`,
		    the whole function needs to be compilable by XLA, or an
		    `errors.InvalidArgumentError` is thrown.
		    If `None` (default), compiles the function with XLA when running on TPU
		    and goes through the regular function execution path when running on
		    other devices.
		    If `False`, executes the function without XLA compilation.  Set this value
		    to `False` when directly running a multi-device function on TPUs (e.g. two
		    TPU cores, one TPU core and its host CPU).
		    Not all functions are compilable, see a list of
		    [sharp corners](https://tensorflow.org/xla/known_issues).
		  experimental_implements: If provided, contains a name of a "known" function
		    this implements. For example "mycompany.my_recurrent_cell".
		    This is stored as an attribute in inference function,
		    which can then be detected when processing serialized function.
		    See [standardizing composite ops](https://github.com/tensorflow/community/blob/master/rfcs/20190610-standardizing-composite_ops.md)  # pylint: disable=line-too-long
		    for details.  For an example of utilizing this attribute see this
		    [example](https://github.com/tensorflow/tensorflow/blob/master/tensorflow/compiler/mlir/lite/transforms/prepare_composite_functions_tf.cc)
		    The code above automatically detects and substitutes function that
		    implements "embedded_matmul" and allows TFLite to substitute its own
		    implementations. For instance, a tensorflow user can use this
		     attribute to mark that their function also implements
		    `embedded_matmul` (perhaps more efficiently!)
		    by specifying it using this parameter:
		    `@tf.function(experimental_implements="embedded_matmul")`
		    This can either be specified as just the string name of the function or
		    a NameAttrList corresponding to a list of key-value attributes associated
		    with the function name. The name of the function will be in the 'name'
		    field of the NameAttrList. To define a formal TF op for this function
		    implements, try the experimental [composite TF](https://github.com/tensorflow/tensorflow/blob/master/tensorflow/compiler/mlir/tfr)
		    project.
		  experimental_autograph_options: Optional tuple of
		    `tf.autograph.experimental.Feature` values.
		  experimental_relax_shapes: When True, `tf.function` may generate fewer,
		    graphs that are less specialized on input shapes.
		  experimental_compile: Deprecated alias to 'jit_compile'.
		  experimental_follow_type_hints: When True, the function may use type
		    annotations from `func` to optimize the tracing performance. For example,
		    arguments annotated with `tf.Tensor` will automatically be converted
		    to a Tensor.
		
		Returns:
		   If `func` is not None, returns a `tf.types.experimental.GenericFunction`.
		   If `func` is None, returns a decorator that, when invoked with a single
		   `func` argument, returns a `tf.types.experimental.GenericFunction`.
		
		Raises:
		   `ValueError` when attempting to use `jit_compile=True`, but XLA support is
		   not available.
	**/
	@:native("function")
	static public function _function(?func:Dynamic, ?input_signature:Dynamic, ?autograph:Dynamic, ?jit_compile:Dynamic, ?experimental_implements:Dynamic, ?experimental_autograph_options:Dynamic, ?experimental_relax_shapes:Dynamic, ?experimental_compile:Dynamic, ?experimental_follow_type_hints:Dynamic):Dynamic;
	/**
		Generates `__all__` from the docstring of one or more modules.
		
		Usage: `make_all(__name__)` or
		`make_all(__name__, [sys.modules(__name__), other_module])`. The doc string
		modules must each a docstring, and `__all__` will contain all symbols with
		`@@` references, where that symbol currently exists in the module named
		`module_name`.
		
		Args:
		  module_name: The name of the module (usually `__name__`).
		  doc_string_modules: a list of modules from which to take docstring.
		  If None, then a list containing only the module named `module_name` is used.
		
		Returns:
		  A list suitable for use as `__all__`.
	**/
	static public function make_all(module_name:Dynamic, ?doc_string_modules:Dynamic):Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Returns the dlpack capsule representing the tensor.
		
		This operation ensures the underlying data memory is ready when returns.
		
		  ```python
		  a = tf.tensor([1, 10])
		  dlcapsule = tf.experimental.dlpack.to_dlpack(a)
		  # dlcapsule represents the dlpack data structure
		  ```
		
		Args:
		  tf_tensor: Tensorflow eager tensor, to be converted to dlpack capsule.
		
		Returns:
		  A PyCapsule named as dltensor, which shares the underlying memory to other
		   framework. This PyCapsule can be consumed only once.
	**/
	static public function to_dlpack(tf_tensor:Dynamic):Dynamic;
}