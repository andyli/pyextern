/* This file is generated, do not edit! */
package tensorflow.python.debug.lib.debug_gradients;
@:pythonImport("tensorflow.python.debug.lib.debug_gradients", "GradientsDebugger") extern class GradientsDebugger {
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
	static public var __dict__ : Dynamic;
	/**
		Default dir() implementation.
	**/
	public function __dir__():Dynamic;
	static public var __doc__ : Dynamic;
	public function __enter__():Dynamic;
	/**
		Return self==value.
	**/
	public function __eq__(value:Dynamic):Dynamic;
	public function __exit__(unused_type:Dynamic, unused_value:Dynamic, unused_traceback:Dynamic):Dynamic;
	/**
		Default object formatter.
	**/
	public function __format__(format_spec:Dynamic):Dynamic;
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
		Constructor of GradientsDebugger.
		
		Args:
		  y_tensor: optional: the `tf.Tensor` to be differentiated, i.e., the tensor
		    on the numerator of the differentiation.
	**/
	@:native("__init__")
	public function ___init__(?y_tensor:Dynamic):Dynamic;
	/**
		Constructor of GradientsDebugger.
		
		Args:
		  y_tensor: optional: the `tf.Tensor` to be differentiated, i.e., the tensor
		    on the numerator of the differentiation.
	**/
	public function new(?y_tensor:Dynamic):Void;
	/**
		This method is called when a class is subclassed.
		
		The default implementation does nothing. It may be
		overridden to extend subclasses.
	**/
	public function __init_subclass__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		Helper for pickle.
	**/
	public function __reduce__():Dynamic;
	/**
		Helper for pickle.
	**/
	public function __reduce_ex__(protocol:Dynamic):Dynamic;
	/**
		Return repr(self).
	**/
	public function __repr__():Dynamic;
	/**
		Implement setattr(self, name, value).
	**/
	public function __setattr__(name:Dynamic, value:Dynamic):Dynamic;
	/**
		Size of object in memory, in bytes.
	**/
	public function __sizeof__():Dynamic;
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
	public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	public function _check_same_graph(tensor:Dynamic):Dynamic;
	public function _get_tensor_name(tensor:Dynamic):Dynamic;
	/**
		Get the gradient tensor of an x-tensor.
		
		Args:
		  x_tensor: (`tf.Tensor`, `tf.Variable` or `str`) The x-tensor object or its
		    name. x-tensor refers to the independent `tf.Tensor`, i.e., the tensor
		    on the denominator of the differentiation.
		
		Returns:
		  If found, the gradient tensor.
		
		Raises:
		  TypeError: If `x_tensor` is not a `tf.Tensor`, `tf.Variable` or `str`.
		  LookupError: If the `x_tensor` has not been registered with a gradient
		    tensor.
	**/
	public function gradient_tensor(x_tensor:Dynamic):Dynamic;
	/**
		Get the gradient tensors that this object is aware of.
		
		Returns:
		  A dict mapping x-tensor names to gradient tensor objects. x-tensor refers
		  to the tensors on the denominator of the differentation.
	**/
	public function gradient_tensors():Dynamic;
	public var graph : Dynamic;
	/**
		Create a debug identity tensor that registers and forwards gradients.
		
		The side effect of this method is that when gradient tensor(s) are created
		with respect to the any paths that include the `input_tensor`, the gradient
		tensor(s) with respect to `input_tensor` will be registered with this
		this `GradientsDebugger` instance and can later be retrieved, with the
		methods `gradient_tensor` and `gradient_tensors`.
		
		Example:
		
		```python
		x = tf.Variable(1.0)
		y = tf.add(x, x)
		
		grad_debugger = tf_debug.GradientsDebugger()
		debug_y = grad_debugger.identify_gradient(y)
		z = tf.square(debug_y)
		
		# Create a train op under the grad_debugger context.
		with grad_debugger:
		  train_op = tf.compat.v1.train.GradientDescentOptimizer(z)
		
		# Now we can reflect through grad_debugger to get the gradient tensor
		# with respect to y.
		y_grad = grad_debugger.gradient_tensor(y)
		```
		
		Args:
		  input_tensor: the input `tf.Tensor` object whose related gradient tensors
		    are to be registered with this `GradientsDebugger` instance when they
		    are created, e.g., during `tf.gradients` calls or the construction
		    of optimization (training) op that uses `tf.gradients`.
		
		Returns:
		  A forwarded identity of `input_tensor`, as a `tf.Tensor`.
		
		Raises:
		  ValueError: If an op with name that duplicates the gradient-debugging op
		    already exists in the graph (highly unlikely).
	**/
	public function identify_gradient(input_tensor:Dynamic):Dynamic;
	/**
		Register the gradient tensor for an x-tensor.
		
		Args:
		  x_tensor_name: (`str`) the name of the independent `tf.Tensor`, i.e.,
		    the tensor on the denominator of the differentiation.
		  gradient_tensor: the gradient `tf.Tensor`.
	**/
	public function register_gradient_tensor(x_tensor_name:Dynamic, gradient_tensor:Dynamic):Dynamic;
	/**
		Watch gradient tensors by name(s) of the x-tensor(s).
		
		The side effect of this method is that when gradient tensor(s) are created
		with respect to the x-tensors, the gradient tensor(s) will be registered
		with this `GradientsDebugger` instance and can later be retrieved.
		
		Unlike the `identify_gradient` method, this method is used after the
		construction of the forward graph has completed. Unlike the
		`watch_gradients_by_tensor` method, this method does not use handles to the
		tensors of interest; it uses their names.
		
		This method is the same as `watch_gradients_by_tensors` except that the
		x-tensors are specified by name patterns, instead of `tf.Tensor` or
		`tf.Variable` objects.
		
		Example:
		
		```python
		x = tf.Variable(1.0, name="x")
		y = tf.add(x, x, name="y")
		z = tf.square(debug_y)
		
		# Create a train op under the grad_debugger context.
		grad_debugger = tf_debug.GradientsDebugger()
		with grad_debugger.watch_gradients_by_tensor_names(r"(x|y):0$"):
		  train_op = tf.compat.v1.train.GradientDescentOptimizer(z)
		
		# Now we can reflect through grad_debugger to get the gradient tensor
		# with respect to x and y.
		x_grad = grad_debugger.gradient_tensor("x:0")
		y_grad = grad_debugger.gradient_tensor("y:0")
		```
		
		Args:
		  graph: the `tf.Graph` to watch the gradients on.
		  tensor_name_regex: the regular-expression pattern of the name(s) of the
		    x-tensor(s) to watch. x-tensor refers to the tensors on the denominator
		    of the differentiation.
		
		Returns:
		  The GradientsDebugger instance itself.
	**/
	public function watch_gradients_by_tensor_names(graph:Dynamic, tensor_name_regex:Dynamic):Dynamic;
	/**
		Watch gradient tensors by x-tensor(s).
		
		The side effect of this method is that when gradient tensor(s) are created
		with respect to the any paths that include the `x_tensor`s, the gradient
		tensor(s) with respect to the tensor will be registered with this
		this `GradientsDebugger` instance and can later be retrieved, with the
		methods `gradient_tensor` and `gradient_tensors`.
		
		Unlike the method `identify_gradient`, this method is used to retrieve
		gradient tensors after the construction of the forward subgraph has
		completed (but before the construction of the backward subgraph).
		
		This method is the same as `watch_gradients_by_x_tensor_names` except that
		the tensors are specified by the Python `tf.Tensor` or `tf.Variable`
		objects, instead by name patterns.
		
		Example:
		
		```python
		x = tf.Variable(1.0)
		y = tf.add(x, x, name="y")
		z = tf.square(debug_y)
		
		# Create a train op under the grad_debugger context.
		grad_debugger = tf_debug.GradientsDebugger()
		with grad_debugger.watch_gradients_by_tensors(y):
		  train_op = tf.compat.v1.train.GradientDescentOptimizer(z)
		
		# Now we can reflect through grad_debugger to get the gradient tensor
		# with respect to y.
		y_grad = grad_debugger.gradient_tensor(y)
		# or
		y_grad = grad_debugger.gradient_tensor("y:0")
		```
		
		Args:
		  graph: the `tf.Graph` to watch the gradients on.
		  tensors: a `tf.Tensor` or `tf.Variable` object, or a list of such objects.
		
		Returns:
		  The GradientsDebugger instance itself.
	**/
	public function watch_gradients_by_tensors(graph:Dynamic, tensors:Dynamic):Dynamic;
	public var y_tensor : Dynamic;
}