/* This file is generated, do not edit! */
package tensorflow.contrib.checkpoint.python.visualize;
@:pythonImport("tensorflow.contrib.checkpoint.python.visualize") extern class Visualize_Module {
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
		Visualizes an object-based checkpoint (from `tf.train.Checkpoint`).
		
		Useful for inspecting checkpoints and debugging loading issues.
		
		Example usage from Python (requires pydot):
		```python
		import tensorflow as tf
		import pydot
		
		dot_string = tf.contrib.checkpoint.dot_graph_from_checkpoint('/path/to/ckpt')
		parsed, = pydot.graph_from_dot_data(dot_string)
		parsed.write_svg('/tmp/tensorflow/visualized_checkpoint.svg')
		```
		
		Example command line usage:
		```sh
		python -c "import tensorflow as tf;\
		  print(tf.contrib.checkpoint.dot_graph_from_checkpoint('/path/to/ckpt'))"\
		  | dot -Tsvg > /tmp/tensorflow/checkpoint_viz.svg
		```
		
		Args:
		  save_path: The checkpoint prefix, as returned by `tf.train.Checkpoint.save`
		    or `tf.train.latest_checkpoint`.
		Returns:
		  A graph in DOT format as a string.
	**/
	static public function dot_graph_from_checkpoint(save_path:Dynamic):Dynamic;
	static public var print_function : Dynamic;
}