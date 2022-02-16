/* This file is generated, do not edit! */
package tensorflow.python.training.tracking.util;
@:pythonImport("tensorflow.python.training.tracking.util", "InitializationOnlyStatus") extern class InitializationOnlyStatus {
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
	public function ___init__(graph_view:Dynamic, restore_uid:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(graph_view:Dynamic, restore_uid:Dynamic):Void;
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
		Assertion for consistency with `CheckpointLoadStatus`. Always fails.
	**/
	public function assert_consumed():Dynamic;
	/**
		Assertion for consistency with `CheckpointLoadStatus`. Always fails.
	**/
	public function assert_existing_objects_matched():Dynamic;
	/**
		Assertion for consistency with `CheckpointLoadStatus`. Always fails.
	**/
	public function assert_nontrivial_match():Dynamic;
	/**
		Silence warnings about incomplete checkpoint restores.
	**/
	public function expect_partial():Dynamic;
	/**
		Runs initialization ops for variables.
		
		Objects which would be saved by `Saver.save` will be initialized, unless
		those variables are being restored by a later call to
		`tf.train.Checkpoint.restore()`.
		
		This method does nothing when executing eagerly (initializers get run
		eagerly).
		
		Args:
		  session: The session to run initialization ops in. If `None`, uses the
		    default session.
	**/
	public function initialize_or_restore(?session:Dynamic):Dynamic;
	/**
		For consistency with `CheckpointLoadStatus`.
		
		Use `initialize_or_restore` for initializing if no checkpoint was passed
		to `Saver.restore` and restoring otherwise.
		
		Args:
		  session: Not used.
	**/
	public function run_restore_ops(?session:Dynamic):Dynamic;
}