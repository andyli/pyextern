/* This file is generated, do not edit! */
package tensorflow.python.training.checkpoint_management;
@:pythonImport("tensorflow.python.training.checkpoint_management", "CheckpointManager") extern class CheckpointManager {
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
	static public var __dict__ : Dynamic;
	/**
		Default dir() implementation.
	**/
	public function __dir__():Dynamic;
	static public var __doc__ : Dynamic;
	/**
		Return self==value.
	**/
	public function __eq__(value:Dynamic):Dynamic;
	/**
		Default object formatter.
	**/
	public function __format__(format_spec:Dynamic):Dynamic;
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
		Configure a `CheckpointManager` for use in `directory`.
		
		If a `CheckpointManager` was previously used in `directory`, its
		state will be restored. This includes the list of managed checkpoints and
		the timestamp bookkeeping necessary to support
		`keep_checkpoint_every_n_hours`. The behavior of the new `CheckpointManager`
		will be the same as the previous `CheckpointManager`, including cleaning up
		existing checkpoints if appropriate.
		
		Checkpoints are only considered for deletion just after a new checkpoint has
		been added. At that point, `max_to_keep` checkpoints will remain in an
		"active set". Once a checkpoint is preserved by
		`keep_checkpoint_every_n_hours` it will not be deleted by this
		`CheckpointManager` or any future `CheckpointManager` instantiated in
		`directory` (regardless of the new setting of
		`keep_checkpoint_every_n_hours`). The `max_to_keep` checkpoints in the
		active set may be deleted by this `CheckpointManager` or a future
		`CheckpointManager` instantiated in `directory` (subject to its
		`max_to_keep` and `keep_checkpoint_every_n_hours` settings).
		
		`CheckpointManager` can be also used for initializing the model if
		there is no checkpoints for restoring in `directory`. An example usage is:
		
		>>> import tempfile
		
		>>> tmp_dir = tempfile.mkdtemp()
		>>> checkpoint = tf.train.Checkpoint()
		>>> init_path = checkpoint.save(os.path.join(tmp_dir, 'init'))
		
		>>> def init_fn():
		...   # Partially restore the checkpoint from `init_path`.
		...   checkpoint.restore(init_path)
		
		>>> manager = tf.train.CheckpointManager(
		...     checkpoint,
		...     directory=os.path.join(tmp_dir, 'ckpt'),
		...     max_to_keep=None,
		...     init_fn=init_fn)
		>>> # `restore_or_initialize` will call `init_fn` if there is no existing
		>>> # checkpoint in `directory`.
		>>> manager.restore_or_initialize()
		
		Args:
		  checkpoint: The `tf.train.Checkpoint` instance to save and manage
		    checkpoints for.
		  directory: The path to a directory in which to write checkpoints. A
		    special file named "checkpoint" is also written to this directory (in a
		    human-readable text format) which contains the state of the
		    `CheckpointManager`.
		  max_to_keep: An integer, the number of checkpoints to keep. Unless
		    preserved by `keep_checkpoint_every_n_hours`, checkpoints will be
		    deleted from the active set, oldest first, until only `max_to_keep`
		    checkpoints remain. If `None`, no checkpoints are deleted and everything
		    stays in the active set. Note that `max_to_keep=None` will keep all
		    checkpoint paths in memory and in the checkpoint state protocol buffer
		    on disk.
		  keep_checkpoint_every_n_hours: Upon removal from the active set, a
		    checkpoint will be preserved if it has been at least
		    `keep_checkpoint_every_n_hours` since the last preserved checkpoint. The
		    default setting of `None` does not preserve any checkpoints in this way.
		  checkpoint_name: Custom name for the checkpoint file.
		  step_counter: A `tf.Variable` instance for checking the current step
		    counter value, in case users want to save checkpoints every N steps.
		  checkpoint_interval: An integer, indicates the minimum step interval
		    between two checkpoints.
		  init_fn: Callable. A function to do customized intialization if no
		    checkpoints are in the directory.
		
		Raises:
		  ValueError: If `max_to_keep` is not a positive integer.
	**/
	@:native("__init__")
	public function ___init__(checkpoint:Dynamic, directory:Dynamic, max_to_keep:Dynamic, ?keep_checkpoint_every_n_hours:Dynamic, ?checkpoint_name:Dynamic, ?step_counter:Dynamic, ?checkpoint_interval:Dynamic, ?init_fn:Dynamic):Dynamic;
	/**
		Configure a `CheckpointManager` for use in `directory`.
		
		If a `CheckpointManager` was previously used in `directory`, its
		state will be restored. This includes the list of managed checkpoints and
		the timestamp bookkeeping necessary to support
		`keep_checkpoint_every_n_hours`. The behavior of the new `CheckpointManager`
		will be the same as the previous `CheckpointManager`, including cleaning up
		existing checkpoints if appropriate.
		
		Checkpoints are only considered for deletion just after a new checkpoint has
		been added. At that point, `max_to_keep` checkpoints will remain in an
		"active set". Once a checkpoint is preserved by
		`keep_checkpoint_every_n_hours` it will not be deleted by this
		`CheckpointManager` or any future `CheckpointManager` instantiated in
		`directory` (regardless of the new setting of
		`keep_checkpoint_every_n_hours`). The `max_to_keep` checkpoints in the
		active set may be deleted by this `CheckpointManager` or a future
		`CheckpointManager` instantiated in `directory` (subject to its
		`max_to_keep` and `keep_checkpoint_every_n_hours` settings).
		
		`CheckpointManager` can be also used for initializing the model if
		there is no checkpoints for restoring in `directory`. An example usage is:
		
		>>> import tempfile
		
		>>> tmp_dir = tempfile.mkdtemp()
		>>> checkpoint = tf.train.Checkpoint()
		>>> init_path = checkpoint.save(os.path.join(tmp_dir, 'init'))
		
		>>> def init_fn():
		...   # Partially restore the checkpoint from `init_path`.
		...   checkpoint.restore(init_path)
		
		>>> manager = tf.train.CheckpointManager(
		...     checkpoint,
		...     directory=os.path.join(tmp_dir, 'ckpt'),
		...     max_to_keep=None,
		...     init_fn=init_fn)
		>>> # `restore_or_initialize` will call `init_fn` if there is no existing
		>>> # checkpoint in `directory`.
		>>> manager.restore_or_initialize()
		
		Args:
		  checkpoint: The `tf.train.Checkpoint` instance to save and manage
		    checkpoints for.
		  directory: The path to a directory in which to write checkpoints. A
		    special file named "checkpoint" is also written to this directory (in a
		    human-readable text format) which contains the state of the
		    `CheckpointManager`.
		  max_to_keep: An integer, the number of checkpoints to keep. Unless
		    preserved by `keep_checkpoint_every_n_hours`, checkpoints will be
		    deleted from the active set, oldest first, until only `max_to_keep`
		    checkpoints remain. If `None`, no checkpoints are deleted and everything
		    stays in the active set. Note that `max_to_keep=None` will keep all
		    checkpoint paths in memory and in the checkpoint state protocol buffer
		    on disk.
		  keep_checkpoint_every_n_hours: Upon removal from the active set, a
		    checkpoint will be preserved if it has been at least
		    `keep_checkpoint_every_n_hours` since the last preserved checkpoint. The
		    default setting of `None` does not preserve any checkpoints in this way.
		  checkpoint_name: Custom name for the checkpoint file.
		  step_counter: A `tf.Variable` instance for checking the current step
		    counter value, in case users want to save checkpoints every N steps.
		  checkpoint_interval: An integer, indicates the minimum step interval
		    between two checkpoints.
		  init_fn: Callable. A function to do customized intialization if no
		    checkpoints are in the directory.
		
		Raises:
		  ValueError: If `max_to_keep` is not a positive integer.
	**/
	public function new(checkpoint:Dynamic, directory:Dynamic, max_to_keep:Dynamic, ?keep_checkpoint_every_n_hours:Dynamic, ?checkpoint_name:Dynamic, ?step_counter:Dynamic, ?checkpoint_interval:Dynamic, ?init_fn:Dynamic):Void;
	/**
		This method is called when a class is subclassed.
		
		The default implementation does nothing. It may be
		overridden to extend subclasses.
	**/
	public function __init_subclass__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		Helper for pickle.
	**/
	public function __reduce__():Dynamic;
	/**
		Helper for pickle.
	**/
	public function __reduce_ex__(protocol:Dynamic):Dynamic;
	/**
		Return repr(self).
	**/
	public function __repr__():Dynamic;
	/**
		Implement setattr(self, name, value).
	**/
	public function __setattr__(name:Dynamic, value:Dynamic):Dynamic;
	/**
		Size of object in memory, in bytes.
	**/
	public function __sizeof__():Dynamic;
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
	public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	/**
		A common prefix for all checkpoints saved with this manager.
		
		For example, if `directory` (a constructor argument) were `"/tmp/tf-model"`,
		`prefix` would be `"/tmp/tf-model/ckpt"` and checkpoints would generally be
		numbered `"/tmp/tf-model/ckpt-1"`, `"/tmp/tf-model/ckpt-2"`, and so on. Each
		checkpoint has several associated files
		(e.g. `"/tmp/tf-model/ckpt-2.index"`).
		
		Returns:
		  A string prefix.
	**/
	public var _prefix : Dynamic;
	/**
		Saves the `CheckpointManager`'s state in `directory`.
	**/
	public function _record_state():Dynamic;
	/**
		Deletes or preserves managed checkpoints.
	**/
	public function _sweep():Dynamic;
	static public var _tf_api_names : Dynamic;
	static public var _tf_api_names_v1 : Dynamic;
	/**
		Returns the `tf.train.Checkpoint` object.
	**/
	public var checkpoint : Dynamic;
	public var checkpoint_interval : Dynamic;
	/**
		A list of managed checkpoints.
		
		Note that checkpoints saved due to `keep_checkpoint_every_n_hours` will not
		show up in this list (to avoid ever-growing filename lists).
		
		Returns:
		  A list of filenames, sorted from oldest to newest.
	**/
	public var checkpoints : Dynamic;
	public var directory : Dynamic;
	/**
		The prefix of the most recent checkpoint in `directory`.
		
		Equivalent to `tf.train.latest_checkpoint(directory)` where `directory` is
		the constructor argument to `CheckpointManager`.
		
		Suitable for passing to `tf.train.Checkpoint.restore` to resume training.
		
		Returns:
		  The checkpoint prefix. If there are no checkpoints, returns `None`.
	**/
	public var latest_checkpoint : Dynamic;
	/**
		Restore items in `checkpoint` from the latest checkpoint file.
		
		This method will first try to restore from the most recent checkpoint in
		`directory`. If no checkpoints exist in `directory`, and `init_fn` is
		specified, this method will call `init_fn` to do customized
		initialization. This can be used to support initialization from pretrained
		models.
		
		Note that unlike `tf.train.Checkpoint.restore()`, this method doesn't return
		a load status object that users can run assertions on
		(e.g. assert_consumed()). Thus to run assertions, users should directly use
		`tf.train.Checkpoint.restore()` method.
		
		Returns:
		  The restored checkpoint path if the lastest checkpoint is found and
		  restored. Otherwise None.
	**/
	public function restore_or_initialize():Dynamic;
	/**
		Creates a new checkpoint and manages it.
		
		Args:
		  checkpoint_number: An optional integer, or an integer-dtype `Variable` or
		    `Tensor`, used to number the checkpoint. If `None` (default),
		    checkpoints are numbered using `checkpoint.save_counter`. Even if
		    `checkpoint_number` is provided, `save_counter` is still incremented. A
		    user-provided `checkpoint_number` is not incremented even if it is a
		    `Variable`.
		  check_interval: An optional boolean. The argument is only effective when
		    `checkpoint_interval` is passed into the manager. If `True`, the manager
		    will only save the checkpoint if the interval between checkpoints is
		    larger than `checkpoint_interval`. Otherwise it will always save the
		    checkpoint unless a checkpoint has already been saved for the current
		    step.
		  options: Optional `tf.train.CheckpointOptions` object. This argument only
		    works with TF2 checkpoint objects. For example, options =
		    tf.saved_model.SaveOptions(experimental_io_device='/job:localhost')
		
		Returns:
		  The path to the new checkpoint. It is also recorded in the `checkpoints`
		  and `latest_checkpoint` properties. `None` if no checkpoint is saved.
	**/
	public function save(?checkpoint_number:Dynamic, ?check_interval:Dynamic, ?options:Dynamic):Dynamic;
}