/* This file is generated, do not edit! */
package tensorflow.python.training.checkpoint_management;
@:pythonImport("tensorflow.python.training.checkpoint_management") extern class Checkpoint_management_Module {
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
		Deletes files matching `filespec`.
	**/
	static public function _delete_file_if_exists(filespec:Dynamic):Dynamic;
	/**
		Returns the numpy value of a tensor.
	**/
	static public function _evaluate(tensor:Dynamic):Dynamic;
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
		  A bool, true if a checkpoint referred to by `checkpoint_prefix` exists.
	**/
	static public function checkpoint_exists(checkpoint_prefix:Dynamic):Dynamic;
	/**
		Checks whether a V1 or V2 checkpoint exists with the specified prefix.
		
		This is an internal function to check if a checkpoint exists,
		since it takes into account the naming difference between V1 and V2 formats.
		
		Args:
		  checkpoint_prefix: the prefix of a V1 or V2 checkpoint, with V2 taking
		    priority.  Typically the result of `Saver.save()` or that of
		    `tf.train.latest_checkpoint()`, regardless of sharded/non-sharded or
		    V1/V2.
		Returns:
		  A bool, true if a checkpoint referred to by `checkpoint_prefix` exists.
	**/
	static public function checkpoint_exists_internal(checkpoint_prefix:Dynamic):Dynamic;
	static public var division : Dynamic;
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
		    `tf.train.CheckpointManager` for an implementation).
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
		
		Note: If not all checkpoints exist, the length of the returned mtimes list
		will be smaller than the length of `checkpoint_prefixes` list, so mapping
		checkpoints to corresponding mtimes will not be possible.
		
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
		Finds the filename of latest saved checkpoint file.
		
		Gets the checkpoint state given the provided checkpoint_dir and looks for a
		corresponding TensorFlow 2 (preferred) or TensorFlow 1.x checkpoint path.
		The latest_filename argument is only applicable if you are saving checkpoint
		using `v1.train.Saver.save`
		
		
		See the [Training Checkpoints
		Guide](https://www.tensorflow.org/guide/checkpoint) for more details and
		examples.`
		
		Args:
		  checkpoint_dir: Directory where the variables were saved.
		  latest_filename: Optional name for the protocol buffer file that
		    contains the list of most recent checkpoint filenames.
		    See the corresponding argument to `v1.train.Saver.save`.
		
		Returns:
		  The full path to the latest checkpoint or `None` if no checkpoint was found.
	**/
	static public function latest_checkpoint(checkpoint_dir:Dynamic, ?latest_filename:Dynamic):Dynamic;
	/**
		Returns the meta graph filename.
		
		Args:
		  checkpoint_filename: Name of the checkpoint file.
		  meta_graph_suffix: Suffix for `MetaGraphDef` file. Defaults to 'meta'.
		
		Returns:
		  MetaGraph file name.
	**/
	static public function meta_graph_filename(checkpoint_filename:Dynamic, ?meta_graph_suffix:Dynamic):Dynamic;
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
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Updates the content of the 'checkpoint' file. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Use `tf.train.CheckpointManager` to manage checkpoints rather than manually editing the Checkpoint proto.
		
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
		    `tf.train.CheckpointManager` for an implementation).
		Raises:
		  RuntimeError: If any of the model checkpoint paths conflict with the file
		    containing CheckpointSate.
	**/
	static public function update_checkpoint_state(save_dir:Dynamic, model_checkpoint_path:Dynamic, ?all_model_checkpoint_paths:Dynamic, ?latest_filename:Dynamic, ?all_model_checkpoint_timestamps:Dynamic, ?last_preserved_timestamp:Dynamic):Dynamic;
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
		  all_model_checkpoint_timestamps: Optional list of timestamps (floats,
		    seconds since the Epoch) indicating when the checkpoints in
		    `all_model_checkpoint_paths` were created.
		  last_preserved_timestamp: A float, indicating the number of seconds since
		    the Epoch when the last preserved checkpoint was written, e.g. due to a
		    `keep_checkpoint_every_n_hours` parameter (see
		    `tf.train.CheckpointManager` for an implementation).
		
		Raises:
		  RuntimeError: If any of the model checkpoint paths conflict with the file
		    containing CheckpointSate.
	**/
	static public function update_checkpoint_state_internal(save_dir:Dynamic, model_checkpoint_path:Dynamic, ?all_model_checkpoint_paths:Dynamic, ?latest_filename:Dynamic, ?save_relative_paths:Dynamic, ?all_model_checkpoint_timestamps:Dynamic, ?last_preserved_timestamp:Dynamic):Dynamic;
}