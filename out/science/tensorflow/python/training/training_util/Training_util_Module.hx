/* This file is generated, do not edit! */
package tensorflow.python.training.training_util;
@:pythonImport("tensorflow.python.training.training_util") extern class Training_util_Module {
	static public var GLOBAL_STEP_READ_KEY : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Gets global step read tensor in graph.
		
		Args:
		  graph: The graph in which to create the global step read tensor. If missing,
		    use default graph.
		
		Returns:
		  Global step read tensor.
		
		Raises:
		  RuntimeError: if multiple items found in collection GLOBAL_STEP_READ_KEY.
	**/
	static public function _get_global_step_read(?graph:Dynamic):Dynamic;
	/**
		Gets or creates global step read tensor in graph.
		
		Args:
		  graph: The graph in which to create the global step read tensor. If missing,
		    use default graph.
		
		Returns:
		  Global step read tensor if there is global_step_tensor else return None.
	**/
	static public function _get_or_create_global_step_read(?graph:Dynamic):Dynamic;
	static public function _increment_global_step(increment:Dynamic, ?graph:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Asserts `global_step_tensor` is a scalar int `Variable` or `Tensor`.
		
		Args:
		  global_step_tensor: `Tensor` to test.
	**/
	static public function assert_global_step(global_step_tensor:Dynamic):Dynamic;
	/**
		Create global step tensor in graph.
		
		Args:
		  graph: The graph in which to create the global step tensor. If missing, use
		    default graph.
		
		Returns:
		  Global step tensor.
		
		Raises:
		  ValueError: if global step tensor is already defined.
		
		@compatibility(TF2)
		With the deprecation of global graphs, TF no longer tracks variables in
		collections. In other words, there are no global variables in TF2. Thus, the
		global step functions have been removed  (`get_or_create_global_step`,
		`create_global_step`, `get_global_step`) . You have two options for migrating:
		
		1. Create a Keras optimizer, which generates an `iterations` variable. This
		   variable is automatically incremented when calling `apply_gradients`.
		2. Manually create and increment a `tf.Variable`.
		
		Below is an example of migrating away from using a global step to using a
		Keras optimizer:
		
		Define a dummy model and loss:
		
		>>> def compute_loss(x):
		...   v = tf.Variable(3.0)
		...   y = x * v
		...   loss = x * 5 - x * v
		...   return loss, [v]
		
		Before migrating:
		
		>>> g = tf.Graph()
		>>> with g.as_default():
		...   x = tf.compat.v1.placeholder(tf.float32, [])
		...   loss, var_list = compute_loss(x)
		...   global_step = tf.compat.v1.train.create_global_step()
		...   global_init = tf.compat.v1.global_variables_initializer()
		...   optimizer = tf.compat.v1.train.GradientDescentOptimizer(0.1)
		...   train_op = optimizer.minimize(loss, global_step, var_list)
		>>> sess = tf.compat.v1.Session(graph=g)
		>>> sess.run(global_init)
		>>> print("before training:", sess.run(global_step))
		before training: 0
		>>> sess.run(train_op, feed_dict={x: 3})
		>>> print("after training:", sess.run(global_step))
		after training: 1
		
		Migrating to a Keras optimizer:
		
		>>> optimizer = tf.keras.optimizers.SGD(.01)
		>>> print("before training:", optimizer.iterations.numpy())
		before training: 0
		>>> with tf.GradientTape() as tape:
		...   loss, var_list = compute_loss(3)
		...   grads = tape.gradient(loss, var_list)
		...   optimizer.apply_gradients(zip(grads, var_list))
		>>> print("after training:", optimizer.iterations.numpy())
		after training: 1
		
		@end_compatibility
	**/
	static public function create_global_step(?graph:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Get the global step tensor.
		
		The global step tensor must be an integer variable. We first try to find it
		in the collection `GLOBAL_STEP`, or by name `global_step:0`.
		
		Args:
		  graph: The graph to find the global step in. If missing, use default graph.
		
		Returns:
		  The global step variable, or `None` if none was found.
		
		Raises:
		  TypeError: If the global step tensor has a non-integer type, or if it is not
		    a `Variable`.
		
		@compatibility(TF2)
		With the deprecation of global graphs, TF no longer tracks variables in
		collections. In other words, there are no global variables in TF2. Thus, the
		global step functions have been removed  (`get_or_create_global_step`,
		`create_global_step`, `get_global_step`) . You have two options for migrating:
		
		1. Create a Keras optimizer, which generates an `iterations` variable. This
		   variable is automatically incremented when calling `apply_gradients`.
		2. Manually create and increment a `tf.Variable`.
		
		Below is an example of migrating away from using a global step to using a
		Keras optimizer:
		
		Define a dummy model and loss:
		
		>>> def compute_loss(x):
		...   v = tf.Variable(3.0)
		...   y = x * v
		...   loss = x * 5 - x * v
		...   return loss, [v]
		
		Before migrating:
		
		>>> g = tf.Graph()
		>>> with g.as_default():
		...   x = tf.compat.v1.placeholder(tf.float32, [])
		...   loss, var_list = compute_loss(x)
		...   global_step = tf.compat.v1.train.get_or_create_global_step()
		...   global_init = tf.compat.v1.global_variables_initializer()
		...   optimizer = tf.compat.v1.train.GradientDescentOptimizer(0.1)
		...   train_op = optimizer.minimize(loss, global_step, var_list)
		>>> sess = tf.compat.v1.Session(graph=g)
		>>> sess.run(global_init)
		>>> print("before training:", sess.run(global_step))
		before training: 0
		>>> sess.run(train_op, feed_dict={x: 3})
		>>> print("after training:", sess.run(global_step))
		after training: 1
		
		Using `get_global_step`:
		
		>>> with g.as_default():
		...   print(sess.run(tf.compat.v1.train.get_global_step()))
		1
		
		Migrating to a Keras optimizer:
		
		>>> optimizer = tf.keras.optimizers.SGD(.01)
		>>> print("before training:", optimizer.iterations.numpy())
		before training: 0
		>>> with tf.GradientTape() as tape:
		...   loss, var_list = compute_loss(3)
		...   grads = tape.gradient(loss, var_list)
		...   optimizer.apply_gradients(zip(grads, var_list))
		>>> print("after training:", optimizer.iterations.numpy())
		after training: 1
		
		@end_compatibility
	**/
	static public function get_global_step(?graph:Dynamic):Dynamic;
	/**
		Returns and create (if necessary) the global step tensor.
		
		Args:
		  graph: The graph in which to create the global step tensor. If missing, use
		    default graph.
		
		Returns:
		  The global step tensor.
		
		@compatibility(TF2)
		With the deprecation of global graphs, TF no longer tracks variables in
		collections. In other words, there are no global variables in TF2. Thus, the
		global step functions have been removed  (`get_or_create_global_step`,
		`create_global_step`, `get_global_step`) . You have two options for migrating:
		
		1. Create a Keras optimizer, which generates an `iterations` variable. This
		   variable is automatically incremented when calling `apply_gradients`.
		2. Manually create and increment a `tf.Variable`.
		
		Below is an example of migrating away from using a global step to using a
		Keras optimizer:
		
		Define a dummy model and loss:
		
		>>> def compute_loss(x):
		...   v = tf.Variable(3.0)
		...   y = x * v
		...   loss = x * 5 - x * v
		...   return loss, [v]
		
		Before migrating:
		
		>>> g = tf.Graph()
		>>> with g.as_default():
		...   x = tf.compat.v1.placeholder(tf.float32, [])
		...   loss, var_list = compute_loss(x)
		...   global_step = tf.compat.v1.train.get_or_create_global_step()
		...   global_init = tf.compat.v1.global_variables_initializer()
		...   optimizer = tf.compat.v1.train.GradientDescentOptimizer(0.1)
		...   train_op = optimizer.minimize(loss, global_step, var_list)
		>>> sess = tf.compat.v1.Session(graph=g)
		>>> sess.run(global_init)
		>>> print("before training:", sess.run(global_step))
		before training: 0
		>>> sess.run(train_op, feed_dict={x: 3})
		>>> print("after training:", sess.run(global_step))
		after training: 1
		
		Migrating to a Keras optimizer:
		
		>>> optimizer = tf.keras.optimizers.SGD(.01)
		>>> print("before training:", optimizer.iterations.numpy())
		before training: 0
		>>> with tf.GradientTape() as tape:
		...   loss, var_list = compute_loss(3)
		...   grads = tape.gradient(loss, var_list)
		...   optimizer.apply_gradients(zip(grads, var_list))
		>>> print("after training:", optimizer.iterations.numpy())
		after training: 1
		
		@end_compatibility
	**/
	static public function get_or_create_global_step(?graph:Dynamic):Dynamic;
	/**
		Small helper to get the global step.
		
		```python
		# Create a variable to hold the global_step.
		global_step_tensor = tf.Variable(10, trainable=False, name='global_step')
		# Create a session.
		sess = tf.compat.v1.Session()
		# Initialize the variable
		sess.run(global_step_tensor.initializer)
		# Get the variable value.
		print('global_step: %s' % tf.compat.v1.train.global_step(sess,
		global_step_tensor))
		
		global_step: 10
		```
		
		Args:
		  sess: A TensorFlow `Session` object.
		  global_step_tensor:  `Tensor` or the `name` of the operation that contains
		    the global step.
		
		Returns:
		  The global step value.
	**/
	static public function global_step(sess:Dynamic, global_step_tensor:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Writes a graph proto to a file.
		
		The graph is written as a text proto unless `as_text` is `False`.
		
		```python
		v = tf.Variable(0, name='my_variable')
		sess = tf.compat.v1.Session()
		tf.io.write_graph(sess.graph_def, '/tmp/my-model', 'train.pbtxt')
		```
		
		or
		
		```python
		v = tf.Variable(0, name='my_variable')
		sess = tf.compat.v1.Session()
		tf.io.write_graph(sess.graph, '/tmp/my-model', 'train.pbtxt')
		```
		
		Args:
		  graph_or_graph_def: A `Graph` or a `GraphDef` protocol buffer.
		  logdir: Directory where to write the graph. This can refer to remote
		    filesystems, such as Google Cloud Storage (GCS).
		  name: Filename for the graph.
		  as_text: If `True`, writes the graph as an ASCII proto.
		
		Returns:
		  The path of the output proto file.
	**/
	static public function write_graph(graph_or_graph_def:Dynamic, logdir:Dynamic, name:Dynamic, ?as_text:Dynamic):Dynamic;
}