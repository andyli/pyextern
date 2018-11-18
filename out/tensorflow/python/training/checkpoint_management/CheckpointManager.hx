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
		
		Raises:
		  ValueError: If `max_to_keep` is not a positive integer.
	**/
	@:native("__init__")
	public function ___init__(checkpoint:Dynamic, directory:Dynamic, max_to_keep:Dynamic, ?keep_checkpoint_every_n_hours:Dynamic):Dynamic;
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
		
		Raises:
		  ValueError: If `max_to_keep` is not a positive integer.
	**/
	public function new(checkpoint:Dynamic, directory:Dynamic, max_to_keep:Dynamic, ?keep_checkpoint_every_n_hours:Dynamic):Void;
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
	/**
		A list of managed checkpoints.
		
		Note that checkpoints saved due to `keep_checkpoint_every_n_hours` will not
		show up in this list (to avoid ever-growing filename lists).
		
		Returns:
		  A list of filenames, sorted from oldest to newest.
	**/
	public var checkpoints : Dynamic;
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
		Creates a new checkpoint and manages it.
		
		Args:
		  session: The session to evaluate variables in. Ignored when executing
		    eagerly. If not provided when graph building, the default session is
		    used.
		  checkpoint_number: An optional integer, or an integer-dtype `Variable` or
		    `Tensor`, used to number the checkpoint. If `None` (default),
		    checkpoints are numbered using `checkpoint.save_counter`. Even if
		    `checkpoint_number` is provided, `save_counter` is still incremented. A
		    user-provided `checkpoint_number` is not incremented even if it is a
		    `Variable`.
		
		Returns:
		  The path to the new checkpoint. It is also recorded in the `checkpoints`
		  and `latest_checkpoint` properies.
	**/
	public function save(?session:Dynamic, ?checkpoint_number:Dynamic):Dynamic;
}