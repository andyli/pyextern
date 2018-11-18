/* This file is generated, do not edit! */
package tensorflow.python.training.checkpointable.util;
@:pythonImport("tensorflow.python.training.checkpointable.util", "CheckpointableSaver") extern class CheckpointableSaver {
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
		Configure saving.
		
		Args:
		  root_checkpointable: The root of the object graph to save/restore. This
		    object and all of its dependencies are saved in the checkpoint. When
		    restoring, objects are matched and restored starting from this root.
	**/
	@:native("__init__")
	public function ___init__(root_checkpointable:Dynamic):Dynamic;
	/**
		Configure saving.
		
		Args:
		  root_checkpointable: The root of the object graph to save/restore. This
		    object and all of its dependencies are saved in the checkpoint. When
		    restoring, objects are matched and restored starting from this root.
	**/
	public function new(root_checkpointable:Dynamic):Void;
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
		Wraps _serialize_object_graph to include the object graph proto.
	**/
	public function _gather_saveables(?object_graph_tensor:Dynamic, ?saveable_object_cache:Dynamic):Dynamic;
	/**
		Create or retrieve save ops.
		
		When graph building, `saveable_object_cache` will typically be non-`None`,
		meaning that existing `SaveableObject`s are re-used across calls to
		`_prepare_save` even if the object graph has grown. This avoids
		unnecessarily re-creating save ops.
		
		Args:
		  object_graph_tensor: A `Tensor` to which the current object graph will be
		    fed.
		  saveable_object_cache: A dictionary; if specified, used to cache
		    `SaveableObject`s.
		
		Returns:
		  A two-element tuple with a `tf.train.Saver` and a feed_dict of `Tensor`s
		  to feed when running save ops. The feed dict contains the current object
		  graph and any Python state to be saved in the checkpoint.
	**/
	public function _prepare_save(?object_graph_tensor:Dynamic, ?saveable_object_cache:Dynamic):Dynamic;
	public var _root_checkpointable : Dynamic;
	/**
		Creates a `tf.train.Saver` with the current object graph frozen.
	**/
	public function freeze():Dynamic;
	/**
		Restore a training checkpoint.
		
		Restores `root_checkpointable` and any objects that it tracks
		(transitive). Either assigns values immediately if variables to restore have
		been created already, or defers restoration until the variables are
		created. Dependencies added to the `root_checkpointable` passed to the
		constructor after this call will be matched if they have a corresponding
		object in the checkpoint.
		
		When building a graph, restorations are added to the graph but not run.
		
		To disallow deferred loading, assert immediately that all checkpointed
		variables have been matched to variable objects:
		
		```python
		saver = Saver(root)
		saver.restore(path).assert_consumed()
		```
		
		An exception will be raised unless every object was matched and its
		variables already exist.
		
		When graph building, `assert_consumed()` indicates that all of the restore
		ops which will be created for this checkpoint have been created. They can be
		run via the `run_restore_ops()` function of the status object:
		
		```python
		saver.restore(path).assert_consumed().run_restore_ops()
		```
		
		If the checkpoint has not been consumed completely, then the list of restore
		ops will grow as more objects are added to the dependency graph.
		
		Name-based `tf.train.Saver` checkpoints can be loaded using this
		method. There is no deferred loading, and names are used to match
		variables. No restore ops are created/run until `run_restore_ops()` or
		`initialize_or_restore()` are called on the returned status object, even
		when executing eagerly. Re-encode name-based checkpoints using this
		object-based `Saver.save` as soon as possible.
		
		Args:
		  save_path: The path to the checkpoint, as returned by `save` or
		    `tf.train.latest_checkpoint`. If None (as when there is no latest
		    checkpoint for `tf.train.latest_checkpoint` to return), returns an
		    object which may run initializers for objects in the dependency
		    graph. If the checkpoint was written by the name-based `tf.train.Saver`,
		    names are used to match variables.
		
		Returns:
		  A load status object, which can be used to make assertions about the
		  status of checkpoint restoration and run initialization/restore ops
		  (of type `CheckpointLoadStatus`, or `InitializationOnlyStatus` if
		  `save_path` is `None`).
		
		  If `save_path` points to a name-based checkpoint, a `NameBasedSaverStatus`
		  object is returned which runs restore ops from a name-based saver.
	**/
	public function restore(save_path:Dynamic):Dynamic;
	/**
		Save a training checkpoint.
		
		The saved checkpoint includes variables created by this object and any
		Checkpointable objects it depends on at the time `Saver.save()` is called.
		
		Args:
		  file_prefix: A prefix to use for the checkpoint filenames
		    (/path/to/directory/and_a_prefix). Names are generated based on this
		    prefix and `checkpoint_number`, if provided.
		  checkpoint_number: An integer variable or Tensor, used to number
		    checkpoints. Typically this value is saved along with other variables in
		    training checkpoints, which will happen automatically if it was created
		    by `root_checkpointable` or one of its dependencies (via
		    `Checkpointable._add_variable`).
		  session: The session to evaluate variables in. Ignored when executing
		    eagerly. If not provided when graph building, the default session is
		    used.
		
		Returns:
		  The full path to the checkpoint.
	**/
	public function save(file_prefix:Dynamic, ?checkpoint_number:Dynamic, ?session:Dynamic):Dynamic;
}