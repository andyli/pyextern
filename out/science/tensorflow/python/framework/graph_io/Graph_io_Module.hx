/* This file is generated, do not edit! */
package tensorflow.python.framework.graph_io;
@:pythonImport("tensorflow.python.framework.graph_io") extern class Graph_io_Module {
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