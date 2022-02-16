/* This file is generated, do not edit! */
package tensorflow.python.training.tracking.util;
@:pythonImport("tensorflow.python.training.tracking.util", "TrackableSaver") extern class TrackableSaver {
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
		Configure saving.
		
		Args:
		  graph_view: A `GraphView` object containing a description of the object
		    graph to save.
	**/
	@:native("__init__")
	public function ___init__(graph_view:Dynamic):Dynamic;
	/**
		Configure saving.
		
		Args:
		  graph_view: A `GraphView` object containing a description of the object
		    graph to save.
	**/
	public function new(graph_view:Dynamic):Void;
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
		Wraps _serialize_object_graph to include the object graph proto.
	**/
	public function _gather_saveables(?object_graph_tensor:Dynamic):Dynamic;
	/**
		Create or retrieve save ops.
		
		Args:
		  file_prefix: The prefix for saved checkpoint files.
		  object_graph_tensor: A `Tensor` to which the current object graph will be
		    fed.
		  options: `CheckpointOptions` object.
		
		Returns:
		  A two-element tuple with a filename tensor and a feed_dict of tensors to
		  feed when running it (if graph building). The feed dict contains the
		  current object graph and any Python state to be saved in the
		  checkpoint. When executing eagerly only the first argument is meaningful.
	**/
	public function _save_cached_when_graph_building(file_prefix:Dynamic, object_graph_tensor:Dynamic, options:Dynamic):Dynamic;
	static public var _tf_api_names : Dynamic;
	static public var _tf_api_names_v1 : Dynamic;
	/**
		Restore a training checkpoint.
		
		Restores `root_trackable` and any objects that it tracks
		(transitive). Either assigns values immediately if variables to restore have
		been created already, or defers restoration until the variables are
		created. Dependencies added to the `root_trackable` passed to the
		constructor after this call will be matched if they have a corresponding
		object in the checkpoint.
		
		When building a graph, restorations are added to the graph but not run.
		
		```python
		saver = Saver(root)
		saver.restore(path)
		```
		
		To ensure that loading is complete and no more assignments will take place
		you can use the `assert_consumed()` method of the status object returned
		by the `restore` call.
		
		The assert will raise an exception unless every object was matched and all
		checkpointed values have a matching variable object.
		
		```python
		saver = Saver(root)
		saver.restore(path).assert_consumed()
		```
		
		When graph building, `assert_consumed()` indicates that all of the restore
		ops which will be created for this checkpoint have been created. They can be
		run via the `run_restore_ops()` function of the status object:
		
		```python
		saver.restore(path).assert_consumed().run_restore_ops()
		```
		
		If the checkpoint has not been consumed completely, then the list of restore
		ops will grow as more objects are added to the dependency graph.
		
		Name-based `tf.compat.v1.train.Saver` checkpoints can be loaded using this
		method. There is no deferred loading, and names are used to match
		variables. No restore ops are created/run until `run_restore_ops()` or
		`initialize_or_restore()` are called on the returned status object, even
		when executing eagerly. Re-encode name-based checkpoints using this
		object-based `Saver.save` as soon as possible.
		
		Args:
		  save_path: The path to the checkpoint, as returned by `save` or
		    `tf.train.latest_checkpoint`. If None (as when there is no latest
		    checkpoint for `tf.train.latest_checkpoint` to return), returns an
		    object which may run initializers for objects in the dependency graph.
		    If the checkpoint was written by the name-based
		    `tf.compat.v1.train.Saver`, names are used to match variables.
		  options: Optional `tf.train.CheckpointOptions` object.
		
		Returns:
		  A load status object, which can be used to make assertions about the
		  status of checkpoint restoration and run initialization/restore ops
		  (of type `CheckpointLoadStatus`, or `InitializationOnlyStatus` if
		  `save_path` is `None`).
		
		  If `save_path` points to a name-based checkpoint, a `NameBasedSaverStatus`
		  object is returned which runs restore ops from a name-based saver.
	**/
	public function restore(save_path:Dynamic, ?options:Dynamic):Dynamic;
	/**
		Save a training checkpoint.
		
		The saved checkpoint includes variables created by this object and any
		Trackable objects it depends on at the time `Saver.save()` is called.
		
		Args:
		  file_prefix: A prefix to use for the checkpoint filenames
		    (/path/to/directory/and_a_prefix). Names are generated based on this
		    prefix and `checkpoint_number`, if provided.
		  checkpoint_number: An integer variable or Tensor, used to number
		    checkpoints. Typically this value is saved along with other variables in
		    training checkpoints, which will happen automatically if it was created
		    by `root_trackable` or one of its dependencies (via
		    `Trackable._add_variable`).
		  session: The session to evaluate variables in. Ignored when executing
		    eagerly. If not provided when graph building, the default session is
		    used.
		  options: Optional `tf.train.CheckpointOptions` object.
		
		Returns:
		  The full path to the checkpoint.
	**/
	public function save(file_prefix:Dynamic, ?checkpoint_number:Dynamic, ?session:Dynamic, ?options:Dynamic):Dynamic;
}