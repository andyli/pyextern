/* This file is generated, do not edit! */
package tensorflow.python.client.session;
@:pythonImport("tensorflow.python.client.session", "BaseSession") extern class BaseSession {
	static public var _DEAD_HANDLES_THRESHOLD : Dynamic;
	static public var _NODEDEF_NAME_RE : Dynamic;
	static public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function __del__():Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
	static public var __dict__ : Dynamic;
	/**
		__dir__() -> list
		default dir() implementation
	**/
	public function __dir__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var __doc__ : Dynamic;
	/**
		Return self==value.
	**/
	public function __eq__(value:Dynamic):Dynamic;
	/**
		default object formatter
	**/
	public function __format__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return self>=value.
	**/
	public function __ge__(value:Dynamic):Dynamic;
	/**
		Return getattr(self, name).
	**/
	public function __getattribute__(name:Dynamic):Dynamic;
	/**
		Return self>value.
	**/
	public function __gt__(value:Dynamic):Dynamic;
	/**
		Return hash(self).
	**/
	public function __hash__():Dynamic;
	/**
		Constructs a new TensorFlow session.
		
		Args:
		  target: (Optional) The TensorFlow execution engine to connect to.
		  graph: (Optional) The graph to be used. If this argument is None,
		    the default graph will be used.
		  config: (Optional) ConfigProto proto used to configure the session.
		
		Raises:
		  tf.errors.OpError: Or one of its subclasses if an error occurs while
		    creating the TensorFlow session.
		  TypeError: If one of the arguments has the wrong type.
	**/
	@:native("__init__")
	public function ___init__(?target:Dynamic, ?graph:Dynamic, ?config:Dynamic):Dynamic;
	/**
		Constructs a new TensorFlow session.
		
		Args:
		  target: (Optional) The TensorFlow execution engine to connect to.
		  graph: (Optional) The graph to be used. If this argument is None,
		    the default graph will be used.
		  config: (Optional) ConfigProto proto used to configure the session.
		
		Raises:
		  tf.errors.OpError: Or one of its subclasses if an error occurs while
		    creating the TensorFlow session.
		  TypeError: If one of the arguments has the wrong type.
	**/
	public function new(?target:Dynamic, ?graph:Dynamic, ?config:Dynamic):Void;
	/**
		Return self<=value.
	**/
	public function __le__(value:Dynamic):Dynamic;
	/**
		Return self<value.
	**/
	public function __lt__(value:Dynamic):Dynamic;
	static public var __module__ : Dynamic;
	/**
		Return self!=value.
	**/
	public function __ne__(value:Dynamic):Dynamic;
	/**
		Create and return a new object.  See help(type) for accurate signature.
	**/
	static public function __new__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		helper for pickle
	**/
	public function __reduce__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		helper for pickle
	**/
	public function __reduce_ex__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return repr(self).
	**/
	public function __repr__():Dynamic;
	/**
		Implement setattr(self, name, value).
	**/
	public function __setattr__(name:Dynamic, value:Dynamic):Dynamic;
	/**
		__sizeof__() -> int
		size of object in memory, in bytes
	**/
	public function __sizeof__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return str(self).
	**/
	public function __str__():Dynamic;
	/**
		Abstract classes can override this to customize issubclass().
		
		This is invoked early on by abc.ABCMeta.__subclasscheck__().
		It should return True, False or NotImplemented.  If it returns
		NotImplemented, the normal algorithm is used.  Otherwise, it
		overrides the normal algorithm (and the outcome is cached).
	**/
	static public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	public function _do_call(fn:Dynamic, ?args:python.VarArgs<Dynamic>):Dynamic;
	/**
		Runs a step based on the given fetches and feeds.
		
		Args:
		  handle: a handle for partial_run. None if this is just a call to run().
		  target_list: A list of byte arrays corresponding to names of tensors
		    or operations to be run to, but not fetched.
		  fetch_list: A list of byte arrays corresponding to names of tensors to
		    be fetched and operations to be run.
		  feed_dict: A dictionary that maps tensor names (as byte arrays) to
		    numpy ndarrays.
		  options: A (pointer to a) [`RunOptions`] protocol buffer, or None
		  run_metadata: A (pointer to a) [`RunMetadata`] protocol buffer, or None
		
		Returns:
		  A list of numpy ndarrays, corresponding to the elements of
		  `fetch_list`.  If the ith element of `fetch_list` contains the
		  name of an operation, the first Tensor output of that operation
		  will be returned for that element.
		
		Raises:
		  tf.errors.OpError: Or one of its subclasses on error.
	**/
	public function _do_run(handle:Dynamic, target_list:Dynamic, fetch_list:Dynamic, feed_dict:Dynamic, options:Dynamic, run_metadata:Dynamic):Dynamic;
	public function _extend_graph():Dynamic;
	public function _register_dead_handle(handle:Dynamic):Dynamic;
	/**
		Perform either run or partial_run, depending the presence of `handle`.
	**/
	public function _run(handle:Dynamic, fetches:Dynamic, feed_dict:Dynamic, options:Dynamic, run_metadata:Dynamic):Dynamic;
	public function _update_with_movers(feed_dict:Dynamic, feed_map:Dynamic):Dynamic;
	/**
		Returns a context manager that makes this object the default session.
		
		Use with the `with` keyword to specify that calls to
		[`Operation.run()`](../../api_docs/python/framework.md#Operation.run) or
		[`Tensor.eval()`](../../api_docs/python/framework.md#Tensor.eval) should be
		executed in this session.
		
		```python
		c = tf.constant(..)
		sess = tf.Session()
		
		with sess.as_default():
		  assert tf.get_default_session() is sess
		  print(c.eval())
		```
		
		To get the current default session, use
		[`tf.get_default_session()`](#get_default_session).
		
		
		*N.B.* The `as_default` context manager *does not* close the
		session when you exit the context, and you must close the session
		explicitly.
		
		```python
		c = tf.constant(...)
		sess = tf.Session()
		with sess.as_default():
		  print(c.eval())
		# ...
		with sess.as_default():
		  print(c.eval())
		
		sess.close()
		```
		
		Alternatively, you can use `with tf.Session():` to create a
		session that is automatically closed on exiting the context,
		including when an uncaught exception is raised.
		
		*N.B.* The default graph is a property of the current thread. If you
		create a new thread, and wish to use the default session in that
		thread, you must explicitly add a `with sess.as_default():` in that
		thread's function.
		
		Returns:
		  A context manager using this session as the default session.
	**/
	public function as_default():Dynamic;
	/**
		Closes this session.
		
		Calling this method frees all resources associated with the session.
		
		Raises:
		  tf.errors.OpError: Or one of its subclasses if an error occurs while
		    closing the TensorFlow session.
	**/
	public function close():Dynamic;
	/**
		The graph that was launched in this session.
	**/
	public var graph : Dynamic;
	/**
		A serializable version of the underlying TensorFlow graph.
		
		Returns:
		  A graph_pb2.GraphDef proto containing nodes for all of the Operations in
		  the underlying TensorFlow graph.
	**/
	public var graph_def : Dynamic;
	/**
		Continues the execution with more feeds and fetches.
		
		This is EXPERIMENTAL and subject to change.
		
		To use partial execution, a user first calls `partial_run_setup()` and
		then a sequence of `partial_run()`. `partial_run_setup` specifies the
		list of feeds and fetches that will be used in the subsequent
		`partial_run` calls.
		
		The optional `feed_dict` argument allows the caller to override
		the value of tensors in the graph. See run() for more information.
		
		Below is a simple example:
		
		```python
		a = array_ops.placeholder(dtypes.float32, shape=[])
		b = array_ops.placeholder(dtypes.float32, shape=[])
		c = array_ops.placeholder(dtypes.float32, shape=[])
		r1 = math_ops.add(a, b)
		r2 = math_ops.mul(r1, c)
		
		h = sess.partial_run_setup([r1, r2], [a, b, c])
		res = sess.partial_run(h, r1, feed_dict={a: 1, b: 2})
		res = sess.partial_run(h, r2, feed_dict={c: res})
		```
		
		Args:
		  handle: A handle for a sequence of partial runs.
		  fetches: A single graph element, a list of graph elements,
		    or a dictionary whose values are graph elements or lists of graph
		    elements (see documentation for `run`).
		  feed_dict: A dictionary that maps graph elements to values
		    (described above).
		
		Returns:
		  Either a single value if `fetches` is a single graph element, or
		  a list of values if `fetches` is a list, or a dictionary with the
		  same keys as `fetches` if that is a dictionary
		  (see documentation for `run`).
		
		Raises:
		  tf.errors.OpError: Or one of its subclasses on error.
	**/
	public function partial_run(handle:Dynamic, fetches:Dynamic, ?feed_dict:Dynamic):Dynamic;
	/**
		Sets up a graph with feeds and fetches for partial run.
		
		This is EXPERIMENTAL and subject to change.
		
		Note that contrary to `run`, `feeds` only specifies the graph elements.
		The tensors will be supplied by the subsequent `partial_run` calls.
		
		Args:
		  fetches: A single graph element, or a list of graph elements.
		  feeds: A single graph element, or a list of graph elements.
		
		Returns:
		  A handle for partial run.
		
		Raises:
		  RuntimeError: If this `Session` is in an invalid state (e.g. has been
		    closed).
		  TypeError: If `fetches` or `feed_dict` keys are of an inappropriate type.
		  tf.errors.OpError: Or one of its subclasses if a TensorFlow error happens.
	**/
	public function partial_run_setup(fetches:Dynamic, ?feeds:Dynamic):Dynamic;
	/**
		Runs operations and evaluates tensors in `fetches`.
		
		This method runs one "step" of TensorFlow computation, by
		running the necessary graph fragment to execute every `Operation`
		and evaluate every `Tensor` in `fetches`, substituting the values in
		`feed_dict` for the corresponding input values.
		
		The `fetches` argument may be a single graph element, or an arbitrarily
		nested list, tuple, namedtuple, or dict containing graph elements at its
		leaves.  A graph element can be one of the following types:
		
		* An [`Operation`](../../api_docs/python/framework.md#Operation).
		  The corresponding fetched value will be `None`.
		* A [`Tensor`](../../api_docs/python/framework.md#Tensor).
		  The corresponding fetched value will be a numpy ndarray containing the
		  value of that tensor.
		* A [`SparseTensor`](../../api_docs/python/sparse_ops.md#SparseTensor).
		  The corresponding fetched value will be a
		  [`SparseTensorValue`](../../api_docs/python/sparse_ops.md#SparseTensorValue)
		  containing the value of that sparse tensor.
		* A `get_tensor_handle` op.  The corresponding fetched value will be a
		  numpy ndarray containing the handle of that tensor.
		* A `string` which is the name of a tensor or operation in the graph.
		
		The value returned by `run()` has the same shape as the `fetches` argument,
		where the leaves are replaced by the corresponding values returned by
		TensorFlow.
		
		Example:
		
		```python
		   a = tf.constant([10, 20])
		   b = tf.constant([1.0, 2.0])
		   # 'fetches' can be a singleton
		   v = session.run(a)
		   # v is the numpy array [10, 20]
		   # 'fetches' can be a list.
		   v = session.run([a, b])
		   # v a Python list with 2 numpy arrays: the numpy array [10, 20] and the
		   # 1-D array [1.0, 2.0]
		   # 'fetches' can be arbitrary lists, tuples, namedtuple, dicts:
		   MyData = collections.namedtuple('MyData', ['a', 'b'])
		   v = session.run({'k1': MyData(a, b), 'k2': [b, a]})
		   # v is a dict with
		   # v['k1'] is a MyData namedtuple with 'a' the numpy array [10, 20] and
		   # 'b' the numpy array [1.0, 2.0]
		   # v['k2'] is a list with the numpy array [1.0, 2.0] and the numpy array
		   # [10, 20].
		```
		
		The optional `feed_dict` argument allows the caller to override
		the value of tensors in the graph. Each key in `feed_dict` can be
		one of the following types:
		
		* If the key is a [`Tensor`](../../api_docs/python/framework.md#Tensor), the
		  value may be a Python scalar, string, list, or numpy ndarray
		  that can be converted to the same `dtype` as that
		  tensor. Additionally, if the key is a
		  [placeholder](../../api_docs/python/io_ops.md#placeholder), the shape of
		  the value will be checked for compatibility with the placeholder.
		* If the key is a
		  [`SparseTensor`](../../api_docs/python/sparse_ops.md#SparseTensor),
		  the value should be a
		  [`SparseTensorValue`](../../api_docs/python/sparse_ops.md#SparseTensorValue).
		* If the key is a nested tuple of `Tensor`s or `SparseTensor`s, the value
		  should be a nested tuple with the same structure that maps to their
		  corresponding values as above.
		
		Each value in `feed_dict` must be convertible to a numpy array of the dtype
		of the corresponding key.
		
		The optional `options` argument expects a [`RunOptions`] proto. The options
		allow controlling the behavior of this particular step (e.g. turning tracing
		on).
		
		The optional `run_metadata` argument expects a [`RunMetadata`] proto. When
		appropriate, the non-Tensor output of this step will be collected there. For
		example, when users turn on tracing in `options`, the profiled info will be
		collected into this argument and passed back.
		
		Args:
		  fetches: A single graph element, a list of graph elements,
		    or a dictionary whose values are graph elements or lists of graph
		    elements (described above).
		  feed_dict: A dictionary that maps graph elements to values
		    (described above).
		  options: A [`RunOptions`] protocol buffer
		  run_metadata: A [`RunMetadata`] protocol buffer
		
		Returns:
		  Either a single value if `fetches` is a single graph element, or
		  a list of values if `fetches` is a list, or a dictionary with the
		  same keys as `fetches` if that is a dictionary (described above).
		
		Raises:
		  RuntimeError: If this `Session` is in an invalid state (e.g. has been
		    closed).
		  TypeError: If `fetches` or `feed_dict` keys are of an inappropriate type.
		  ValueError: If `fetches` or `feed_dict` keys are invalid or refer to a
		    `Tensor` that doesn't exist.
	**/
	public function run(fetches:Dynamic, ?feed_dict:Dynamic, ?options:Dynamic, ?run_metadata:Dynamic):Dynamic;
	/**
		The TensorFlow process to which this session will connect.
	**/
	public var sess_str : Dynamic;
}