/* This file is generated, do not edit! */
package tensorflow.python.saved_model.load_v1_in_v2;
@:pythonImport("tensorflow.python.saved_model.load_v1_in_v2", "_EagerSavedModelLoader") extern class _EagerSavedModelLoader {
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
		Creates a `SavedModelLoader`.
		
		Args:
		  export_dir: Directory in which the SavedModel protocol buffer and
		    variables to be loaded are located.
	**/
	@:native("__init__")
	public function ___init__(export_dir:Dynamic):Dynamic;
	/**
		Creates a `SavedModelLoader`.
		
		Args:
		  export_dir: Directory in which the SavedModel protocol buffer and
		    variables to be loaded are located.
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
	public function _extract_saver_restore(wrapped:Dynamic, saver:Dynamic):Dynamic;
	/**
		Creates ConcreteFunctions for signatures in `meta_graph_def`.
	**/
	public function _extract_signatures(wrapped:Dynamic, meta_graph_def:Dynamic):Dynamic;
	/**
		Directory containing the SavedModel.
	**/
	public var export_dir : Dynamic;
	/**
		Override to support implicit one-MetaGraph loading with tags=None.
	**/
	public function get_meta_graph_def_from_tags(tags:Dynamic):Dynamic;
	/**
		Creates an object from the MetaGraph identified by `tags`.
	**/
	public function load(tags:Dynamic):Dynamic;
	/**
		Called from wrap_function to import `meta_graph_def`.
	**/
	public function load_graph(returns:Dynamic, meta_graph_def:Dynamic):Dynamic;
	/**
		Restores variables from the checkpoint.
	**/
	public function restore_variables(wrapped:Dynamic, restore_from_saver:Dynamic):Dynamic;
	/**
		Run initialization ops defined in the `MetaGraphDef`.
		
		Args:
		  sess: tf.compat.v1.Session to restore variable values.
		  tags: a set of string tags identifying a MetaGraphDef.
		  import_scope: Optional `string` -- if specified, prepend this string
		    followed by '/' to all loaded tensor names. This scope is applied to
		    tensor instances loaded into the passed session, but it is *not* written
		    through to the static `MetaGraphDef` protocol buffer that is returned.
	**/
	public function run_init_ops(sess:Dynamic, tags:Dynamic, ?import_scope:Dynamic):Dynamic;
	/**
		SavedModel object parsed from the export directory.
	**/
	public var saved_model : Dynamic;
	/**
		Path to variable checkpoint files.
	**/
	public var variables_path : Dynamic;
}