/* This file is generated, do not edit! */
package tensorflow.python.saved_model.method_name_updater;
@:pythonImport("tensorflow.python.saved_model.method_name_updater", "MethodNameUpdater") extern class MethodNameUpdater {
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
		Creates an MethodNameUpdater object.
		
		Args:
		  export_dir: Directory containing the SavedModel files.
		
		Raises:
		  IOError: If the saved model file does not exist, or cannot be successfully
		  parsed.
	**/
	@:native("__init__")
	public function ___init__(export_dir:Dynamic):Dynamic;
	/**
		Creates an MethodNameUpdater object.
		
		Args:
		  export_dir: Directory containing the SavedModel files.
		
		Raises:
		  IOError: If the saved model file does not exist, or cannot be successfully
		  parsed.
	**/
	public function new(export_dir:Dynamic):Void;
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
	static public var _tf_api_names : Dynamic;
	static public var _tf_api_names_v1 : Dynamic;
	/**
		Replaces the method_name in the specified signature_def.
		
		This will match and replace multiple sig defs iff tags is None (i.e when
		multiple `MetaGraph`s have a signature_def with the same key).
		If tags is not None, this will only replace a single signature_def in the
		`MetaGraph` with matching tags.
		
		Args:
		  signature_key: Key of the signature_def to be updated.
		  method_name: new method_name to replace the existing one.
		  tags: A tag or sequence of tags identifying the `MetaGraph` to update. If
		      None, all meta graphs will be updated.
		Raises:
		  ValueError: if signature_key or method_name are not defined or
		      if no metagraphs were found with the associated tags or
		      if no meta graph has a signature_def that matches signature_key.
	**/
	public function replace_method_name(signature_key:Dynamic, method_name:Dynamic, ?tags:Dynamic):Dynamic;
	/**
		Saves the updated `SavedModel`.
		
		Args:
		  new_export_dir: Path where the updated `SavedModel` will be saved. If
		      None, the input `SavedModel` will be overriden with the updates.
		
		Raises:
		  errors.OpError: If there are errors during the file save operation.
	**/
	public function save(?new_export_dir:Dynamic):Dynamic;
}