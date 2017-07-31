/* This file is generated, do not edit! */
package tensorflow.python.training.saver;
@:pythonImport("tensorflow.python.training.saver", "Saver") extern class Saver {
	/**
		Returns the checkpoint filename given a `(filename, time)` pair.
		
		Args:
		  p: (filename, time) pair.
		
		Returns:
		  Checkpoint file name.
	**/
	public function _CheckpointFilename(p:Dynamic):Dynamic;
	/**
		Deletes old checkpoints if necessary.
		
		Always keep the last `max_to_keep` checkpoints.  If
		`keep_checkpoint_every_n_hours` was specified, keep an additional checkpoint
		every `N` hours. For example, if `N` is 0.5, an additional checkpoint is
		kept for every 0.5 hours of training; if `N` is 10, an additional
		checkpoint is kept for every 10 hours of training.
		
		Args:
		  latest_save_path: Name including path of checkpoint file to save.
		  meta_graph_suffix: Suffix for `MetaGraphDef` file. Defaults to 'meta'.
	**/
	public function _MaybeDeleteOldCheckpoints(latest_save_path:Dynamic, ?meta_graph_suffix:Dynamic):Dynamic;
	/**
		Returns the meta graph filename.
		
		Args:
		  checkpoint_filename: Name of the checkpoint file.
		  meta_graph_suffix: Suffix for `MetaGraphDef` file. Defaults to 'meta'.
		
		Returns:
		  MetaGraph file name.
	**/
	public function _MetaGraphFilename(checkpoint_filename:Dynamic, ?meta_graph_suffix:Dynamic):Dynamic;
	static public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
	static public var __dict__ : Dynamic;
	/**
		__dir__() -> list
		default dir() implementation
	**/
	public function __dir__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var __doc__ : Dynamic;
	/**
		Return self==value.
	**/
	public function __eq__(value:Dynamic):Dynamic;
	/**
		default object formatter
	**/
	public function __format__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		Creates a `Saver`.
		
		The constructor adds ops to save and restore variables.
		
		`var_list` specifies the variables that will be saved and restored. It can
		be passed as a `dict` or a list:
		
		* A `dict` of names to variables: The keys are the names that will be
		  used to save or restore the variables in the checkpoint files.
		* A list of variables: The variables will be keyed with their op name in
		  the checkpoint files.
		
		For example:
		
		```python
		v1 = tf.Variable(..., name='v1')
		v2 = tf.Variable(..., name='v2')
		
		# Pass the variables as a dict:
		saver = tf.train.Saver({'v1': v1, 'v2': v2})
		
		# Or pass them as a list.
		saver = tf.train.Saver([v1, v2])
		# Passing a list is equivalent to passing a dict with the variable op names
		# as keys:
		saver = tf.train.Saver({v.op.name: v for v in [v1, v2]})
		```
		
		The optional `reshape` argument, if `True`, allows restoring a variable from
		a save file where the variable had a different shape, but the same number
		of elements and type.  This is useful if you have reshaped a variable and
		want to reload it from an older checkpoint.
		
		The optional `sharded` argument, if `True`, instructs the saver to shard
		checkpoints per device.
		
		Args:
		  var_list: A list of `Variable`/`SaveableObject`, or a dictionary mapping
		    names to `SaveableObject`s. If `None`, defaults to the list of all
		    saveable objects.
		  reshape: If `True`, allows restoring parameters from a checkpoint
		    where the variables have a different shape.
		  sharded: If `True`, shard the checkpoints, one per device.
		  max_to_keep: Maximum number of recent checkpoints to keep.
		    Defaults to 5.
		  keep_checkpoint_every_n_hours: How often to keep checkpoints.
		    Defaults to 10,000 hours.
		  name: String.  Optional name to use as a prefix when adding operations.
		  restore_sequentially: A `Bool`, which if true, causes restore of different
		    variables to happen sequentially within each device.  This can lower
		    memory usage when restoring very large models.
		  saver_def: Optional `SaverDef` proto to use instead of running the
		    builder. This is only useful for specialty code that wants to recreate
		    a `Saver` object for a previously built `Graph` that had a `Saver`.
		    The `saver_def` proto should be the one returned by the
		    `as_saver_def()` call of the `Saver` that was created for that `Graph`.
		  builder: Optional `SaverBuilder` to use if a `saver_def` was not provided.
		    Defaults to `BaseSaverBuilder()`.
		  defer_build: If `True`, defer adding the save and restore ops to the
		    `build()` call. In that case `build()` should be called before
		    finalizing the graph or using the saver.
		  allow_empty: If `False` (default) raise an error if there are no
		    variables in the graph. Otherwise, construct the saver anyway and make
		    it a no-op.
		  write_version: controls what format to use when saving checkpoints.  It
		    also affects certain filepath matching logic.  The V2 format is the
		    recommended choice: it is much more optimized than V1 in terms of
		    memory required and latency incurred during restore.  Regardless of
		    this flag, the Saver is able to restore from both V2 and V1 checkpoints.
		  pad_step_number: if True, pads the global step number in the checkpoint
		    filepaths to some fixed width (8 by default).  This is turned off by
		    default.
		  save_relative_paths: If `True`, will write relative paths to the
		    checkpoint state file. This is needed if the user wants to copy the
		    checkpoint directory and reload from the copied directory.
		
		Raises:
		  TypeError: If `var_list` is invalid.
		  ValueError: If any of the keys or values in `var_list` are not unique.
	**/
	@:native("__init__")
	public function ___init__(?var_list:Dynamic, ?reshape:Dynamic, ?sharded:Dynamic, ?max_to_keep:Dynamic, ?keep_checkpoint_every_n_hours:Dynamic, ?name:Dynamic, ?restore_sequentially:Dynamic, ?saver_def:Dynamic, ?builder:Dynamic, ?defer_build:Dynamic, ?allow_empty:Dynamic, ?write_version:Dynamic, ?pad_step_number:Dynamic, ?save_relative_paths:Dynamic):Dynamic;
	/**
		Creates a `Saver`.
		
		The constructor adds ops to save and restore variables.
		
		`var_list` specifies the variables that will be saved and restored. It can
		be passed as a `dict` or a list:
		
		* A `dict` of names to variables: The keys are the names that will be
		  used to save or restore the variables in the checkpoint files.
		* A list of variables: The variables will be keyed with their op name in
		  the checkpoint files.
		
		For example:
		
		```python
		v1 = tf.Variable(..., name='v1')
		v2 = tf.Variable(..., name='v2')
		
		# Pass the variables as a dict:
		saver = tf.train.Saver({'v1': v1, 'v2': v2})
		
		# Or pass them as a list.
		saver = tf.train.Saver([v1, v2])
		# Passing a list is equivalent to passing a dict with the variable op names
		# as keys:
		saver = tf.train.Saver({v.op.name: v for v in [v1, v2]})
		```
		
		The optional `reshape` argument, if `True`, allows restoring a variable from
		a save file where the variable had a different shape, but the same number
		of elements and type.  This is useful if you have reshaped a variable and
		want to reload it from an older checkpoint.
		
		The optional `sharded` argument, if `True`, instructs the saver to shard
		checkpoints per device.
		
		Args:
		  var_list: A list of `Variable`/`SaveableObject`, or a dictionary mapping
		    names to `SaveableObject`s. If `None`, defaults to the list of all
		    saveable objects.
		  reshape: If `True`, allows restoring parameters from a checkpoint
		    where the variables have a different shape.
		  sharded: If `True`, shard the checkpoints, one per device.
		  max_to_keep: Maximum number of recent checkpoints to keep.
		    Defaults to 5.
		  keep_checkpoint_every_n_hours: How often to keep checkpoints.
		    Defaults to 10,000 hours.
		  name: String.  Optional name to use as a prefix when adding operations.
		  restore_sequentially: A `Bool`, which if true, causes restore of different
		    variables to happen sequentially within each device.  This can lower
		    memory usage when restoring very large models.
		  saver_def: Optional `SaverDef` proto to use instead of running the
		    builder. This is only useful for specialty code that wants to recreate
		    a `Saver` object for a previously built `Graph` that had a `Saver`.
		    The `saver_def` proto should be the one returned by the
		    `as_saver_def()` call of the `Saver` that was created for that `Graph`.
		  builder: Optional `SaverBuilder` to use if a `saver_def` was not provided.
		    Defaults to `BaseSaverBuilder()`.
		  defer_build: If `True`, defer adding the save and restore ops to the
		    `build()` call. In that case `build()` should be called before
		    finalizing the graph or using the saver.
		  allow_empty: If `False` (default) raise an error if there are no
		    variables in the graph. Otherwise, construct the saver anyway and make
		    it a no-op.
		  write_version: controls what format to use when saving checkpoints.  It
		    also affects certain filepath matching logic.  The V2 format is the
		    recommended choice: it is much more optimized than V1 in terms of
		    memory required and latency incurred during restore.  Regardless of
		    this flag, the Saver is able to restore from both V2 and V1 checkpoints.
		  pad_step_number: if True, pads the global step number in the checkpoint
		    filepaths to some fixed width (8 by default).  This is turned off by
		    default.
		  save_relative_paths: If `True`, will write relative paths to the
		    checkpoint state file. This is needed if the user wants to copy the
		    checkpoint directory and reload from the copied directory.
		
		Raises:
		  TypeError: If `var_list` is invalid.
		  ValueError: If any of the keys or values in `var_list` are not unique.
	**/
	public function new(?var_list:Dynamic, ?reshape:Dynamic, ?sharded:Dynamic, ?max_to_keep:Dynamic, ?keep_checkpoint_every_n_hours:Dynamic, ?name:Dynamic, ?restore_sequentially:Dynamic, ?saver_def:Dynamic, ?builder:Dynamic, ?defer_build:Dynamic, ?allow_empty:Dynamic, ?write_version:Dynamic, ?pad_step_number:Dynamic, ?save_relative_paths:Dynamic):Void;
	/**
		This method is called when a class is subclassed.
		
		The default implementation does nothing. It may be
		overridden to extend subclasses.
	**/
	static public function __init_subclass__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		helper for pickle
	**/
	public function __reduce__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		helper for pickle
	**/
	public function __reduce_ex__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return repr(self).
	**/
	public function __repr__():Dynamic;
	/**
		Implement setattr(self, name, value).
	**/
	public function __setattr__(name:Dynamic, value:Dynamic):Dynamic;
	/**
		__sizeof__() -> int
		size of object in memory, in bytes
	**/
	public function __sizeof__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	static public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	/**
		Adds a collection to MetaGraphDef protocol buffer.
		
		Args:
		  meta_graph_def: MetaGraphDef protocol buffer.
		  key: One of the GraphKeys or user-defined string.
		  export_scope: Optional `string`. Name scope to remove.
	**/
	static public function _add_collection_def(meta_graph_def:Dynamic, key:Dynamic, ?export_scope:Dynamic):Dynamic;
	public function _check_saver_def():Dynamic;
	public function _delete_file_if_exists(filespec:Dynamic):Dynamic;
	/**
		Generates a `SaverDef` representation of this saver.
		
		Returns:
		  A `SaverDef` proto.
	**/
	public function as_saver_def():Dynamic;
	/**
		Builds saver_def.
	**/
	public function build():Dynamic;
	/**
		Writes `MetaGraphDef` to save_path/filename.
		
		Args:
		  filename: Optional meta_graph filename including the path.
		  collection_list: List of string keys to collect.
		  as_text: If `True`, writes the meta_graph as an ASCII proto.
		  export_scope: Optional `string`. Name scope to remove.
		  clear_devices: Whether or not to clear the device field for an `Operation`
		    or `Tensor` during export.
		
		Returns:
		  A `MetaGraphDef` proto.
	**/
	public function export_meta_graph(?filename:Dynamic, ?collection_list:Dynamic, ?as_text:Dynamic, ?export_scope:Dynamic, ?clear_devices:Dynamic):Dynamic;
	/**
		Returns a `Saver` object created from `saver_def`.
		
		Args:
		  saver_def: a `SaveDef` protocol buffer.
		  import_scope: Optional `string`. Name scope to use.
		
		Returns:
		  A `Saver` built from saver_def.
	**/
	static public function from_proto(saver_def:Dynamic, ?import_scope:Dynamic):Dynamic;
	/**
		List of not-yet-deleted checkpoint filenames.
		
		You can pass any of the returned values to `restore()`.
		
		Returns:
		  A list of checkpoint filenames, sorted from oldest to newest.
	**/
	public var last_checkpoints : Dynamic;
	/**
		Recovers the internal saver state after a crash.
		
		This method is useful for recovering the "self._last_checkpoints" state.
		
		Globs for the checkpoints pointed to by `checkpoint_paths`.  If the files
		exist, use their mtime as the checkpoint timestamp.
		
		Args:
		  checkpoint_paths: a list of checkpoint paths.
	**/
	public function recover_last_checkpoints(checkpoint_paths:Dynamic):Dynamic;
	/**
		Restores previously saved variables.
		
		This method runs the ops added by the constructor for restoring variables.
		It requires a session in which the graph was launched.  The variables to
		restore do not have to have been initialized, as restoring is itself a way
		to initialize variables.
		
		The `save_path` argument is typically a value previously returned from a
		`save()` call, or a call to `latest_checkpoint()`.
		
		Args:
		  sess: A `Session` to use to restore the parameters.
		  save_path: Path where parameters were previously saved.
	**/
	public function restore(sess:Dynamic, save_path:Dynamic):Dynamic;
	/**
		Saves variables.
		
		This method runs the ops added by the constructor for saving variables.
		It requires a session in which the graph was launched.  The variables to
		save must also have been initialized.
		
		The method returns the path of the newly created checkpoint file.  This
		path can be passed directly to a call to `restore()`.
		
		Args:
		  sess: A Session to use to save the variables.
		  save_path: String.  Path to the checkpoint filename.  If the saver is
		    `sharded`, this is the prefix of the sharded checkpoint filename.
		  global_step: If provided the global step number is appended to
		    `save_path` to create the checkpoint filename. The optional argument
		    can be a `Tensor`, a `Tensor` name or an integer.
		  latest_filename: Optional name for the protocol buffer file that will
		    contains the list of most recent checkpoint filenames.  That file,
		    kept in the same directory as the checkpoint files, is automatically
		    managed by the saver to keep track of recent checkpoints.  Defaults to
		    'checkpoint'.
		  meta_graph_suffix: Suffix for `MetaGraphDef` file. Defaults to 'meta'.
		  write_meta_graph: `Boolean` indicating whether or not to write the meta
		    graph file.
		  write_state: `Boolean` indicating whether or not to write the
		    `CheckpointStateProto`.
		
		Returns:
		  A string: path at which the variables were saved.  If the saver is
		    sharded, this string ends with: '-?????-of-nnnnn' where 'nnnnn'
		    is the number of shards created.
		  If the saver is empty, returns None.
		
		Raises:
		  TypeError: If `sess` is not a `Session`.
		  ValueError: If `latest_filename` contains path components, or if it
		    collides with `save_path`.
		  RuntimeError: If save and restore ops weren't built.
	**/
	public function save(sess:Dynamic, save_path:Dynamic, ?global_step:Dynamic, ?latest_filename:Dynamic, ?meta_graph_suffix:Dynamic, ?write_meta_graph:Dynamic, ?write_state:Dynamic):Dynamic;
	/**
		DEPRECATED: Use set_last_checkpoints_with_time.
		
		Sets the list of old checkpoint filenames.
		
		Args:
		  last_checkpoints: A list of checkpoint filenames.
		
		Raises:
		  AssertionError: If last_checkpoints is not a list.
	**/
	public function set_last_checkpoints(last_checkpoints:Dynamic):Dynamic;
	/**
		Sets the list of old checkpoint filenames and timestamps.
		
		Args:
		  last_checkpoints_with_time: A list of tuples of checkpoint filenames and
		    timestamps.
		
		Raises:
		  AssertionError: If last_checkpoints_with_time is not a list.
	**/
	public function set_last_checkpoints_with_time(last_checkpoints_with_time:Dynamic):Dynamic;
	/**
		Converts this `Saver` to a `SaverDef` protocol buffer.
		
		Args:
		  export_scope: Optional `string`. Name scope to remove.
		
		Returns:
		  A `SaverDef` protocol buffer.
	**/
	public function to_proto(?export_scope:Dynamic):Dynamic;
}