/* This file is generated, do not edit! */
package tensorflow.python.training.saver;
@:pythonImport("tensorflow.python.training.saver") extern class Saver_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Return a saver for restoring variable values to an imported MetaGraph.
	**/
	static public function _create_saver_from_imported_meta_graph(meta_graph_def:Dynamic, import_scope:Dynamic, imported_vars:Dynamic):Dynamic;
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
		Import MetaGraph, and return both a saver and returned elements.
	**/
	static public function _import_meta_graph_with_return_elements(meta_graph_or_file:Dynamic, ?clear_devices:Dynamic, ?import_scope:Dynamic, ?return_elements:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function _wrap_restore_error_with_msg(err:Dynamic, extra_verbiage:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Checks whether a V1 or V2 checkpoint exists with the specified prefix. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Use standard file APIs to check for files with this prefix.
		
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
		  graph: The `Graph` to export. If `None`, use the default graph.
		  export_scope: Optional `string`. Name scope under which to extract
		    the subgraph. The scope name will be striped from the node definitions
		    for easy import later into new name scopes. If `None`, the whole graph
		    is exported. graph_def and export_scope cannot both be specified.
		  clear_devices: Whether or not to clear the device field for an `Operation`
		    or `Tensor` during export.
		  clear_extraneous_savers: Remove any Saver-related information from the
		      graph (both Save/Restore ops and SaverDefs) that are not associated
		      with the provided SaverDef.
		  strip_default_attrs: Boolean. If `True`, default-valued attributes will be
		    removed from the NodeDefs. For a detailed guide, see
		    [Stripping Default-Valued Attributes](https://github.com/tensorflow/tensorflow/blob/master/tensorflow/python/saved_model/README.md#stripping-default-valued-attributes).
		  **kwargs: Optional keyed arguments.
		
		Returns:
		  A `MetaGraphDef` proto.
		
		Raises:
		  ValueError: When the `GraphDef` is larger than 2GB.
		  RuntimeError: If called with eager execution enabled.
		
		@compatibility(eager)
		Exporting/importing meta graphs is not supported. No graph exists when eager
		execution is enabled.
		@end_compatibility
	**/
	static public function export_meta_graph(?filename:Dynamic, ?meta_info_def:Dynamic, ?graph_def:Dynamic, ?saver_def:Dynamic, ?collection_list:Dynamic, ?as_text:Dynamic, ?graph:Dynamic, ?export_scope:Dynamic, ?clear_devices:Dynamic, ?clear_extraneous_savers:Dynamic, ?strip_default_attrs:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Generates a checkpoint state proto.
		
		Args:
		  save_dir: Directory where the model was saved.
		  model_checkpoint_path: The checkpoint file.
		  all_model_checkpoint_paths: List of strings.  Paths to all not-yet-deleted
		    checkpoints, sorted from oldest to newest.  If this is a non-empty list,
		    the last element must be equal to model_checkpoint_path.  These paths
		    are also saved in the CheckpointState proto.
		  all_model_checkpoint_timestamps: A list of floats, indicating the number of
		    seconds since the Epoch when each checkpoint was generated.
		  last_preserved_timestamp: A float, indicating the number of seconds since
		    the Epoch when the last preserved checkpoint was written, e.g. due to a
		    `keep_checkpoint_every_n_hours` parameter (see
		    `tf.contrib.checkpoint.CheckpointManager` for an implementation).
		Returns:
		  CheckpointState proto with model_checkpoint_path and
		  all_model_checkpoint_paths updated to either absolute paths or
		  relative paths to the current save_dir.
		
		Raises:
		  ValueError: If `all_model_checkpoint_timestamps` was provided but its length
		    does not match `all_model_checkpoint_paths`.
	**/
	static public function generate_checkpoint_state_proto(save_dir:Dynamic, model_checkpoint_path:Dynamic, ?all_model_checkpoint_paths:Dynamic, ?all_model_checkpoint_timestamps:Dynamic, ?last_preserved_timestamp:Dynamic):Dynamic;
	/**
		Returns the mtimes (modification timestamps) of the checkpoints. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Use standard file utilities to get mtimes.
		
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
		
		Example 2:
		Variables, placeholders, and independent operations can also be stored, as
		shown in the following example.
		
		```Python
		# Saving contents and operations.
		v1 = tf.placeholder(tf.float32, name="v1")
		v2 = tf.placeholder(tf.float32, name="v2")
		v3 = tf.mul(v1, v2)
		vx = tf.Variable(10.0, name="vx")
		v4 = tf.add(v3, vx, name="v4")
		saver = tf.train.Saver([vx])
		sess = tf.Session()
		sess.run(tf.initialize_all_variables())
		sess.run(vx.assign(tf.add(vx, vx)))
		result = sess.run(v4, feed_dict={v1:12.0, v2:3.3})
		print(result)
		saver.save(sess, "./model_ex1")
		```
		
		Later this model can be restored and contents loaded.
		
		```Python
		# Restoring variables and running operations.
		saver = tf.train.import_meta_graph("./model_ex1.meta")
		sess = tf.Session()
		saver.restore(sess, "./model_ex1")
		result = sess.run("v4:0", feed_dict={"v1:0": 12.0, "v2:0": 3.3})
		print(result)
		```
		
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
		
		Raises:
		  RuntimeError: If called with eager execution enabled.
		
		@compatibility(eager)
		Exporting/importing meta graphs is not supported. No graph exists when eager
		execution is enabled.
		@end_compatibility
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
	/**
		Return name to key mappings from the checkpoint.
		
		Args:
		  checkpoint_path: string, path to object-based checkpoint
		
		Returns:
		  Dictionary mapping tensor names to checkpoint keys.
	**/
	static public function object_graph_key_mapping(checkpoint_path:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Removes a checkpoint given by `checkpoint_prefix`. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Use standard file APIs to delete files with this prefix.
		
		Args:
		  checkpoint_prefix: The prefix of a V1 or V2 checkpoint. Typically the result
		    of `Saver.save()` or that of `tf.train.latest_checkpoint()`, regardless of
		    sharded/non-sharded or V1/V2.
		  checkpoint_format_version: `SaverDef.CheckpointFormatVersion`, defaults to
		    `SaverDef.V2`.
		  meta_graph_suffix: Suffix for `MetaGraphDef` file. Defaults to 'meta'.
	**/
	static public function remove_checkpoint(checkpoint_prefix:Dynamic, ?checkpoint_format_version:Dynamic, ?meta_graph_suffix:Dynamic):Dynamic;
	/**
		Return a `Saver` which reads from an object-based checkpoint.
		
		This function validates that all variables in the variables list are remapped
		in the object-based checkpoint (or `names_to_keys` dict if provided). A
		saver will be created with the list of remapped variables.
		
		The `cached_saver` argument allows the user to pass in a previously created
		saver, so multiple `saver.restore()` calls don't pollute the graph when graph
		building. This assumes that keys are consistent, meaning that the
		  1) `checkpoint_path` checkpoint, and
		  2) checkpoint used to create the `cached_saver`
		are the same type of object-based checkpoint. If this argument is set, this
		function will simply validate that all variables have been remapped by the
		checkpoint at `checkpoint_path`.
		
		Note that in general, `tf.train.Checkpoint` should be used to restore/save an
		object-based checkpoint.
		
		Args:
		  checkpoint_path: string, path to object-based checkpoint
		  var_list: list of `Variables` that appear in the checkpoint. If `None`,
		    `var_list` will be set to all saveable objects.
		  builder: a `BaseSaverBuilder` instance. If `None`, a new `BulkSaverBuilder`
		    will be created.
		  names_to_keys: dict mapping string tensor names to checkpooint keys. If
		    `None`, this dict will be generated from the checkpoint file.
		  cached_saver: Cached `Saver` object with remapped variables.
		
		Returns:
		  `Saver` with remapped variables for reading from an object-based checkpoint.
		
		Raises:
		  ValueError if the checkpoint provided is not an object-based checkpoint.
		  NotFoundError: If one of the variables in `var_list` can not be found in the
		    checkpoint. This could mean the checkpoint or `names_to_keys` mapping is
		    missing the variable.
	**/
	static public function saver_from_object_based_checkpoint(checkpoint_path:Dynamic, ?var_list:Dynamic, ?builder:Dynamic, ?names_to_keys:Dynamic, ?cached_saver:Dynamic):Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Updates the content of the 'checkpoint' file. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Use tf.train.CheckpointManager to manage checkpoints rather than manually editing the Checkpoint proto.
		
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
		  all_model_checkpoint_timestamps: Optional list of timestamps (floats,
		    seconds since the Epoch) indicating when the checkpoints in
		    `all_model_checkpoint_paths` were created.
		  last_preserved_timestamp: A float, indicating the number of seconds since
		    the Epoch when the last preserved checkpoint was written, e.g. due to a
		    `keep_checkpoint_every_n_hours` parameter (see
		    `tf.contrib.checkpoint.CheckpointManager` for an implementation).
		Raises:
		  RuntimeError: If any of the model checkpoint paths conflict with the file
		    containing CheckpointSate.
	**/
	static public function update_checkpoint_state(save_dir:Dynamic, model_checkpoint_path:Dynamic, ?all_model_checkpoint_paths:Dynamic, ?latest_filename:Dynamic, ?all_model_checkpoint_timestamps:Dynamic, ?last_preserved_timestamp:Dynamic):Dynamic;
}