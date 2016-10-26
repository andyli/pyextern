/* This file is generated, do not edit! */
package tensorflow.python.training.saver;
@:pythonImport("tensorflow.python.training.saver") extern class Saver_Module {
	/**
		Returns a filename for storing the CheckpointState.
		
		Args:
		  save_dir: The directory for saving and restoring checkpoints.
		  latest_filename: Name of the file in 'save_dir' that is used
		    to store the CheckpointState.
		
		Returns:
		  The path of the file that contains the CheckpointState proto.
	**/
	static public function _GetCheckpointFilename(save_dir:Dynamic, latest_filename:Dynamic):Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Adds a collection to MetaGraphDef protocol buffer.
		
		Args:
		  meta_graph_def: MetaGraphDef protocol buffer.
		  key: One of the GraphKeys or user-defined string.
	**/
	static public function _add_collection_def(meta_graph_def:Dynamic, key:Dynamic):Dynamic;
	/**
		Construct and returns a `MetaGraphDef` protocol buffer.
		
		Args:
		  meta_info_def: `MetaInfoDef` protocol buffer.
		  graph_def: `GraphDef` protocol buffer.
		  saver_def: `SaverDef` protocol buffer.
		  collection_list: List of string keys to collect.
		
		Returns:
		  MetaGraphDef protocol buffer.
		
		Raises:
		  TypeError: If the arguments are not of the correct proto buffer type.
	**/
	static public function _as_meta_graph_def(?meta_info_def:Dynamic, ?graph_def:Dynamic, ?saver_def:Dynamic, ?collection_list:Dynamic):Dynamic;
	/**
		Returns the kind name in CollectionDef.
		
		Args:
		  item: A data item.
		
		Returns:
		  The string representation of the kind in CollectionDef.
	**/
	static public function _get_kind_name(item:Dynamic):Dynamic;
	/**
		Recreates a Graph saved in a `MetaGraphDef` proto.
		
		This function adds all the nodes from the meta graph def proto to the current
		graph, recreates all the collections, and returns a saver from saver_def.
		
		Args:
		  meta_graph_def: `MetaGraphDef` protocol buffer.
		
		Returns:
		  A saver constructed from `saver_def` in `meta_graph_def` or None.
		
		  A None value is returned if no variables exist in the `meta_graph_def`
		  (i.e., no variables to restore).
	**/
	static public function _import_meta_graph_def(meta_graph_def:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	/**
		Returns `MetaGraphDef` proto. Optionally writes it to filename.
		
		This function exports the graph, saver, and collection objects into
		`MetaGraphDef` protocol buffer with the intension of it being imported
		at a later time or location to restart training, run inference, or be
		a subgraph.
		
		Args:
		  filename: Optional filename including the path for writing the
		    generated `MetaGraphDef` protocol buffer.
		  meta_info_def: `MetaInfoDef` protocol buffer.
		  graph_def: `GraphDef` protocol buffer.
		  saver_def: `SaverDef` protocol buffer.
		  collection_list: List of string keys to collect.
		  as_text: If `True`, writes the `MetaGraphDef` as an ASCII proto.
		
		Returns:
		  A `MetaGraphDef` proto.
	**/
	static public function export_meta_graph(?filename:Dynamic, ?meta_info_def:Dynamic, ?graph_def:Dynamic, ?saver_def:Dynamic, ?collection_list:Dynamic, ?as_text:Dynamic):Dynamic;
	/**
		Generates a checkpoint state proto.
		
		Args:
		  save_dir: Directory where the model was saved.
		  model_checkpoint_path: The checkpoint file.
		  all_model_checkpoint_paths: List of strings.  Paths to all not-yet-deleted
		    checkpoints, sorted from oldest to newest.  If this is a non-empty list,
		    the last element must be equal to model_checkpoint_path.  These paths
		    are also saved in the CheckpointState proto.
		
		Returns:
		  CheckpointState proto with model_checkpoint_path and
		  all_model_checkpoint_paths updated to either absolute paths or
		  relative paths to the current save_dir.
	**/
	static public function generate_checkpoint_state_proto(save_dir:Dynamic, model_checkpoint_path:Dynamic, ?all_model_checkpoint_paths:Dynamic):Dynamic;
	/**
		Returns CheckpointState proto from the "checkpoint" file.
		
		If the "checkpoint" file contains a valid CheckpointState
		proto, returns it.
		
		Args:
		  checkpoint_dir: The directory of checkpoints.
		  latest_filename: Optional name of the checkpoint file.  Default to
		    'checkpoint'.
		
		Returns:
		  A CheckpointState if the state was available, None
		  otherwise.
		
		Raises:
		  ValueError: if the checkpoint read doesn't have model_checkpoint_path set.
	**/
	static public function get_checkpoint_state(checkpoint_dir:Dynamic, ?latest_filename:Dynamic):Dynamic;
	/**
		Recreates a Graph saved in a `MetaGraphDef` proto.
		
		This function takes a `MetaGraphDef` protocol buffer as input. If
		the argument is a file containing a `MetaGraphDef` protocol buffer ,
		it constructs a protocol buffer from the file content. The function
		then adds all the nodes from the `graph_def` field to the
		current graph, recreates all the collections, and returns a saver
		constructed from the `saver_def` field.
		
		In combination with `export_meta_graph()`, this function can be used to
		
		* Serialize a graph along with other Python objects such as `QueueRunner`,
		  `Variable` into a `MetaGraphDef`.
		
		* Restart training from a saved graph and checkpoints.
		
		* Run inference from a saved graph and checkpoints.
		
		```Python
		...
		# Create a saver.
		saver = tf.train.Saver(...variables...)
		# Remember the training_op we want to run by adding it to a collection.
		tf.add_to_collection('train_op', train_op)
		sess = tf.Session()
		for step in xrange(1000000):
		    sess.run(train_op)
		    if step % 1000 == 0:
		        # Saves checkpoint, which by default also exports a meta_graph
		        # named 'my-model-global_step.meta'.
		        saver.save(sess, 'my-model', global_step=step)
		```
		
		Later we can continue training from this saved `meta_graph` without building
		the model from scratch.
		
		```Python
		with tf.Session() as sess:
		  new_saver = tf.train.import_meta_graph('my-save-dir/my-model-10000.meta')
		  new_saver.restore(sess, 'my-save-dir/my-model-10000')
		  # tf.get_collection() returns a list. In this example we only want the
		  # first one.
		  train_op = tf.get_collection('train_op')[0]
		  for step in xrange(1000000):
		    sess.run(train_op)
		```
		
		NOTE: Restarting training from saved `meta_graph` only works if the
		device assignments have not changed.
		
		Args:
		  meta_graph_or_file: `MetaGraphDef` protocol buffer or filename (including
		    the path) containing a `MetaGraphDef`.
		
		Returns:
		  A saver constructed from `saver_def` in `MetaGraphDef` or None.
		
		  A None value is returned if no variables exist in the `MetaGraphDef`
		  (i.e., there are no variables to restore).
	**/
	static public function import_meta_graph(meta_graph_or_file:Dynamic):Dynamic;
	/**
		Finds the filename of latest saved checkpoint file.
		
		Args:
		  checkpoint_dir: Directory where the variables were saved.
		  latest_filename: Optional name for the protocol buffer file that
		    contains the list of most recent checkpoint filenames.
		    See the corresponding argument to `Saver.save()`.
		
		Returns:
		  The full path to the latest checkpoint or `None` if no checkpoint was found.
	**/
	static public function latest_checkpoint(checkpoint_dir:Dynamic, ?latest_filename:Dynamic):Dynamic;
	/**
		Collect the list of ops used by a graph.
		
		Does not validate that the ops are all registered.
		
		Args:
		  graph_def: A `GraphDef` proto, as from `graph.as_graph_def()`.
		
		Returns:
		  A list of strings, each naming an op used by the graph.
	**/
	static public function ops_used_by_graph_def(graph_def:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Reads a file containing `MetaGraphDef` and returns the protocol buffer.
		
		Args:
		  filename: `meta_graph_def` filename including the path.
		
		Returns:
		  A `MetaGraphDef` protocol buffer.
		
		Raises:
		  IOError: If the file doesn't exist, or cannot be successfully parsed.
	**/
	static public function read_meta_graph_file(filename:Dynamic):Dynamic;
	/**
		Collect the stripped OpDefs for ops used by a graph.
		
		This function computes the `stripped_op_list` field of `MetaGraphDef` and
		similar protos.  The result can be communicated from the producer to the
		consumer, which can then use the C++ function
		`RemoveNewDefaultAttrsFromGraphDef` to improve forwards compatibility.
		
		Args:
		  graph_def: A `GraphDef` proto, as from `graph.as_graph_def()`.
		
		Returns:
		  An `OpList` of ops used by the graph.
		
		Raises:
		  ValueError: If an unregistered op is used.
	**/
	static public function stripped_op_list_for_graph(graph_def:Dynamic):Dynamic;
	/**
		Updates the content of the 'checkpoint' file.
		
		This updates the checkpoint file containing a CheckpointState
		proto.
		
		Args:
		  save_dir: Directory where the model was saved.
		  model_checkpoint_path: The checkpoint file.
		  all_model_checkpoint_paths: List of strings.  Paths to all not-yet-deleted
		    checkpoints, sorted from oldest to newest.  If this is a non-empty list,
		    the last element must be equal to model_checkpoint_path.  These paths
		    are also saved in the CheckpointState proto.
		  latest_filename: Optional name of the checkpoint file.  Default to
		    'checkpoint'.
		
		Raises:
		  RuntimeError: If the save paths conflict.
	**/
	static public function update_checkpoint_state(save_dir:Dynamic, model_checkpoint_path:Dynamic, ?all_model_checkpoint_paths:Dynamic, ?latest_filename:Dynamic):Dynamic;
}