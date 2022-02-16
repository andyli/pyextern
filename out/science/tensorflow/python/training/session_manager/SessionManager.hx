/* This file is generated, do not edit! */
package tensorflow.python.training.session_manager;
@:pythonImport("tensorflow.python.training.session_manager", "SessionManager") extern class SessionManager {
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
		Creates a SessionManager.
		
		The `local_init_op` is an `Operation` that is run always after a new session
		was created. If `None`, this step is skipped.
		
		The `ready_op` is an `Operation` used to check if the model is ready.  The
		model is considered ready if that operation returns an empty 1D string
		tensor. If the operation returns a non empty 1D string tensor, the elements
		are concatenated and used to indicate to the user why the model is not
		ready.
		
		The `ready_for_local_init_op` is an `Operation` used to check if the model
		is ready to run local_init_op.  The model is considered ready if that
		operation returns an empty 1D string tensor. If the operation returns a non
		empty 1D string tensor, the elements are concatenated and used to indicate
		to the user why the model is not ready.
		
		If `ready_op` is `None`, the model is not checked for readiness.
		
		`recovery_wait_secs` is the number of seconds between checks that
		the model is ready.  It is used by processes to wait for a model to
		be initialized or restored.  Defaults to 30 seconds.
		
		Args:
		  local_init_op: An `Operation` run immediately after session creation.
		     Usually used to initialize tables and local variables.
		  ready_op: An `Operation` to check if the model is initialized.
		  ready_for_local_init_op: An `Operation` to check if the model is ready
		     to run local_init_op.
		  graph: The `Graph` that the model will use.
		  recovery_wait_secs: Seconds between checks for the model to be ready.
		  local_init_run_options: RunOptions to be passed to session.run when
		    executing the local_init_op.
		  local_init_feed_dict: Optional session feed dictionary to use when running
		    the local_init_op.
		
		Raises:
		  ValueError: If ready_for_local_init_op is not None but local_init_op is
		    None
	**/
	@:native("__init__")
	public function ___init__(?local_init_op:Dynamic, ?ready_op:Dynamic, ?ready_for_local_init_op:Dynamic, ?graph:Dynamic, ?recovery_wait_secs:Dynamic, ?local_init_run_options:Dynamic, ?local_init_feed_dict:Dynamic):Dynamic;
	/**
		Creates a SessionManager.
		
		The `local_init_op` is an `Operation` that is run always after a new session
		was created. If `None`, this step is skipped.
		
		The `ready_op` is an `Operation` used to check if the model is ready.  The
		model is considered ready if that operation returns an empty 1D string
		tensor. If the operation returns a non empty 1D string tensor, the elements
		are concatenated and used to indicate to the user why the model is not
		ready.
		
		The `ready_for_local_init_op` is an `Operation` used to check if the model
		is ready to run local_init_op.  The model is considered ready if that
		operation returns an empty 1D string tensor. If the operation returns a non
		empty 1D string tensor, the elements are concatenated and used to indicate
		to the user why the model is not ready.
		
		If `ready_op` is `None`, the model is not checked for readiness.
		
		`recovery_wait_secs` is the number of seconds between checks that
		the model is ready.  It is used by processes to wait for a model to
		be initialized or restored.  Defaults to 30 seconds.
		
		Args:
		  local_init_op: An `Operation` run immediately after session creation.
		     Usually used to initialize tables and local variables.
		  ready_op: An `Operation` to check if the model is initialized.
		  ready_for_local_init_op: An `Operation` to check if the model is ready
		     to run local_init_op.
		  graph: The `Graph` that the model will use.
		  recovery_wait_secs: Seconds between checks for the model to be ready.
		  local_init_run_options: RunOptions to be passed to session.run when
		    executing the local_init_op.
		  local_init_feed_dict: Optional session feed dictionary to use when running
		    the local_init_op.
		
		Raises:
		  ValueError: If ready_for_local_init_op is not None but local_init_op is
		    None
	**/
	public function new(?local_init_op:Dynamic, ?ready_op:Dynamic, ?ready_for_local_init_op:Dynamic, ?graph:Dynamic, ?recovery_wait_secs:Dynamic, ?local_init_run_options:Dynamic, ?local_init_feed_dict:Dynamic):Void;
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
		Checks if the model is ready or not.
		
		Args:
		  sess: A `Session`.
		
		Returns:
		  A tuple (is_ready, msg), where is_ready is True if ready and False
		  otherwise, and msg is `None` if the model is ready, a `String` with the
		  reason why it is not ready otherwise.
	**/
	public function _model_ready(sess:Dynamic):Dynamic;
	/**
		Checks if the model is ready to run local_init_op.
		
		Args:
		  sess: A `Session`.
		
		Returns:
		  A tuple (is_ready, msg), where is_ready is True if ready to run
		  local_init_op and False otherwise, and msg is `None` if the model is
		  ready to run local_init_op, a `String` with the reason why it is not ready
		  otherwise.
	**/
	public function _model_ready_for_local_init(sess:Dynamic):Dynamic;
	/**
		Creates a `Session`, and tries to restore a checkpoint.
		
		
		Args:
		  master: `String` representation of the TensorFlow master to use.
		  saver: A `Saver` object used to restore a model.
		  checkpoint_dir: Path to the checkpoint files. The latest checkpoint in the
		    dir will be used to restore.
		  checkpoint_filename_with_path: Full file name path to the checkpoint file.
		  wait_for_checkpoint: Whether to wait for checkpoint to become available.
		  max_wait_secs: Maximum time to wait for checkpoints to become available.
		  config: Optional `ConfigProto` proto used to configure the session.
		
		Returns:
		  A pair (sess, is_restored) where 'is_restored' is `True` if
		  the session could be restored, `False` otherwise.
		
		Raises:
		  ValueError: If both checkpoint_dir and checkpoint_filename_with_path are
		    set.
	**/
	public function _restore_checkpoint(master:Dynamic, ?saver:Dynamic, ?checkpoint_dir:Dynamic, ?checkpoint_filename_with_path:Dynamic, ?wait_for_checkpoint:Dynamic, ?max_wait_secs:Dynamic, ?config:Dynamic):Dynamic;
	/**
		Closes a session without raising an exception.
		
		Just like sess.close() but ignores exceptions.
		
		Args:
		  sess: A `Session`.
	**/
	public function _safe_close(sess:Dynamic):Dynamic;
	static public var _tf_api_names : Dynamic;
	static public var _tf_api_names_v1 : Dynamic;
	/**
		Tries to run _local_init_op, if not None, and is ready for local init.
		
		Args:
		  sess: A `Session`.
		
		Returns:
		  A tuple (is_successful, msg), where is_successful is True if
		  _local_init_op is None, or we ran _local_init_op, and False otherwise;
		  and msg is a `String` with the reason why the model was not ready to run
		  local init.
	**/
	public function _try_run_local_init_op(sess:Dynamic):Dynamic;
	/**
		Creates a `Session`. Makes sure the model is ready to be used.
		
		Creates a `Session` on 'master'. If a `saver` object is passed in, and
		`checkpoint_dir` points to a directory containing valid checkpoint
		files, then it will try to recover the model from checkpoint. If
		no checkpoint files are available, and `wait_for_checkpoint` is
		`True`, then the process would check every `recovery_wait_secs`,
		up to `max_wait_secs`, for recovery to succeed.
		
		If the model cannot be recovered successfully then it is initialized by
		running the `init_op` and calling `init_fn` if they are provided.
		The `local_init_op` is also run after init_op and init_fn, regardless of
		whether the model was recovered successfully, but only if
		`ready_for_local_init_op` passes.
		
		If the model is recovered from a checkpoint it is assumed that all
		global variables have been initialized, in particular neither `init_op`
		nor `init_fn` will be executed.
		
		It is an error if the model cannot be recovered and no `init_op`
		or `init_fn` or `local_init_op` are passed.
		
		Args:
		  master: `String` representation of the TensorFlow master to use.
		  init_op: Optional `Operation` used to initialize the model.
		  saver: A `Saver` object used to restore a model.
		  checkpoint_dir: Path to the checkpoint files. The latest checkpoint in the
		    dir will be used to restore.
		  checkpoint_filename_with_path: Full file name path to the checkpoint file.
		  wait_for_checkpoint: Whether to wait for checkpoint to become available.
		  max_wait_secs: Maximum time to wait for checkpoints to become available.
		  config: Optional `ConfigProto` proto used to configure the session.
		  init_feed_dict: Optional dictionary that maps `Tensor` objects to feed
		    values.  This feed dictionary is passed to the session `run()` call when
		    running the init op.
		  init_fn: Optional callable used to initialize the model. Called after the
		    optional `init_op` is called.  The callable must accept one argument,
		    the session being initialized.
		
		Returns:
		  A `Session` object that can be used to drive the model.
		
		Raises:
		  RuntimeError: If the model cannot be initialized or recovered.
		  ValueError: If both checkpoint_dir and checkpoint_filename_with_path are
		    set.
	**/
	public function prepare_session(master:Dynamic, ?init_op:Dynamic, ?saver:Dynamic, ?checkpoint_dir:Dynamic, ?checkpoint_filename_with_path:Dynamic, ?wait_for_checkpoint:Dynamic, ?max_wait_secs:Dynamic, ?config:Dynamic, ?init_feed_dict:Dynamic, ?init_fn:Dynamic):Dynamic;
	/**
		Creates a `Session`, recovering if possible.
		
		Creates a new session on 'master'.  If the session is not initialized
		and can be recovered from a checkpoint, recover it.
		
		Args:
		  master: `String` representation of the TensorFlow master to use.
		  saver: A `Saver` object used to restore a model.
		  checkpoint_dir: Path to the checkpoint files. The latest checkpoint in the
		    dir will be used to restore.
		  checkpoint_filename_with_path: Full file name path to the checkpoint file.
		  wait_for_checkpoint: Whether to wait for checkpoint to become available.
		  max_wait_secs: Maximum time to wait for checkpoints to become available.
		  config: Optional `ConfigProto` proto used to configure the session.
		
		Returns:
		  A pair (sess, initialized) where 'initialized' is `True` if
		  the session could be recovered and initialized, `False` otherwise.
		
		Raises:
		  ValueError: If both checkpoint_dir and checkpoint_filename_with_path are
		    set.
	**/
	public function recover_session(master:Dynamic, ?saver:Dynamic, ?checkpoint_dir:Dynamic, ?checkpoint_filename_with_path:Dynamic, ?wait_for_checkpoint:Dynamic, ?max_wait_secs:Dynamic, ?config:Dynamic):Dynamic;
	/**
		Creates a new `Session` and waits for model to be ready.
		
		Creates a new `Session` on 'master'.  Waits for the model to be
		initialized or recovered from a checkpoint.  It's expected that
		another thread or process will make the model ready, and that this
		is intended to be used by threads/processes that participate in a
		distributed training configuration where a different thread/process
		is responsible for initializing or recovering the model being trained.
		
		NB: The amount of time this method waits for the session is bounded
		by max_wait_secs. By default, this function will wait indefinitely.
		
		Args:
		  master: `String` representation of the TensorFlow master to use.
		  config: Optional ConfigProto proto used to configure the session.
		  max_wait_secs: Maximum time to wait for the session to become available.
		
		Returns:
		  A `Session`. May be None if the operation exceeds the timeout
		  specified by config.operation_timeout_in_ms.
		
		Raises:
		  tf.DeadlineExceededError: if the session is not available after
		    max_wait_secs.
	**/
	public function wait_for_session(master:Dynamic, ?config:Dynamic, ?max_wait_secs:Dynamic):Dynamic;
}