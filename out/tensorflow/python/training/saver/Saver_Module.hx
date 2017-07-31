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
	static public var _VARIABLE_OPS : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Returns the saver from SAVERS collection, or creates a default one.
		
		This method is used by other members of the training module, such as
		`Scaffold`, or `CheckpointSaverHook`.
		
		Returns:
		  `Saver`.
		
		Raises:
		  RuntimeError: If the SAVERS collection already has more than one items.
	**/
	static public function _get_saver_or_default():Dynamic;
	/**
		Returns the pathname of a checkpoint file, given the checkpoint prefix.
		
		For V1 checkpoint, simply returns the prefix itself (the data file).  For V2,
		returns the pathname to the index file.
		
		Args:
		  prefix: a string, the prefix of a checkpoint.
		  format_version: the checkpoint format version that corresponds to the
		    prefix.
		Returns:
		  The pathname of a checkpoint file, taking into account the checkpoint
		    format version.
	**/
	static public function _prefix_to_checkpoint_path(prefix:Dynamic, format_version:Dynamic):Dynamic;
	/**
		Creates a new device string based on `device_string` but using /CPU:0.
		
		If the device is already on /CPU:0, this is a no-op.
		
		Args:
		  device_string: A device string.
		
		Returns:
		  A device string.
	**/
	static public function _set_cpu0(device_string:Dynamic):Dynamic;
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
		  save_relative_paths: If `True`, will write relative paths to the checkpoint
		    state file.
		
		Raises:
		  RuntimeError: If any of the model checkpoint paths conflict with the file
		    containing CheckpointSate.
	**/
	static public function _update_checkpoint_state(save_dir:Dynamic, model_checkpoint_path:Dynamic, ?all_model_checkpoint_paths:Dynamic, ?latest_filename:Dynamic, ?save_relative_paths:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Checks whether a V1 or V2 checkpoint exists with the specified prefix.
		
		This is the recommended way to check if a checkpoint exists, since it takes
		into account the naming difference between V1 and V2 formats.
		
		Args:
		  checkpoint_prefix: the prefix of a V1 or V2 checkpoint, with V2 taking
		    priority.  Typically the result of `Saver.save()` or that of
		    `tf.train.latest_checkpoint()`, regardless of sharded/non-sharded or
		    V1/V2.
		Returns:
		  A bool, true iff a checkpoint referred to by `checkpoint_prefix` exists.
	**/
	static public function checkpoint_exists(checkpoint_prefix:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Returns `MetaGraphDef` proto. Optionally writes it to filename.
		
		This function exports the graph, saver, and collection objects into
		`MetaGraphDef` protocol buffer with the intention of it being imported
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
		  graph: The `Graph` to import into. If `None`, use the default graph.
		  export_scope: Optional `string`. Name scope under which to extract
		    the subgraph. The scope name will be striped from the node definitions
		    for easy import later into new name scopes. If `None`, the whole graph
		    is exported. graph_def and export_scope cannot both be specified.
		  clear_devices: Whether or not to clear the device field for an `Operation`
		    or `Tensor` during export.
		  **kwargs: Optional keyed arguments.
		
		Returns:
		  A `MetaGraphDef` proto.
		
		Raises:
		  ValueError: When the `GraphDef` is larger than 2GB.
	**/
	static public function export_meta_graph(?filename:Dynamic, ?meta_info_def:Dynamic, ?graph_def:Dynamic, ?saver_def:Dynamic, ?collection_list:Dynamic, ?as_text:Dynamic, ?graph:Dynamic, ?export_scope:Dynamic, ?clear_devices:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
		Returns the mtimes (modification timestamps) of the checkpoints.
		
		Globs for the checkpoints pointed to by `checkpoint_prefixes`.  If the files
		exist, collect their mtime.  Both V2 and V1 checkpoints are considered, in
		that priority.
		
		This is the recommended way to get the mtimes, since it takes into account
		the naming difference between V1 and V2 formats.
		
		Args:
		  checkpoint_prefixes: a list of checkpoint paths, typically the results of
		    `Saver.save()` or those of `tf.train.latest_checkpoint()`, regardless of
		    sharded/non-sharded or V1/V2.
		Returns:
		  A list of mtimes (in microseconds) of the found checkpoints.
	**/
	static public function get_checkpoint_mtimes(checkpoint_prefixes:Dynamic):Dynamic;
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
		  clear_devices: Whether or not to clear the device field for an `Operation`
		    or `Tensor` during import.
		  import_scope: Optional `string`. Name scope to add. Only used when
		    initializing from protocol buffer.
		  **kwargs: Optional keyed arguments.
		
		Returns:
		  A saver constructed from `saver_def` in `MetaGraphDef` or None.
		
		  A None value is returned if no variables exist in the `MetaGraphDef`
		  (i.e., there are no variables to restore).
	**/
	static public function import_meta_graph(meta_graph_or_file:Dynamic, ?clear_devices:Dynamic, ?import_scope:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
	static public var print_function : Dynamic;
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
		  RuntimeError: If any of the model checkpoint paths conflict with the file
		    containing CheckpointSate.
	**/
	static public function update_checkpoint_state(save_dir:Dynamic, model_checkpoint_path:Dynamic, ?all_model_checkpoint_paths:Dynamic, ?latest_filename:Dynamic):Dynamic;
}