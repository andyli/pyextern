/* This file is generated, do not edit! */
package tensorflow.python.eager._function;
@:pythonImport("tensorflow.python.eager.function") extern class _Function_Module {
	static public var BACKWARD_FUNCTION_ATTRIBUTE_NAME : Dynamic;
	static public var ENCODE_VARIABLES_BY_RESOURCE_ID : Dynamic;
	static public var FORWARD_FUNCTION_ATTRIBUTE_NAME : Dynamic;
	static public var IMPLEMENTS_ATTRIBUTE_NAME : Dynamic;
	static public var SHARED_RENDEZVOUS_ATTRIBUTE_NAME : Dynamic;
	static public var _BACKWARD_PREFIX : Dynamic;
	static public var _BOUND_VALUE : Dynamic;
	static public var _FORWARD_PREFIX : Dynamic;
	static public var _INFERENCE_PREFIX : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Converts value to an ndarray, assumes _is_ndarray(value).
	**/
	static public function _as_ndarray(value:Dynamic):Dynamic;
	/**
		The name of a generated backward defun named n.
	**/
	static public function _backward_name(n:Dynamic):Dynamic;
	static public function _contains_type_spec(value:Dynamic):Dynamic;
	/**
		Convert inputs to pass into a function with an explicit signature.
	**/
	static public function _convert_inputs_to_signature(inputs:Dynamic, input_signature:Dynamic, flat_input_signature:Dynamic):Dynamic;
	/**
		Convert numpy array inputs to tensors.
	**/
	static public function _convert_numpy_inputs(inputs:Dynamic):Dynamic;
	/**
		Creates forward and backward functions from the function graphs.
	**/
	static public function _create_forward_backward_with_graph(attrs:Dynamic, forward_graph:Dynamic, backwards_graph:Dynamic):Dynamic;
	static public function _deterministic_dict_values(dictionary:Dynamic):Dynamic;
	/**
		Returns the XLAControlFlowContext, which exists inside a tpu.rewrite().
	**/
	static public function _enclosing_xla_context():Dynamic;
	/**
		The name of a generated forward defun named n.
	**/
	static public function _forward_name(n:Dynamic):Dynamic;
	static public var _function_callbacks : Dynamic;
	static public var _graph_building_time_counter : Dynamic;
	/**
		The name of a forward-but-no-gradient defun named n.
	**/
	static public function _inference_name(n:Dynamic):Dynamic;
	/**
		Tests whether the given value is an ndarray (and not a TF tensor/var).
	**/
	static public function _is_ndarray(value:Dynamic):Dynamic;
	/**
		Returns true if TypeSpec `b` is a subset of type `a` (or if a is None.)
	**/
	static public function _is_type_subset(a:Dynamic, b:Dynamic):Dynamic;
	/**
		Rewrite input signature to be hashable.
		
		We replace nested variables in the input signature with TensorSpec in order to
		be hashable.
		
		Args:
		  elem: Input signature element
		
		Returns:
		  A hashable object for the requested input signature
	**/
	static public function _make_input_signature_hashable(elem:Dynamic):Dynamic;
	/**
		Convert the keyword arguments into function_def attributes.
		
		Currently only support primitive types: bool, int, float and string.
		
		Args:
		  attributes: the dictionary of attributes.
		Returns:
		  A dict of attributes where the key is the name of attribute and the value
		    is the AttrValue proto.
		Raises:
		  ValueError: If the kwargs contains unallowlisted name or unsupported value
		    types.
	**/
	static public function _parse_func_attrs(attributes:Dynamic):Dynamic;
	/**
		Returns a shape-relaxed TypeSpec for x (if composite) or x (if not).
	**/
	static public function _shape_relaxed_type_for_composite_tensor(x:Dynamic):Dynamic;
	/**
		Displays a summary of the nesting structure of the given value.
	**/
	static public function _structure_summary(structure:Dynamic):Dynamic;
	/**
		Returns a TypeSpec for `x`, or `None` if `x` doesn't have a TensorSpec.
	**/
	static public function _type_spec_for(x:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Add a callback function for Function creation.
		
		The callback function has the signature:
		
		  `def function_callback(function, name, graph, inputs, outputs):`
		
		where:
		- `function`: _EagerDefinedFunction being created before finalizing the graph.
		    Do not modify the function directly but instead modify the graph.
		- `name`: name of the function.
		- `graph`: Graph of the function.
		- `inputs`: `tuple` of tensors used as inputs to the function.
		- `outputs`: `tuple` of tensors used as outputs from the function.
		
		The callback is at the top of the `_EagerDefinedFunction` construction, giving
		callback an opportunity to make the last edits to the graph. Do not make
		changes to `graph, inputs`, and `outputs` manually, but, instead, set the
		`graph` as the default then define ops.
		
		Repeated registration of the same callback function is idempotent.
		After a callback is added, it can be removed with the
		`remove_function_callback()` method.
		
		Args:
		  function_callback: The callback to add.
	**/
	static public function add_function_callback(function_callback:Dynamic):Dynamic;
	/**
		Constructs a new `Function` with `self` bound.
	**/
	static public function class_method_to_instance_method(original_function:Dynamic, instance:Dynamic):Dynamic;
	/**
		Clear all function callbacks, if any have been regisered.
	**/
	static public function clear_function_callbacks():Dynamic;
	/**
		Find a `TensorShape` that is compatible with both `x` and `y`.
	**/
	static public function common_shape(x:Dynamic, y:Dynamic):Dynamic;
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
		functions makes it possible to incrementally trade off debuggability and
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
		
		tf.compat.v1.enable_eager_execution()
		
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
		optimizer = tf.compat.v1.train.GradientDescentOptimizer(learning_rate=0.01)
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
		`F(tf.random.uniform([2])` will execute a different graph than
		`F(tf.random.uniform([3])` because the two inputs have different shapes.
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
		words = tf.random.uniform(([50, 300, 10])
		second_input = tf.random.uniform([300, 100])
		my_sequence_model(words, second_input)
		
		words = tf.random.uniform(([50, 300, 20])
		my_sequence_model(words, second_input)
		
		# Passing an input with an incompatible shape will raise an error.
		words = tf.random.uniform(([50, 100, 20])
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
		
		tf.compat.v1.enable_eager_execution()
		
		def add_noise():
		  return tf.eye(5) + np.random.randn(5, 5)
		```
		
		will return a different output everytime it is invoked, the compiled function
		`compiled = tf.contrib.eager.defun(add_noise)` will return the same value
		every time it is called, since a particular random offset generated by NumPy
		will be inserted into the graph as a TensorFlow constant. The solution is to
		replace the call to `np.random.randn` with `tf.random.normal((5, 5))`.
		
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
		
		tf.compat.v1.enable_eager_execution()
		
		@tf.contrib.eager.defun
		def lossy_matmul(W, x, training=True):
		  outputs = tf.matmul(W, x)
		  if training:
		    outputs = tf.nn.dropout(outputs, keep_probability=0.2)
		  return outputs
		
		W = tf.random.normal((3, 5))
		x = tf.random.normal((5, 1))
		
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
		
		tf.compat.v1.enable_eager_execution()
		
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
		  experimental_autograph_options: Experimental knobs (in the form of a tuple
		    of tensorflow.autograph.Feature values) to control behavior when
		    autograph=True.
		  experimental_relax_shapes: When true, argument shapes may be relaxed to
		    avoid unnecessary retracing.
		
		Returns:
		   If `func` is not None, returns a callable that will execute the compiled
		   function (and return zero or more `tf.Tensor` objects).
		   If `func` is None, returns a decorator that, when invoked with a single
		   `func` argument, returns a callable equivalent to the case above.
		
		Raises:
		  TypeError: If `input_signature` is neither `None` nor a sequence of
		    `tf.contrib.eager.TensorSpec` objects.
	**/
	static public function defun(?func:Dynamic, ?input_signature:Dynamic, ?autograph:Dynamic, ?experimental_autograph_options:Dynamic, ?experimental_relax_shapes:Dynamic):Dynamic;
	/**
		Compiles a Python function into a callable TensorFlow graph.
		
		This function supports adding extra function attributes. See detailed
		documentation in defun(). Currently this is not exposed in public API since we
		don't expect user to directly use attributes, and attribute won't work by
		itself. This assumption might change in future.
		
		Args:
		  func: function to be compiled.
		  input_signature: same as defun()'s input_signature.
		  attributes: A dictionary of arguments which will be added to function def as
		    attributes. Currently only support primitive types as value, and only
		    allowlisted attribute name is allowed. Unallowlisted attribute name or
		    unsupported value will result into ValueError. `func_name` is also one of
		    the allowlisted argument which is a python string, and sets the name for
		    this `ConcreteFunction` in the graph.
		  autograph: same as defun()'s autograph.
		  experimental_autograph_options: same as defun()'s
		    experimental_autograph_options.
		  jit_compile: same as defun()'s jit_compile.
		  experimental_relax_shapes: same as defun()'s experimental_relax_shapes
		  experimental_follow_type_hints: see `tf.function`.
		
		Returns:
		  Same as the return value of defun, with attributes added to the function in
		  graph.
	**/
	static public function defun_with_attributes(?func:Dynamic, ?input_signature:Dynamic, ?attributes:Dynamic, ?autograph:Dynamic, ?experimental_autograph_options:Dynamic, ?jit_compile:Dynamic, ?experimental_relax_shapes:Dynamic, ?experimental_follow_type_hints:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Graph-only version of tf.compat.v1.placeholder(), for internal use only.
	**/
	static public function graph_placeholder(dtype:Dynamic, shape:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Check two structures for equality, optionally of types and of values.
	**/
	static public function is_same_structure(structure1:Dynamic, structure2:Dynamic, ?check_values:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Register a specialization of a `Function` into the graph.
		
		This won't actually call the function with the inputs, and only put the
		function definition into graph. Register function with different input param
		will result into multiple version of functions registered in graph.
		
		Args:
		  func: the `Function` instance that generated by a @defun
		  *args: input arguments for the Python function.
		  **kwargs: input keyword arguments for the Python function.
		
		Returns:
		  a `ConcreteFunction` object specialized to inputs and execution context.
		
		Raises:
		  ValueError: When the input function is not a defun wrapped python function.
	**/
	static public function register(func:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Remove an already-added function callback.
		
		See the doc string of `add_function_callback()` for more information.
		
		Args:
		  function_callback: The callback to remove.
	**/
	static public function remove_function_callback(function_callback:Dynamic):Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function validate_python_function(python_function:Dynamic):Dynamic;
	static public function validate_signature(signature:Dynamic):Dynamic;
}