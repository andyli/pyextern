/* This file is generated, do not edit! */
package tensorflow.python.ops.script_ops;
@:pythonImport("tensorflow.python.ops.script_ops") extern class Script_ops_Module {
	/**
		Computes the gradient of an EagerPyFunc.
	**/
	static public function _EagerPyFuncGrad(op:Dynamic, ?dy:python.VarArgs<Dynamic>):Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		See documentation for py_func and eager_py_func.
	**/
	static public function _internal_py_func(func:Dynamic, inp:Dynamic, Tout:Dynamic, ?stateful:Dynamic, ?eager:Dynamic, ?is_grad_func:Dynamic, ?name:Dynamic):Dynamic;
	static public function _py_funcs(token:Dynamic, device:Dynamic, args:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
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
	static public function eager_py_func(func:Dynamic, inp:Dynamic, Tout:Dynamic, ?name:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Wraps a python function and uses it as a TensorFlow op. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		tf.py_func is deprecated in TF V2. Instead, use
		    tf.py_function, which takes a python function which manipulates tf eager
		    tensors instead of numpy arrays. It's easy to convert a tf eager tensor to
		    an ndarray (just call tensor.numpy()) but having access to eager tensors
		    means `tf.py_function`s can use accelerators such as GPUs as well as
		    being differentiable using a gradient tape.
		    
		
		Given a python function `func`, which takes numpy arrays as its
		arguments and returns numpy arrays as its outputs, wrap this function as an
		operation in a TensorFlow graph. The following snippet constructs a simple
		TensorFlow graph that invokes the `np.sinh()` NumPy function as a operation
		in the graph:
		
		```python
		def my_func(x):
		  # x will be a numpy array with the contents of the placeholder below
		  return np.sinh(x)
		input = tf.placeholder(tf.float32)
		y = tf.py_func(my_func, [input], tf.float32)
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
		  func: A Python function, which accepts `ndarray` objects as arguments and
		    returns a list of `ndarray` objects (or a single `ndarray`). This function
		    must accept as many arguments as there are tensors in `inp`, and these
		    argument types will match the corresponding `tf.Tensor` objects
		    in `inp`. The returns `ndarray`s must match the number and types defined
		    `Tout`.
		    Important Note: Input and output numpy `ndarray`s of `func` are not
		    guaranteed to be copies. In some cases their underlying memory will be
		    shared with the corresponding TensorFlow tensors.
		    In-place modification or storing `func` input or return values in
		    python datastructures without explicit (np.)copy
		    can have non-deterministic consequences.
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
	static public var tape_cache : Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}