/* This file is generated, do not edit! */
package tensorflow.python.training.training_util;
@:pythonImport("tensorflow.python.training.training_util") extern class Training_util_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	/**
		Small helper to get the global step.
		
		```python
		# Creates a variable to hold the global_step.
		global_step_tensor = tf.Variable(10, trainable=False, name='global_step')
		# Creates a session.
		sess = tf.Session()
		# Initializes the variable.
		sess.run(global_step_tensor.initializer)
		print('global_step: %s' % tf.train.global_step(sess, global_step_tensor))
		
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
	/**
		Writes a graph proto to a file.
		
		The graph is written as a binary proto unless `as_text` is `True`.
		
		```python
		v = tf.Variable(0, name='my_variable')
		sess = tf.Session()
		tf.train.write_graph(sess.graph_def, '/tmp/my-model', 'train.pbtxt')
		```
		
		Args:
		  graph_def: A `GraphDef` protocol buffer.
		  logdir: Directory where to write the graph. This can refer to remote
		    filesystems, such as Google Cloud Storage (GCS).
		  name: Filename for the graph.
		  as_text: If `True`, writes the graph as an ASCII proto.
	**/
	static public function write_graph(graph_def:Dynamic, logdir:Dynamic, name:Dynamic, ?as_text:Dynamic):Dynamic;
}