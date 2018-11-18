/* This file is generated, do not edit! */
package tensorflow.python.training.checkpointable.util;
@:pythonImport("tensorflow.python.training.checkpointable.util", "CheckpointLoadStatus") extern class CheckpointLoadStatus {
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
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	@:native("__init__")
	public function ___init__(checkpoint:Dynamic, feed_dict:Dynamic, root_checkpointable:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(checkpoint:Dynamic, feed_dict:Dynamic, root_checkpointable:Dynamic):Void;
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
		Asserts that all objects in the checkpoint have been created/matched.
		
		Returns:
		  `self` for chaining.
		Raises:
		  AssertionError: If there are any Python objects in the dependency graph
		    which have not been restored from this checkpoint or a later `restore`,
		    or if there are any checkpointed values which have not been matched to
		    Python objects.
	**/
	public function assert_consumed():Dynamic;
	/**
		Asserts that checkpointable Python objects have been matched.
		
		Note that this is a weaker assertion than `assert_consumed`. It will only
		fail for existing Python objects which are (transitive) dependencies of the
		root object and which do not have an entry in the checkpoint.
		
		It will not fail, for example, if a `tf.keras.Layer` object has not yet been
		built and so has not created any `tf.Variable` objects.
		
		Returns:
		  `self` for chaining.
		
		Raises:
		  AssertionError: If a Python object exists in the transitive dependencies
		    of the root object but does not have a value in the checkpoint.
	**/
	public function assert_existing_objects_matched():Dynamic;
	/**
		Run operations to initialize or restore objects in the dependency graph.
		
		Any objects in the dependency graph which have initializers but are not in
		the checkpoint will have those initializers run, unless those variables are
		being restored by a later call to `tf.train.Checkpoint.restore()`.
		
		This method has a sibling in `InitializationOnlyStatus` which instead
		initializes variables. That type is returned if no checkpoint is specified
		in `Saver.restore`.
		
		Args:
		  session: The session to run init/restore ops in. If `None`, uses the
		    default session.
	**/
	public function initialize_or_restore(?session:Dynamic):Dynamic;
	/**
		Run operations to restore objects in the dependency graph.
	**/
	public function run_restore_ops(?session:Dynamic):Dynamic;
}