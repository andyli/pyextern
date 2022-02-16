/* This file is generated, do not edit! */
package tensorflow.python.keras.distribute.worker_training_state;
@:pythonImport("tensorflow.python.keras.distribute.worker_training_state", "WorkerTrainingState") extern class WorkerTrainingState {
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
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	@:native("__init__")
	public function ___init__(model:Dynamic, checkpoint_dir:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(model:Dynamic, checkpoint_dir:Dynamic):Void;
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
		Back up the current state of training into a checkpoint file.
		
		Args:
		  epoch: The current epoch information to be saved.
	**/
	public function back_up(epoch:Dynamic):Dynamic;
	/**
		Delete the backup directories.
		
		Delete the backup directories which should not exist after `fit()`
		successfully finishes.
	**/
	public function delete_backup():Dynamic;
	/**
		Maybe load initial epoch from ckpt considering possible worker recovery.
		
		When `_ckpt_saved_epoch` attribute exists and is not
		`CKPT_SAVED_EPOCH_UNUSED_VALUE`, this is under multi-worker training setting
		and indicates the worker is recovering from previous failure. In this case,
		infer `initial_epoch` from `self._ckpt_saved_epoch` to continue previous
		unfinished training from certain epoch.
		
		Args:
		  initial_epoch: The original initial_epoch user passes in in `fit()`.
		  mode: The mode for running `model.fit()`.
		
		Returns:
		  If the training is recovering from previous failure under multi-worker
		  training setting, return the epoch the training is supposed to continue
		  at. Otherwise, return the `initial_epoch` the user passes in.
	**/
	public function maybe_load_initial_epoch_from_ckpt(initial_epoch:Dynamic, mode:Dynamic):Dynamic;
	/**
		Restore the training state from the backed up checkpoint file.
		
		Returns:
		  True if the training state is successfully restored. False if the training
		  state doesn't need to be restored, or error occurred so it can't.
	**/
	public function restore():Dynamic;
}