/* This file is generated, do not edit! */
package tensorflow.contrib.eager.python.tfe;
@:pythonImport("tensorflow.contrib.eager.python.tfe") extern class Tfe_Module {
	static public var ASYNC : Dynamic;
	static public var DEVICE_PLACEMENT_EXPLICIT : Dynamic;
	static public var DEVICE_PLACEMENT_SILENT : Dynamic;
	static public var DEVICE_PLACEMENT_WARN : Dynamic;
	static public var SYNC : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Add an execution callback to the default eager context.
		
		An execution callback is invoked immediately after an eager operation or
		function has finished execution, providing access to the op's type, name
		input and output tensors. Multiple execution callbacks can be added, in
		which case the callbacks will be invoked in the order in which they are
		added. To clear all execution callbacks that have been added, use
		`clear_execution_callbacks()`.
		
		Example:
		```python
		def print_even_callback(op_type, op_name, attrs, inputs, outputs):
		  # A callback that prints only the even output values.
		  if outputs[0].numpy() % 2 == 0:
		    print("Even output from %s: %s" % (op_name or op_type,  outputs))
		tfe.add_execution_callback(print_even_callback)
		
		x = tf.pow(2.0, 3.0) - 3.0
		y = tf.multiply(x, tf.add(1.0, 5.0))
		# When the line above is run, you will see all intermediate outputs that are
		# even numbers printed to the console.
		
		tfe.clear_execution_callbacks()
		```
		
		Args:
		  callback: a callable of the signature
		    `f(op_type, op_name, attrs, inputs, outputs)`.
		    `op_type` is the type of the operation that was just executed (e.g.,
		      `MatMul`).
		    `op_name` is the name of the operation that was just executed. This
		      name is set by the client who created the operation and can be `None` if
		      it is unset.
		    `attrs` contains the attributes of the operation as a `tuple` of
		      alternating attribute name and attribute value.
		    `inputs` is the `list` of input `Tensor`(s) to the op.
		    `outputs` is the `list` of output `Tensor`(s) from the op.
		     Return value(s) from the callback are ignored.
	**/
	static public function add_execution_callback(callback:Dynamic):Dynamic;
	/**
		Clears errors raised during ASYNC execution mode.
	**/
	static public function async_clear_error():Dynamic;
	/**
		Waits for ops dispatched in ASYNC mode to finish.
	**/
	static public function async_wait():Dynamic;
	/**
		Clear all execution callbacks from the default eager context.
	**/
	static public function clear_execution_callbacks():Dynamic;
	/**
		Connects to a single machine to enable remote execution on it.
		
		Will make devices on the remote host available to use. Note that calling this
		more than once will work, but will invalidate any tensor handles on the old
		remote devices.
		
		Using the default job_name of worker, you can schedule ops to run remotely as
		follows:
		```python
		# Enable eager execution, and connect to the remote host.
		tf.enable_eager_execution()
		tf.contrib.eager.connect_to_remote_host("exampleaddr.com:9876")
		
		with ops.device("job:worker/replica:0/task:1/device:CPU:0"):
		  # The following tensors should be resident on the remote device, and the op
		  # will also execute remotely.
		  x1 = array_ops.ones([2, 2])
		  x2 = array_ops.ones([2, 2])
		  y = math_ops.matmul(x1, x2)
		```
		
		Args:
		  remote_host: The addr of the remote server in host-port format.
		  job_name: The job name under which the new server will be accessible.
		
		Raises:
		  ValueError: if remote_host is None.
	**/
	static public function connect_to_remote_host(?remote_host:Dynamic, ?job_name:Dynamic):Dynamic;
	/**
		Decorator to define a function with a custom gradient.
		
		This decorator allows fine grained control over the gradients of a sequence
		for operations.  This may be useful for multiple reasons, including providing
		a more efficient or numerically stable gradient for a sequence of operations.
		
		For example, consider the following function that commonly occurs in the
		computation of cross entropy and log likelihoods:
		
		```python
		def log1pexp(x):
		  return tf.log(1 + tf.exp(x))
		```
		
		Due to numerical instability, the gradient this function evaluated at x=100 is
		NaN.  For example:
		
		```python
		x = tf.constant(100.)
		y = log1pexp(x)
		dy = tf.gradients(y, x) # Will be NaN when evaluated.
		```
		
		The gradient expression can be analytically simplified to provide numerical
		stability:
		
		```python
		@tf.custom_gradient
		def log1pexp(x):
		  e = tf.exp(x)
		  def grad(dy):
		    return dy * (1 - 1 / (1 + e))
		  return tf.log(1 + e), grad
		```
		
		With this definition, the gradient at x=100 will be correctly evaluated as
		1.0.
		
		See also `tf.RegisterGradient` which registers a gradient function for a
		primitive TensorFlow operation. `tf.custom_gradient` on the other hand allows
		for fine grained control over the gradient computation of a sequence of
		operations.
		
		Note that if the decorated function uses `Variable`s, the enclosing variable
		scope must be using `ResourceVariable`s.
		
		Args:
		  f: function `f(*x)` that returns a tuple `(y, grad_fn)` where:
		     - `x` is a sequence of `Tensor` inputs to the function.
		     - `y` is a `Tensor` or sequence of `Tensor` outputs of applying
		       TensorFlow operations in `f` to `x`.
		     - `grad_fn` is a function with the signature `g(*grad_ys)` which returns
		       a list of `Tensor`s - the derivatives of `Tensor`s in `y` with respect
		       to the `Tensor`s in `x`.  `grad_ys` is a `Tensor` or sequence of
		       `Tensor`s the same size as `y` holding the initial value gradients for
		       each `Tensor` in `y`. In a pure mathematical sense, a vector-argument
		       vector-valued function `f`'s derivatives should be its Jacobian matrix
		       `J`. Here we are expressing the Jacobian `J` as a function `grad_fn`
		       which defines how `J` will transform a vector `grad_ys` when
		       left-multiplied with it (`grad_ys * J`). This functional representation
		       of a matrix is convenient to use for chain-rule calculation
		       (in e.g. the back-propagation algorithm).
		
		       If `f` uses `Variable`s (that are not part of the
		       inputs), i.e. through `get_variable`, then `grad_fn` should have
		       signature `g(*grad_ys, variables=None)`, where `variables` is a list of
		       the `Variable`s, and return a 2-tuple `(grad_xs, grad_vars)`, where
		       `grad_xs` is the same as above, and `grad_vars` is a `list<Tensor>`
		       with the derivatives of `Tensor`s in `y` with respect to the variables
		       (that is, grad_vars has one Tensor per variable in variables).
		
		Returns:
		  A function `h(x)` which returns the same value as `f(x)[0]` and whose
		  gradient (as calculated by `tf.gradients`) is determined by `f(x)[1]`.
	**/
	static public function custom_gradient(f:Dynamic):Dynamic;
	/**
		Compiles a Python function into a callable TensorFlow graph.
		
		`defun` (short for "define function") compiles a Python function
		composed of TensorFlow operations into a callable that executes a `tf.Graph`
		containing those operations. The callable produced by `defun` contains only
		the subgraph of TensorFlow operations that were executed when the Python
		function was called with a particular input signature, defined as a list
		of the shapes and dtypes of the Python function's Tensor-valued arguments and
		the values of its non-Tensor Python objects.
		
		When eager execution is enabled, the ability to create graphs from Python
		functions makes it possible to incrementally trade off debugability and
		interactivity for performance.  Functions compiled with `defun` cannot be
		inspected with `pdb`; however, executing a graph
		generated by `defun` sometimes takes less time and memory than eagerly
		executing the corresponding Python function, since specifying computations as
		graphs allows for optimizations like automatic buffer reuse and
		parallelization among ops. Note that executing a `defun`-compiled function
		incurs a small constant overhead, so eagerly executing sufficiently small
		Python functions might take less time than executing their corresponding
		`defun`-generated graphs.
		
		For a Python function to be compatible with `defun`, all of its arguments must
		be hashable Python objects or lists thereof. The function itself may not
		modify the list/map structure of its arguments. Additionally, it must return
		zero or more `tf.Tensor` objects. If the Python function returns
		a `tf.Variable`, its compiled version will return the value of that variable
		as a `tf.Tensor`.
		
		Executing a graph generated by `defun` respects device annotations (i.e.,
		all `with tf.device` directives present in a Python function will also be
		present in its corresponding graph), but it is not yet possible to execute the
		generated graphs across multiple machines.
		
		_Example Usage_
		
		```python
		import tensorflow as tf
		
		tf.enable_eager_execution()
		
		# A simple example.
		def f(x, y):
		  return tf.reduce_mean(tf.multiply(x ** 2, 3) + y)
		
		g = tf.contrib.eager.defun(f)
		
		x = tf.constant([[2.0, 3.0]])
		y = tf.constant([[3.0, -2.0]])
		
		# `f` and `g` will return the same value, but `g` will be executed as a
		# TensorFlow graph.
		assert f(x, y).numpy() == g(x, y).numpy()
		
		# `defun` is capable of compiling Python functions that close over Python
		# objects, including Tensors and Variables.
		@tf.contrib.eager.defun
		def h():
		  return f(x, y)
		
		assert (h().numpy() == f(x, y).numpy()).all()
		
		# `defun` automatically lifts variables out of the graphs it creates,
		# allowing you to compile the `call` methods of `tf.keras.layers.Layer` and
		# `tf.keras.Model` objects.
		class MyModel(tf.keras.Model):
		
		  def __init__(self, keep_probability=0.2):
		    super(MyModel, self).__init__()
		    self.dense1 = tf.keras.layers.Dense(4, activation=tf.nn.relu)
		    self.dense2 = tf.keras.layers.Dense(5, activation=tf.nn.softmax)
		    self.keep_probability = keep_probability
		
		  @tf.contrib.eager.defun
		  def call(self, inputs, training=True):
		    x = self.dense2(self.dense1(inputs))
		    if training:
		      return tf.nn.dropout(x, self.keep_probability)
		    else:
		      return x
		
		model = MyModel()
		model(x, training=True)  # executes a graph, with dropout
		model(x, training=False) # executes a graph, without dropout
		
		# `defun`-compiled functions are differentiable.
		optimizer = tf.train.GradientDescentOptimizer(learning_rate=0.01)
		with tf.GradientTape() as tape:
		  outputs = model(x)
		gradient = tape.gradient(outputs, model.trainable_variables)
		optimizer.apply_gradients((grad, var) for grad, var in zip(gradient,
		                          model.trainable_variables))
		```
		
		When using `defun`, there are subtleties regarding inputs, Python control
		flow, and variable creation that one should be aware of. For concreteness, let
		`f` be a Python function that returns zero or more `tf.Tensor` objects and
		let `F = defun(f)`. `F` builds a graph for each unique input signature it
		sees, Python control flow is baked into graphs, and operations related to
		variable initialization are automatically lifted out of the graphs that `F`
		generates and placed in the eager context if executing eagerly or into an
		outer graph otherwise.
		
		_Input Signatures_
		
		By default, `F = tf.contrib.eager.defun(f)` instantiates a separate graph
		for every unique sequence of the shapes and dtypes of Tensor arguments and
		the values of Python objects it is invoked with. For example, calling
		`F(tf.random_uniform([2])` will execute a different graph than
		`F(tf.random_uniform([3])` because the two inputs have different shapes.
		The first time that `F(*args, **kwargs)` is called with a particular sequence
		of Tensor shapes and dtypes and Python values, it constructs a graph by
		tracing the execution of `f(*args, **kwargs)`; this graph is bound to an
		input signature inferred from `(*args, **kwargs)` and cached for future reuse.
		
		NumPy arrays passed as inputs to `F` are converted to `tf.Tensor` objects
		before being passed to `f`, and are treated as Tensors for caching. This
		allows a function to be called multiple times with NumPy arrays having
		different values but the same shape and dtype without re-tracing each time.
		
		`tf.contrib.eager.defun` caches graphs for your convenience, letting you
		define TensorFlow functions without explicitly specifying their signatures.
		However, this policy is conservative and potentially expensive; for example,
		when different invocations of your function have differently-shaped Tensor
		inputs, this policy might generate more graph functions than necessary. To
		eliminate such costs, `tf.contrib.eager.defun` allows you to supply an
		optional `input_signature` argument specifying the shapes and dtypes of the
		inputs. In particular, the shapes may be partially unspecified, with `None`s
		in the unknown dimensions.  When an input signature is provided,
		`tf.contrib.eager.defun` will only instantiate a single graph for the
		decorated Python function. The following is an example:
		
		```python
		import tensorflow as tf
		
		# The first `TensorSpec` below describes the shape and dtype of `words`,
		# and the second describes the shape and dtype of `another_tensor`. Note that
		# the last dimension of the `words` `TensorSpec` is left unspecified.
		@tf.contrib.eager.defun(input_signature=[
		  tf.contrib.eager.TensorSpec(shape=[50, 300, None], dtype=tf.float32),
		  tf.contrib.eager.TensorSpec(shape=[300, 100], dtype=tf.float32)
		])
		def my_sequence_model(words, another_tensor):
		  ...
		
		# Note how the third dimension of the first input can vary freely.
		words = tf.random_uniform(([50, 300, 10])
		second_input = tf.random_uniform([300, 100])
		my_sequence_model(words, second_input)
		
		words = tf.random_uniform(([50, 300, 20])
		my_sequence_model(words, second_input)
		
		# Passing an input with an incompatible shape will raise an error.
		words = tf.random_uniform(([50, 100, 20])
		my_sequence_model(words, second_input)  # <---- This will raise an error.
		
		```
		
		Python functions that are compiled with an `input_signature` must only accept
		Tensors as arguments and must not take unnamed keyword arguments (**kwargs).
		
		_Tracing_
		
		Be aware that because `F` only logs TensorFlow operations, all the other
		Python code that `f` executes will only shape the _construction_ of the graphs
		that `F` executes: the Python code won't be executed when the graphs
		themselves are executed, though it will be executed every time the Python
		function is traced (and a given Python function might be traced multiple
		times, once for each input signature it is invoked with). For example, whereas
		the Python function
		
		```python
		import tensorflow as tf
		import numpy as np
		
		tf.enable_eager_execution()
		
		def add_noise():
		  return tf.eye(5) + np.random.randn(5, 5)
		```
		
		will return a different output everytime it is invoked, the compiled function
		`compiled = tf.contrib.eager.defun(add_noise)` will return the same value
		every time it is called, since a particular random offset generated by NumPy
		will be inserted into the graph as a TensorFlow constant. The solution is to
		replace the call to `np.random.randn` with `tf.random_normal((5, 5))`.
		
		_Python Side-Effects_
		
		A corollary of the previous discussion on tracing is the following: If a
		Python function `f` has Python side-effects, then executing `f` multiple times
		will not necessarily be semantically equivalent to executing `F =
		tf.contrib.eager.defun(f)` multiple times; this difference is due to the fact
		that `defun` only captures the subgraph of TensorFlow operations that is
		constructed when `f` is called in a graph-building context.
		
		_Python Control Flow_
		
		The structure of many machine learning computations depend upon whether one is
		training or validating, and it is common to nest specialized logic under `if
		training:` blocks. By mapping each input signature to a unique graph, `defun`
		lets users transparently compile such code, as the following code snippet
		demonstrates:
		
		```python
		import tensorflow as tf
		
		tf.enable_eager_execution()
		
		@tf.contrib.eager.defun
		def lossy_matmul(W, x, training=True):
		  outputs = tf.matmul(W, x)
		  if training:
		    outputs = tf.nn.dropout(outputs, keep_probability=0.2)
		  return outputs
		
		W = tf.random_normal((3, 5))
		x = tf.random_normal((5, 1))
		
		# Executes a graph that applies dropout.
		lossy_outputs = lossy_matmul(W, x, training=True)
		
		# Executes a graph that does not apply dropout.
		exact_outputs = lossy_matmul(W, x, training=False)
		```
		
		_TensorFlow Control Flow_
		
		When `autograph` is `True`, data-dependent control flow is allowed as well.
		Control flow statements that depend on `Tensor` values are staged into
		corresponding TensorFlow ops. For example, the following code will work as
		expected:
		
		```python
		@tf.contrib.eager.defun
		def dynamic_rnn_loop(cell, seq):
		  state, output = cell.zero_state()
		  for input in seq:
		    state, output = cell(input, state)
		  return output
		```
		
		For more information see `tf.autograph`.
		
		_Variables_
		
		TensorFlow operations related to variable creation and initialization are
		automatically lifted out of the graphs generated by `defun`. In practice, this
		implies that variable creation and initialization only happen the first time
		`F` is called, and that variables are reused every time thereafter. Many
		TensorFlow APIs, like `tf.keras.layers.Layer` objects, create variables the
		first time they are called and reuse them thereafter. Automatic variable
		lifting makes it possible to compile these APIs without extra effort, at the
		cost of introducing a discrepancy between the semantics of executing Python
		functions and their corresponding compiled functions. For example:
		
		```python
		import tensorflow as tf
		
		tf.enable_eager_execution()
		
		def fn():
		  x = tf.Variable(0.0)
		  x.assign_add(1.0)
		  return x.read_value()
		
		# `fn` is a Python function, so x is created, initialized, and destroyed upon
		# every invocation
		assert fn().numpy() == fn().numpy() == 1.0
		
		compiled = tf.contrib.eager.defun(fn)
		
		# Compiling `fn` with `defun` hoists all variables outside of the generated
		# graph, so initialization happens exactly once.
		assert compiled().numpy() == 1.0
		assert compiled().numpy() == 2.0
		```
		
		Finally, because each input signature is bound to a unique graph, if your
		Python function constructs `tf.Variable` objects, then each graph constructed
		for that Python function will reference a unique set of variables. To
		circumvent this problem, we recommend against compiling Python functions that
		create `tf.Variable` objects. Instead, Python functions should either
		lexically close over `tf.Variable` objects or accept them as arguments,
		preferably encapsulated in an object-oriented container. If you must create
		variables inside your Python function and you want each graph generated for it
		to reference the same set of variables, add logic to your Python function that
		ensures that variables are only created the first time it is called and are
		reused for every subsequent invocation; note that this is precisely what
		`tf.keras.layers.Layer` objects do, so we recommend using them to represent
		variable-bearing computations whenever possible.
		
		Args:
		  func: function to be compiled. If `func` is None, returns a
		    decorator that can be invoked with a single argument - `func`. The
		    end result is equivalent to providing all the arguments up front.
		    In other words, defun(input_signature=...)(func) is equivalent to
		    defun(func, input_signature=...). The former allows
		    the following use case:
		      @tf.contrib.eager.defun(input_signature=...)
		      def foo(...):
		        ...
		
		  input_signature: A possibly nested sequence of
		    `tf.contrib.eager.TensorSpec` objects specifying the shapes and dtypes of
		    the Tensors that will be supplied to this function. If `None`, a separate
		    function is instantiated for each inferred input signature.  If a
		    signature is specified, every input to `func` must be a `Tensor`, and
		    `func` cannot accept `**kwargs`.
		  autograph: Whether `func` should be compiled before
		    constructing the graph. See https://www.tensorflow.org/guide/autograph
		    for more information.
		
		
		Returns:
		   If `func` is not None, returns a callable that will execute the compiled
		   function (and return zero or more `tf.Tensor` objects).
		   If `func` is None, returns a decorator that, when invoked with a single
		   `func` argument, returns a callable equivalent to the case above.
		
		Raises:
		  TypeError: If `input_signature` is neither `None` nor a sequence of
		    `tf.contrib.eager.TensorSpec` objects.
	**/
	static public function defun(?func:Dynamic, ?input_signature:Dynamic, ?autograph:Dynamic):Dynamic;
	/**
		Enables eager execution for the lifetime of this program.
		
		Eager execution provides an imperative interface to TensorFlow. With eager
		execution enabled, TensorFlow functions execute operations immediately (as
		opposed to adding to a graph to be executed later in a `tf.Session`) and
		return concrete values (as opposed to symbolic references to a node in a
		computational graph).
		
		For example:
		
		```python
		tf.enable_eager_execution()
		
		# After eager execution is enabled, operations are executed as they are
		# defined and Tensor objects hold concrete values, which can be accessed as
		# numpy.ndarray`s through the numpy() method.
		assert tf.multiply(6, 7).numpy() == 42
		```
		
		Eager execution cannot be enabled after TensorFlow APIs have been used to
		create or execute graphs. It is typically recommended to invoke this function
		at program startup and not in a library (as most libraries should be usable
		both with and without eager execution).
		
		Args:
		  config: (Optional.) A `tf.ConfigProto` to use to configure the environment
		    in which operations are executed. Note that `tf.ConfigProto` is also
		    used to configure graph execution (via `tf.Session`) and many options
		    within `tf.ConfigProto` are not implemented (or are irrelevant) when
		    eager execution is enabled.
		  device_policy: (Optional.) Policy controlling how operations requiring
		    inputs on a specific device (e.g., a GPU 0) handle inputs on a different
		    device  (e.g. GPU 1 or CPU). When set to None, an appropriate value will be
		    picked automatically. The value picked may change between TensorFlow
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
		Enables eager execution for the lifetime of this program.
		
		Most of the doc string for enable_eager_execution is relevant here as well.
		
		Args:
		  config: See enable_eager_execution doc string
		  device_policy: See enable_eager_execution doc string
		  execution_mode: See enable_eager_execution doc string
		  server_def: (Optional.) A tensorflow::ServerDef proto.
		    Enables execution on remote devices. GrpcServers need to be started by
		    creating an identical server_def to this, and setting the appropriate
		    task_indexes, so that the servers can communicate. It will then be
		    possible to execute operations on remote devices.
		
		Raises:
		  ValueError
	**/
	static public function enable_remote_eager_execution(?config:Dynamic, ?device_policy:Dynamic, ?execution_mode:Dynamic, ?server_def:Dynamic):Dynamic;
	/**
		Context manager setting error state.
		
		Example:
		```
		c = tf.log(0.)  # -inf
		
		with errstate(inf_or_nan=ExecutionCallback.RAISE):
		  tf.log(0.)  # <-- Raises InfOrNanError.
		```
		
		Args:
		  inf_or_nan: An `ExecutionCallback` determining the action for infinity
		    (`inf`) and NaN (`nan`) values. A value of `None` leads to no change in
		    the action of the condition.
		
		Yields:
		  None.
		
		Raises:
		  ValueError: If the value of any keyword arguments is invalid.
	**/
	static public function errstate(?inf_or_nan:Dynamic):Dynamic;
	/**
		Returns True if the current thread has eager execution enabled.
		
		Eager execution is typically enabled via `tf.enable_eager_execution`,
		but may also be enabled within the context of a Python function via
		tf.contrib.eager.py_func.
	**/
	static public function executing_eagerly():Dynamic;
	/**
		Context manager for setting execution mode for current thread.
	**/
	static public function execution_mode(mode:Dynamic):Dynamic;
	/**
		Creates a callable TensorFlow graph from a Python function.
		
		`function` constructs a callable that executes a TensorFlow graph
		(`tf.Graph`) created by tracing the TensorFlow operations in `func`.
		This allows the TensorFlow runtime to apply optimizations and exploit
		parallelism in the computation defined by `func`.
		
		_Example Usage_
		
		```python
		def f(x, y):
		  return tf.reduce_mean(tf.multiply(x ** 2, 3) + y)
		
		g = tf.function(f)
		
		x = tf.constant([[2.0, 3.0]])
		y = tf.constant([[3.0, -2.0]])
		
		# `f` and `g` will return the same value, but `g` will be executed as a
		# TensorFlow graph.
		assert f(x, y).numpy() == g(x, y).numpy()
		
		# Tensors and tf.Variables used by the Python function are captured in the
		# graph.
		@tf.function
		def h():
		  return f(x, y)
		
		assert (h().numpy() == f(x, y).numpy()).all()
		
		# Data-dependent control flow is also captured in the graph. Supported
		# control flow statements include `if`, `for`, `break`, `continue`, `return`.
		@tf.function
		def g(x):
		  if tf.reduce_sum(x) > 0:
		    return x * x
		  else:
		    return -x // 2
		
		# print and TensorFlow side effects are supported, but exercise caution when
		# using Python side effects like mutating objects, saving to files, etc.
		l = []
		
		@tf.function
		def g(x):
		  for i in x:
		    print(i)                              # Works
		    tf.assign(v, i)                       # Works
		    tf.py_func(lambda i: l.append(i))(i)  # Works
		    l.append(i)                           # Caution! Doesn't work.
		```
		
		_Referencing `tf.Variable`s_
		
		The Python function `func` may reference stateful objects (such as
		`tf.Variable`).
		These are captured as implicit inputs to the callable returned by `function`.
		For example:
		
		```python
		c = tf.Variable(0)
		
		@tf.function
		def f(x):
		  c.assign_add(1)
		  return x + tf.to_float(c)
		
		assert int(c) == 0
		assert f(1.0) == 2.0
		assert int(c) == 1
		assert f(1.0) == 3.0
		assert int(c) == 2
		```
		
		`function` can be applied to methods of an object. For example:
		
		```python
		class Dense(object):
		  def __init__(self):
		    self.W = tf.Variable(tf.glorot_uniform_initializer()((10, 10)))
		    self.b = tf.Variable(tf.zeros(10))
		
		  @tf.function
		  def compute(self, x):
		    return tf.matmul(x, self.W) + self.b
		
		d1 = Dense()
		d2 = Dense()
		x = tf.random_uniform((10, 10))
		# d1 and d2 are using distinct variables
		assert not (d1.compute(x).numpy() == d2.compute(x).numpy()).all()
		```
		
		_Usage with `tf.keras`_
		
		The `call` methods of a `tf.keras.Model` subclass can be decorated with
		`function` in order to apply graph execution optimizations on it.
		For example:
		
		```python
		class MyModel(tf.keras.Model):
		  def __init__(self, keep_probability=0.2):
		    super(MyModel, self).__init__()
		    self.dense1 = tf.keras.layers.Dense(4)
		    self.dense2 = tf.keras.layers.Dense(5)
		    self.keep_probability = keep_probability
		
		  @tf.function
		  def call(self, inputs, training=True):
		    y = self.dense2(self.dense1(inputs))
		    if training:
		      return tf.nn.dropout(y, self.keep_probability)
		    else:
		      return y
		
		model = MyModel()
		model(x, training=True)  # executes a graph, with dropout
		model(x, training=False) # executes a graph, without dropout
		```
		
		_Input Signatures_
		
		`function` instantiates a separate graph for every unique set of input
		shapes and datatypes. For example, the following code snippet will result
		in three distinct graphs being traced, as each input has a different
		shape.
		
		```python
		@tf.function
		def f(x): return tf.add(x, 1.)
		
		scalar = tf.constant(1.0)
		vector = tf.constant([1.0, 1.0])
		matrix = tf.constant([[3.0]])
		
		f(scalar)
		f(vector)
		f(matrix)
		```
		
		An "input signature" can be optionally provided to `function` to control
		the graphs traced. The input signature specifies the shape and type of each
		`Tensor` argument to the function using a `tf.TensorSpec` object. For example,
		the following code snippet ensures that a single graph is created where the
		input `Tensor` is required to be a floating point tensor with no restrictions
		on shape.
		
		```python
		@tf.function(input_signature=[tf.TensorSpec(shape=None, dtype=tf.float32)])
		def f(x): return tf.add(x, 1.)
		```
		
		When an `input_signature` is specified, the callable will only accept `Tensor`
		(or NumPy `ndarray`) objects as arguments.
		
		_Tracing and staging_
		
		When `autograph` is `True`, all Python code that depends on `Tensor` values is
		staged into a TensorFlow graph. When `autograph` is `False`, the function is
		traced and control flow is not allowed to depend on data.
		
		Note that `function` only stages TensorFlow operations, all Python code that
		`func` executes and does not depend on data will shape the _construction_ of
		the graph.
		For example, consider the following:
		
		```python
		import numpy as np
		
		def add_noise():
		  return tf.eye(5) + np.random.randn(5, 5)
		
		traced = tf.function(add_noise)
		```
		
		`add_noise()` will return a different output every time it is invoked.
		However, `add_noise` will return the same value every time it is called,
		since a particular random value generated by the `np.random.randn` call will
		be inserted in the traced/staged TensorFlow graph as a constant. In this
		particular example, replacing `np.random.randn(5, 5)` with
		`tf.random_normal((5, 5))` will result in the same behavior for `add_noise()`
		and `traced()`.
		
		_Python Side-Effects_
		
		A corollary of the previous discussion on tracing is the following: If a
		Python function `func` has Python side-effects, then executing `func` multiple
		times may not be semantically equivalent to executing `F = tf.function(func)`
		multiple times; this difference is due to the fact that `function` only
		captures the subgraph of TensorFlow operations that is constructed when `func`
		is invoked to trace a graph.
		
		The same is true if code with Python side effects is used inside control flow,
		such as a loop. If your code uses side effects that are not intended to
		control graph construction, wrap them inside `tf.py_func`.
		
		Args:
		  func: function to be compiled. If `func` is None, returns a decorator that
		    can be invoked with a single argument - `func`. The end result is
		    equivalent to providing all the arguments up front. In other words,
		    `tf.function(input_signature=...)(func)` is equivalent to
		    `tf.function(func, input_signature=...)`. The former can be used to
		    decorate Python functions, for example:
		      @tf.function(input_signature=...)
		      def foo(...): ...
		  input_signature: A possibly nested sequence of `tf.TensorSpec` objects
		    specifying the shapes and dtypes of the Tensors that will be supplied to
		    this function. If `None`, a separate function is instantiated for each
		    inferred input signature.  If input_signature is specified, every input to
		    `func` must be a `Tensor`, and `func` cannot accept `**kwargs`.
		  autograph: Whether autograph should be applied on `func` before tracing a
		    graph. This allows for dynamic control flow (Python if's, loops etc.)
		    in the traced graph. See https://www.tensorflow.org/guide/autograph for
		      more information.
		  experimental_autograph_options: Experimental knobs (in the form of a tuple
		    of tensorflow.autograph.Feature values) to control behavior when
		    autograph=True.
		
		Returns:
		   If `func` is not None, returns a callable that will execute the compiled
		   function (and return zero or more `tf.Tensor` objects).
		   If `func` is None, returns a decorator that, when invoked with a single
		   `func` argument, returns a callable equivalent to the case above.
		
		Raises:
		  TypeError: If `input_signature` is neither `None` nor a sequence of
		    `TensorSpec` objects.
	**/
	@:native("function")
	static public function _function(?func:Dynamic, ?input_signature:Dynamic, ?autograph:Dynamic, ?experimental_autograph_options:Dynamic):Dynamic;
	/**
		Returns a list of variables for the given `tf.train.Optimizer`.
		
		Equivalent to `optimizer.variables()`.
		
		Args:
		  optimizer: An instance of `tf.train.Optimizer` which has created variables
		    (typically after a call to `Optimizer.minimize`).
		Returns:
		  A list of variables which have been created by the `Optimizer`.
	**/
	static public function get_optimizer_variables(optimizer:Dynamic):Dynamic;
	/**
		Returns a function which differentiates f with respect to params.
		
		Example:
		```python
		# f(x, y) = (x ^ 3) * y - x * (y ^ 2)
		# Therefore, the 1st order derivatives are:
		#   df / dx = 3 * (x ^ 2) * y - y ^ 2
		#   df / dy = x ^ 3 - 2 * x * y
		# The 2nd order derivatives with respect to x is:
		#   d^2 f / (dx)^2 = 6 * x * y
		def f(x, y):
		  return x * x * x * y - x * y * y
		
		# Obtain a function that returns 1st order gradients.
		grad_fn = tfe.gradients_function(f)
		
		x = 2.0
		y = 3.0
		
		# Invoke the 1st order gradient function.
		x_grad, y_grad = grad_fn(x, y)
		assert x_grad.numpy() == 3 * (2 ** 2) * 3 - 3 ** 2
		assert y_grad.numpy() == (2 ** 3) - 2 * 2 * 3
		
		# Obtain a function that returns the 2nd order gradient with respect to x.
		gradgrad_fn = tfe.gradients_function(lambda x, y: grad_fn(x, y)[0])
		
		# Invoke the 2nd order gradient function.
		x_gradgrad = gradgrad_fn(x, y)[0]
		assert x_gradgrad.numpy() == 6 * 2 * 3
		
		# To obtain a callable that returns the gradient(s) of `f` with respect to a
		# subset of its inputs, use the `params` keyword argument with
		# `gradients_function()`.
		ygrad_fn = tfe.gradients_function(f, params=[1])
		
		(y_grad,) = ygrad_fn(x, y)
		assert y_grad.numpy() == (2 ** 3) - 2 * 2 * 3
		```
		
		Note that only tensors with real or complex dtypes are differentiable.
		
		Args:
		  f: function to be differentiated. If `f` returns a scalar, this scalar will
		    be differentiated. If `f` returns a tensor or list of tensors, by default
		    a scalar will be computed by adding all their values to produce a single
		    scalar. If desired, the tensors can be elementwise multiplied by the
		    tensors passed as the `dy` keyword argument to the returned gradient
		    function.
		  params: list of parameter names of f or list of integers indexing the
		    parameters with respect to which we'll differentiate. Passing None
		    differentiates with respect to all parameters.
		
		Returns:
		  function which, when called, returns the value of f and the gradient
		  of `f` with respect to all of `params`. The function takes an extra optional
		  keyword argument `dy`. Setting it allows computation of vector jacobian
		  products for vectors other than the vector of ones.
		
		Raises:
		  ValueError: if the params are not all strings or all integers.
	**/
	static public function gradients_function(f:Dynamic, ?params:Dynamic):Dynamic;
	/**
		Returns a function which differentiates f with respect to variables.
		
		The wrapped function returns the gradient of f when called with the same
		arguments. The gradient is with respect to all trainable TFE variables
		accessed by `f`.
		
		This function is useful when the exact set of variables to differentiate with
		is not known ahead of time.
		
		Example:
		
		```python
		dense_layer = tf.layers.Dense(1)
		def loss(x, y):
		  return tf.reduce_sum(tf.square(dense_layer(x) - y))
		
		# Obtain the gradient function.
		grad_fn = tfe.implicit_gradients(loss)
		
		# Invoke the gradient function with concrete values of x and y.
		x = tf.constant([[1.0, 2.0, 3.0], [4.0, 5.0, 6.0]])
		y = tf.constant([[10.0], [20.0]])
		grads_and_vars = grad_fn(x, y)
		
		# Apply the gradients to Variables.
		optimizer = tf.train.GradientDescentOptimizer(0.1)
		optimizer.apply_gradients(grads_and_vars)
		```
		
		Args:
		  f: function to be differentiated. If `f` returns a scalar, this scalar will
		    be differentiated. If `f` returns a tensor or list of tensors, by default
		    a scalar will be computed by adding all their values to produce a single
		    scalar.
		
		Returns:
		  A function which, when called, returns a list of (gradient, variable) pairs.
	**/
	static public function implicit_gradients(f:Dynamic):Dynamic;
	/**
		Returns a function which differentiates f with respect to variables.
		
		The wrapped function returns the value and the gradient of f when called with
		the same arguments. The gradient is with respect to all trainable TFE
		variables accessed by `f`.
		
		This function is useful when the exact set of variables to differentiate with
		is not known ahead of time.
		
		Example:
		
		```python
		dense_layer = tf.layers.Dense(1)
		def loss(x, y):
		  return tf.reduce_sum(tf.square(dense_layer(x) - y))
		
		# Obtain the gradient function.
		val_grad_fn = tfe.implicit_value_and_gradients(loss)
		
		# Invoke the gradient function with concrete values of x and y.
		x = tf.constant([[1.0, 2.0, 3.0], [4.0, 5.0, 6.0]])
		y = tf.constant([[10.0], [20.0]])
		value, grads_and_vars = val_grad_fn(x, y)
		print('Value of loss: %s' % value)
		
		# Apply the gradients to Variables.
		optimizer = tf.train.GradientDescentOptimizer(0.1)
		optimizer.apply_gradients(grads_and_vars)
		```
		
		Args:
		  f: function to be differentiated. If `f` returns a scalar, this scalar will
		    be differentiated. If `f` returns a tensor or list of tensors, by default
		    a scalar will be computed by adding all their values to produce a single
		    scalar.
		
		Returns:
		  A function which, when called, returns a tuple pair.
		  Its first element is the value to which the function evaluates.
		  Its second element is list of (gradient, variable) pairs.
		
		Raises:
		  ValueError: if `f` returns None.
	**/
	static public function implicit_value_and_gradients(f:Dynamic):Dynamic;
	/**
		Returns True if the current thread has eager execution enabled.
		
		Eager execution is typically enabled via `tf.enable_eager_execution`,
		but may also be enabled within the context of a Python function via
		tf.contrib.eager.py_func.
	**/
	static public function in_eager_mode():Dynamic;
	/**
		A specialization of `inf_nan_callback` that checks for `inf`s only.
	**/
	static public function inf_callback(op_type:Dynamic, inputs:Dynamic, attrs:Dynamic, outputs:Dynamic, op_name:Dynamic, ?action:Dynamic):Dynamic;
	/**
		An execution callback that checks for `inf`s and `nan`s in output tensors.
		
		This callback can be used with `tfe.add_execute_callback` to check for invalid
		numeric values. E.g.,
		```python
		tfe.add_execute_callback(tfe.inf_nan_callback)
		```
		
		Args:
		  op_type: Name of the TFE operation type (e.g., `MatMul`).
		  inputs: The `list` of input tensors to the operation, currently unused by
		    this callback.
		  attrs: Attributes of the TFE operation, as a tuple of alternating attribute
		    names and attribute values.
		  outputs: The `list` of output tensors from the operation, checked by this
		    callback for `inf` and `nan` values.
		  op_name: Name of the TFE operation. This name is set by client and can be
		    `None` if it unset.
		  check_inf: (`bool`) Whether this callback should check for `inf` values in
		    the output tensor values.
		  check_nan: (`bool`) Whether this callback should check for `nan` values in
		    the output tensor values.
		  action: (`ExecutionCallback`) Action to be taken by the callback when
		    `inf` or `nan` values are detected.
		
		Raises:
		  InfOrNanError: iff `inf` or `nan` values are seen in any of `outputs` and
		    `action` is `"raise"`.
		  ValueError: iff the value of `action` is invalid.
	**/
	static public function inf_nan_callback(op_type:Dynamic, inputs:Dynamic, attrs:Dynamic, outputs:Dynamic, op_name:Dynamic, ?check_inf:Dynamic, ?check_nan:Dynamic, ?action:Dynamic):Dynamic;
	/**
		List the names of the available devices.
		
		Returns:
		  Names of the available devices, as a `list`.
	**/
	static public function list_devices():Dynamic;
	/**
		Make a template, optionally compiling func_ into a graph function.
		
		See `make_template` for full documentation.
		
		Args:
		  name_: A name for the scope created by this template. If necessary, the name
		    will be made unique by appending `_N` to the name.
		  func_: The function to wrap.
		  create_scope_now_: Boolean controlling whether the scope should be created
		    when the template is constructed or when the template is called. Default
		    is False, meaning the scope is created when the template is called.
		  unique_name_: When used, it overrides name_ and is not made unique. If a
		    template of the same scope/unique_name already exists and reuse is false,
		    an error is raised. Defaults to None. If executing eagerly, must be None.
		  custom_getter_: Optional custom getter for variables used in `func_`. See
		    the `tf.get_variable` `custom_getter` documentation for
		    more information.
		  create_graph_function_: When True, `func_` will be executed as a graph
		    function. This implies that `func_` must satisfy the properties that
		    `function.defun` requires of functions: See the documentation of
		    `function.defun` for details. When executing eagerly, setting this flag to
		    True can improve performance. Regardless of whether eager execution is
		    enabled, enabling this flag gives the caller access to graph-function
		    semantics, i.e., accesses to variables are totally ordered and
		    side-effecting ops are not pruned.
		  **kwargs: Keyword arguments to apply to `func_`.
		
		Returns:
		  A function to encapsulate a set of variables which should be created once
		  and reused. An enclosing scope will be created either when `make_template`
		  is called or when the result is called, depending on the value of
		  `create_scope_now_`. Regardless of the value, the first time the template
		  is called it will enter the scope with no reuse, and call `func_` to create
		  variables, which are guaranteed to be unique. All subsequent calls will
		  re-enter the scope and reuse those variables.
		
		Raises:
		  ValueError: if `name_` is None.
		  ValueError: if `unique_name_` is not None and eager execution is enabled.
	**/
	static public function make_template(name_:Dynamic, func_:Dynamic, ?create_scope_now_:Dynamic, ?unique_name_:Dynamic, ?custom_getter_:Dynamic, ?create_graph_function_:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		A specialization of `inf_nan_callback` that checks for `nan`s only.
	**/
	static public function nan_callback(op_type:Dynamic, inputs:Dynamic, attrs:Dynamic, outputs:Dynamic, op_name:Dynamic, ?action:Dynamic):Dynamic;
	/**
		Get the number of available GPU devices.
		
		Returns:
		  The number of available GPU devices.
	**/
	static public function num_gpus():Dynamic;
	/**
		Wraps a python function into a TensorFlow op that executes it eagerly.
		
		This function allows expressing computations in a TensorFlow graph as
		Python functions. In particular, it wraps a Python function `func`
		in a once-differentiable TensorFlow operation that executes it with eager
		execution enabled. As a consequence, `tf.contrib.eager.py_func` makes it
		possible to express control flow using Python constructs (`if`, `while`,
		`for`, etc.), instead of TensorFlow control flow constructs (`tf.cond`,
		`tf.while_loop`). For example, you might use `tf.contrib.eager.py_func` to
		implement the log huber function:
		
		```python
		def log_huber(x, m):
		  if tf.abs(x) <= m:
		    return x**2
		  else:
		    return m**2 * (1 - 2 * tf.log(m) + tf.log(x**2))
		
		x = tf.placeholder(tf.float32)
		m = tf.placeholder(tf.float32)
		
		y = tf.contrib.eager.py_func(func=log_huber, inp=[x, m], Tout=tf.float32)
		dy_dx = tf.gradients(y, x)[0]
		
		with tf.Session() as sess:
		  # The session executes `log_huber` eagerly. Given the feed values below,
		  # it will take the first branch, so `y` evaluates to 1.0 and
		  # `dy_dx` evaluates to 2.0.
		  y, dy_dx = sess.run([y, dy_dx], feed_dict={x: 1.0, m: 2.0})
		```
		
		You can also use `tf.contrib.eager.py_func` to debug your models at runtime
		using Python tools, i.e., you can isolate portions of your code that
		you want to debug, wrap them in Python functions and insert `pdb` tracepoints
		or print statements as desired, and wrap those functions in
		`tf.contrib.eager.py_func`.
		
		For more information on eager execution, see the
		[Eager guide](https://tensorflow.org/guide/eager).
		
		`tf.contrib.eager.py_func` is similar in spirit to `tf.py_func`, but unlike
		the latter, the former lets you use TensorFlow operations in the wrapped
		Python function. In particular, while `tf.py_func` only runs on CPUs and
		wraps functions that take NumPy arrays as inputs and return NumPy arrays as
		outputs, `tf.contrib.eager.py_func` can be placed on GPUs and wraps functions
		that take Tensors as inputs, execute TensorFlow operations in their bodies,
		and return Tensors as outputs.
		
		Like `tf.py_func`, `tf.contrib.eager.py_func` has the following limitations
		with respect to serialization and distribution:
		
		* The body of the function (i.e. `func`) will not be serialized in a
		  `GraphDef`. Therefore, you should not use this function if you need to
		  serialize your model and restore it in a different environment.
		
		* The operation must run in the same address space as the Python program
		  that calls `tf.contrib.eager.py_func()`. If you are using distributed
		  TensorFlow, you must run a `tf.train.Server` in the same process as the
		  program that calls `tf.contrib.eager.py_func()` and you must pin the created
		  operation to a device in that server (e.g. using `with tf.device():`).
		
		
		Args:
		  func: A Python function which accepts a list of `Tensor` objects
		    having element types that match the corresponding `tf.Tensor` objects
		    in `inp` and returns a list of `Tensor` objects (or a single
		    `Tensor`, or `None`) having element types that match the
		    corresponding values in `Tout`.
		  inp: A list of `Tensor` objects.
		  Tout: A list or tuple of tensorflow data types or a single tensorflow data
		    type if there is only one, indicating what `func` returns; an empty list
		    if no value is returned (i.e., if the return value is `None`).
		  name: A name for the operation (optional).
		
		Returns:
		  A list of `Tensor` or a single `Tensor` which `func` computes; an empty list
		  if `func` returns None.
	**/
	static public function py_func(func:Dynamic, inp:Dynamic, Tout:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Restore the Network from a checkpoint. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Please inherit from tf.keras.Model instead of tfe.Network, and use tf.keras.Model.load_weights.
		
		If variables have already been created (typically when some or all of the
		`Network` is built), they are assigned values from the checkpoint immediately,
		overwriting any existing values (in graph mode the default session is used for
		the assignments).
		
		If there are checkpoint entries which do not correspond to any existing
		variables in the `Network`, these values are saved for deferred restoration;
		their initial values will be the checkpointed values once they are
		created. Requests for multiple deferred restorations behave the same way as
		immediate restorations, in that later requests will take priority over earlier
		requests relevant to the same variable.
		
		If this `Network` shares `Layer`s with another network, those `Layer`s will
		also have their variables restored from the checkpoint.
		
		Args:
		  network: A Network object to restore.
		  save_path: The return value of `tfe.save_network_checkpoint`, or a directory
		    to search for a checkpoint.
		  map_func: A function mapping fully qualified variable names
		    (e.g. 'my_network_1/dense_1/kernel') to names in the checkpoint. By
		    default (if `map_func=None`), the variable prefix for the network being
		    restored (`Network.scope_name + '/'`, e.g. 'my_network_1/') is stripped
		    and all other variable names (shared with other Networks) are left
		    unchanged. Note that this is the _same_ map_func as
		    `tfe.save_network_checkpoint`, not an inverse mapping.
	**/
	static public function restore_network_checkpoint(network:Dynamic, save_path:Dynamic, ?map_func:Dynamic):Dynamic;
	/**
		ContextManager that restores variables on creation.
		
		  When save_path is None (e.g. No checkpoint), does nothing.
		  Otherwise, it preloads all values from checkpoint. When the
		  corresponding variable is first created, it assigns the checkpoint
		  value to the variable.
		
		  ```python
		  with restore_variables_on_create(
		      tf.train.latest_checkpoint(checkpoint_dir)):
		  ```
		
		Args:
		  save_path: The checkpoint file prefix.
		  map_func: A function that given the variable name as argument
		      and returns a variable name in checkpoint for restore. If
		      None, use the variable with the same name in checkpoint to restore.
		      It's an error that the mapped variable name doesn't exist in
		      checkpoint.
		
		Yields:
		  Nothing.
		
		Raises:
		  NotFoundError: If the variable is not found in checkpoint.
		  ValueError: If not used in eager mode or map_func is not callable.
	**/
	static public function restore_variables_on_create(save_path:Dynamic, ?map_func:Dynamic):Dynamic;
	/**
		Runs the program with an optional main function and argv list.
		
		The program will run with eager execution enabled.
		
		Example:
		```python
		import tensorflow as tf
		# Import subject to future changes:
		from tensorflow.contrib.eager.python import tfe
		
		def main(_):
		  u = tf.constant(6.0)
		  v = tf.constant(7.0)
		  print(u * v)
		
		if __name__ == "__main__":
		  tfe.run()
		```
		
		Args:
		  main: the main function to run.
		  argv: the arguments to pass to it.
	**/
	static public function run(?main:Dynamic, ?argv:Dynamic):Dynamic;
	/**
		Execute all test methods in the given class with and without eager.
	**/
	static public function run_all_tests_in_graph_and_eager_modes(cls:Dynamic):Dynamic;
	/**
		Execute the decorated test with and without enabling eager execution.
		
		This function returns a decorator intended to be applied to test methods in
		a `tf.test.TestCase` class. Doing so will cause the contents of the test
		method to be executed twice - once normally, and once with eager execution
		enabled. This allows unittests to confirm the equivalence between eager
		and graph execution (see `tf.enable_eager_execution`).
		
		For example, consider the following unittest:
		
		```python
		class MyTests(tf.test.TestCase):
		
		  @run_in_graph_and_eager_modes
		  def test_foo(self):
		    x = tf.constant([1, 2])
		    y = tf.constant([3, 4])
		    z = tf.add(x, y)
		    self.assertAllEqual([4, 6], self.evaluate(z))
		
		if __name__ == "__main__":
		  tf.test.main()
		```
		
		This test validates that `tf.add()` has the same behavior when computed with
		eager execution enabled as it does when constructing a TensorFlow graph and
		executing the `z` tensor in a session.
		
		
		Args:
		  func: function to be annotated. If `func` is None, this method returns a
		    decorator the can be applied to a function. If `func` is not None this
		    returns the decorator applied to `func`.
		  config: An optional config_pb2.ConfigProto to use to configure the
		    session when executing graphs.
		  use_gpu: If True, attempt to run as many operations as possible on GPU.
		  reset_test: If True, tearDown and SetUp the test case between the two
		    executions of the test (once with and once without eager execution).
		  assert_no_eager_garbage: If True, sets DEBUG_SAVEALL on the garbage
		    collector and asserts that no extra garbage has been created when running
		    the test with eager execution enabled. This will fail if there are
		    reference cycles (e.g. a = []; a.append(a)). Off by default because some
		    tests may create garbage for legitimate reasons (e.g. they define a class
		    which inherits from `object`), and because DEBUG_SAVEALL is sticky in some
		    Python interpreters (meaning that tests which rely on objects being
		    collected elsewhere in the unit test file will not work). Additionally,
		    checks that nothing still has a reference to Tensors that the test
		    allocated.
		Returns:
		  Returns a decorator that will run the decorated test method twice:
		  once by constructing and executing a graph in a session and once with
		  eager execution enabled.
	**/
	static public function run_test_in_graph_and_eager_modes(?func:Dynamic, ?config:Dynamic, ?use_gpu:Dynamic, ?reset_test:Dynamic, ?assert_no_eager_garbage:Dynamic):Dynamic;
	/**
		Save variables from the Network to a checkpoint. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Please inherit from tf.keras.Model instead of tfe.Network, and use tf.keras.Model.save_weights.
		
		Args:
		  network: A Network object to save.
		  save_path: Either a checkpoint prefix or the name of a directory to save
		    the checkpoint in (in which case the checkpoint will be named based on
		    the Network name).
		  global_step: The global step to use when naming the checkpoint. If None
		    (default), we will first try to get the default global step. If that
		    fails because no default global step exists, then the checkpoint is
		    created without a global step suffix.
		  map_func: A function mapping fully qualified variable names
		    (e.g. 'my_network_1/dense_1/kernel') to names in the checkpoint. By
		    default (if `map_func=None`), the variable prefix for the network being
		    restored (`Network.scope_name + '/'`, e.g. 'my_network_1/') is stripped
		    and all other variable names (shared with other Networks) are left
		    unchanged.
		Returns:
		  The checkpoint prefix for the saved checkpoint, which may be passed to
		  `Network.restore`.
		Raises:
		  ValueError: If the Network has not yet been called, or if map_func results
		    in a name collision.
	**/
	static public function save_network_checkpoint(network:Dynamic, save_path:Dynamic, ?global_step:Dynamic, ?map_func:Dynamic):Dynamic;
	/**
		Sets execution mode for the current thread.
	**/
	static public function set_execution_mode(mode:Dynamic):Dynamic;
	static public function set_server_def(server_def:Dynamic):Dynamic;
	/**
		Set how abnormal conditions are handled by the default eager context.
		
		Example:
		```python
		tfe.seterr(inf_or_nan=ExecutionCallback.RAISE)
		a = tf.constant(10.0)
		b = tf.constant(0.0)
		try:
		  c = a / b  # <-- Raises InfOrNanError.
		except Exception as e:
		  print("Caught Exception: %s" % e)
		
		tfe.seterr(inf_or_nan=ExecutionCallback.IGNORE)
		c = a / b  # <-- Does NOT raise exception anymore.
		```
		
		Args:
		  inf_or_nan: An `ExecutionCallback` determining the action for infinity
		    (`inf`) and NaN (`nan`) values. A value of `None` leads to no change in
		    the action of the condition.
		
		Returns:
		  A dictionary of old actions.
		
		Raises:
		  ValueError: If the value of any keyword arguments is invalid.
	**/
	static public function seterr(?inf_or_nan:Dynamic):Dynamic;
	/**
		Returns a function that computes f and its derivative w.r.t. params.
		
		Example:
		```python
		# f(x, y) = (x ^ 3) * y - x * (y ^ 2)
		# Therefore, the 1st order derivatives are:
		#   df / dx = 3 * (x ^ 2) * y - y ^ 2
		#   df / dy = x ^ 3 - 2 * x * y
		def f(x, y):
		  return x * x * x * y - x * y * y
		
		# Obtain a function that returns the function value and the 1st order
		# gradients.
		val_grads_fn = tfe.value_and_gradients_function(f)
		
		x = 2.0
		y = 3.0
		
		# Invoke the value-and-gradients function.
		f_val, (x_grad, y_grad) = val_grads_fn(x, y)
		assert f_val.numpy() == (2 ** 3) * 3 - 2 * (3 ** 2)
		assert x_grad.numpy() == 3 * (2 ** 2) * 3 - 3 ** 2
		assert y_grad.numpy() == (2 ** 3) - 2 * 2 * 3
		
		# To obtain a callable that returns the value of `f` and the gradient(s) of
		# `f` with respect to a subset of its inputs, use the `params` keyword
		# argument with `value_and_gradients_function()`.
		val_ygrad_fn = tfe.value_and_gradients_function(f, params=[1])
		
		f_val, (y_grad,) = val_ygrad_fn(x, y)
		assert f_val.numpy() == (2 ** 3) * 3 - 2 * (3 ** 2)
		assert y_grad.numpy() == (2 ** 3) - 2 * 2 * 3
		```
		
		Args:
		  f: function to be differentiated. If `f` returns a scalar, this scalar will
		    be differentiated. If `f` returns a tensor or list of tensors, by default
		    a scalar will be computed by adding all their values to produce a single
		    scalar. If desired, the tensors can be elementwise multiplied by the
		    tensors passed as the `dy` keyword argument to the returned gradient
		    function.
		  params: list of parameter names of f or list of integers indexing the
		    parameters with respect to which we'll differentiate. Passing `None`
		    differentiates with respect to all parameters.
		
		Returns:
		  function which, when called, returns the value of f and the gradient
		  of f with respect to all of `params`. The function takes an extra optional
		  keyword argument "dy". Setting it allows computation of vector jacobian
		  products for vectors other than the vector of ones.
		
		Raises:
		  ValueError: if the params are not all strings or all integers.
	**/
	static public function value_and_gradients_function(f:Dynamic, ?params:Dynamic):Dynamic;
}