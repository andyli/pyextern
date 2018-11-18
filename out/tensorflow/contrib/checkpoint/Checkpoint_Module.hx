/* This file is generated, do not edit! */
package tensorflow.contrib.checkpoint;
@:pythonImport("tensorflow.contrib.checkpoint") extern class Checkpoint_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __path__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Capture variables created within this scope as `Template` dependencies.
		
		Requires that `template.variable_scope` is active.
		
		This scope is intended as a compatibility measure, allowing a checkpointable
		object to add dependencies on variables created in a block of code which is
		not aware of object-based saving (and instead uses variable names
		heavily). This is how `Template` objects add dependencies on variables and
		sub-`Template`s. Where possible, use `tf.make_template` directly.
		
		Args:
		  template: The `Template` object to register dependencies with.
		
		Yields:
		  None (when used as a context manager).
	**/
	static public function capture_dependencies(template:Dynamic):Dynamic;
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
	/**
		Traverse the object graph and list all accessible objects.
		
		Looks for `Checkpointable` objects which are dependencies of
		`root_checkpointable`. Includes slot variables only if the variable they are
		slotting for and the optimizer are dependencies of `root_checkpointable`
		(i.e. if they would be saved with a checkpoint).
		
		Args:
		  root_checkpointable: A `Checkpointable` object whose dependencies should be
		    flattened.
		Returns:
		  A flat list of objects.
	**/
	static public function list_objects(root_checkpointable:Dynamic):Dynamic;
	/**
		Retrieves information about the objects in a checkpoint.
		
		Example usage:
		
		```python
		object_graph = tf.contrib.checkpoint.object_metadata(
		    tf.train.latest_checkpoint(checkpoint_directory))
		ckpt_variable_names = set()
		for node in object_graph.nodes:
		  for attribute in node.attributes:
		    ckpt_variable_names.add(attribute.full_name)
		```
		
		Args:
		  save_path: The path to the checkpoint, as returned by `save` or
		    `tf.train.latest_checkpoint`.
		Returns:
		  A parsed `tf.contrib.checkpoint.CheckpointableObjectGraph` protocol buffer.
		Raises:
		  ValueError: If an object graph was not found in the checkpoint.
	**/
	static public function object_metadata(save_path:Dynamic):Dynamic;
	/**
		Creates multiple dependencies with a synchronized save/restore.
		
		Useful when a single op produces `Tensor`s which should each be saved under
		different objects, or when `Tensor`s saved with many different objects need to
		be restored together as inputs to a single op (i.e. an object which uses a
		single fused op may be swapped out for a subgraph of objects, and these two
		programs are checkpoint compatible).
		
		Args:
		  component_names: A sequence of names for the split
		    dependencies. `fill_save_buffer_fn` must add these keys to the dictionary
		    it is passed, and `consume_restore_buffer_fn` will receive a dictionary
		    with these keys.
		  component_dtypes: Data types for the `Tensor`s being saved and restored, a
		    sequence corresponding to `component_names`.
		  fill_save_buffer_fn: A function which takes an empty dictionary as an
		    argument and adds `Tensor`s with `component_names` as keys. These
		    `Tensor`s will be saved as if they were individual variables.
		  consume_restore_buffer_fn: A function which takes a dictionary with
		    `component_names` as keys mapping to restored individual `Tensor`s and
		    returns a restore op (or if executing eagerly, runs the restoration and
		    may return `None`).
		
		Returns:
		  A dictionary mapping from names to Checkpointable objects. If one is
		  reachable from an object as a dependency, the others should be too; adding
		  dependencies on some but not all of the objects will result in errors.
	**/
	static public function split_dependency(component_names:Dynamic, component_dtypes:Dynamic, fill_save_buffer_fn:Dynamic, consume_restore_buffer_fn:Dynamic):Dynamic;
}