/* This file is generated, do not edit! */
package tensorflow.python.training.tracking.util;
@:pythonImport("tensorflow.python.training.tracking.util", "NameBasedSaverStatus") extern class NameBasedSaverStatus {
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
		DEPRECATED FUNCTION
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Restoring a name-based tf.train.Saver checkpoint using the object-based restore API. This mode uses global names to match variables, and so is somewhat fragile. It also adds new restore ops to the graph each time it is called when graph building. Prefer re-encoding training checkpoints in the object-based format: run save() on the object-based saver (the same one this message is coming from) and use that checkpoint in the future.
	**/
	@:native("__init__")
	public function ___init__(checkpoint:Dynamic, graph_view:Dynamic):Dynamic;
	/**
		DEPRECATED FUNCTION
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Restoring a name-based tf.train.Saver checkpoint using the object-based restore API. This mode uses global names to match variables, and so is somewhat fragile. It also adds new restore ops to the graph each time it is called when graph building. Prefer re-encoding training checkpoints in the object-based format: run save() on the object-based saver (the same one this message is coming from) and use that checkpoint in the future.
	**/
	public function new(checkpoint:Dynamic, graph_view:Dynamic):Void;
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
		Walk the object graph, using global names for SaveableObjects.
	**/
	public function _gather_saveable_objects():Dynamic;
	/**
		Add a variable to the list of optionally restored variables.
		
		There are situations where certain variables should be ignored in assertions
		such as assert_existing_objects_matched(). One example is that of a
		checkpoint saved with train.Saver(), and restored with train.Checkpoint():
		it is possible for the train.Saver() checkpoint to be missing the internal
		`save_counter` variable, which we want to ignore on restore.
		
		Args:
		  var: The variable to treat as optionally restored.
	**/
	public function add_to_optionally_restored(_var:Dynamic):Dynamic;
	/**
		Raises an exception if any variables are unmatched.
	**/
	public function assert_consumed():Dynamic;
	/**
		Raises an exception if currently created objects are unmatched.
	**/
	public function assert_existing_objects_matched():Dynamic;
	/**
		Raises an exception if currently created objects are unmatched.
	**/
	public function assert_nontrivial_match():Dynamic;
	/**
		Silence warnings about incomplete checkpoint restores.
	**/
	public function expect_partial():Dynamic;
	/**
		Alias for `run_restore_ops`.
	**/
	public function initialize_or_restore(?session:Dynamic):Dynamic;
	/**
		Load the name-based checkpoint using a new `tf.compat.v1.train.Saver`.
	**/
	public function run_restore_ops(?session:Dynamic):Dynamic;
}