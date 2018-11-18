/* This file is generated, do not edit! */
package tensorflow.python.saved_model.loader_impl;
@:pythonImport("tensorflow.python.saved_model.loader_impl", "SavedModelLoader") extern class SavedModelLoader {
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
		Directory containing the SavedModel.
	**/
	public var export_dir : Dynamic;
	/**
		Return MetaGraphDef with the exact specified tags.
		
		Args:
		  tags: A list or set of string tags that identify the MetaGraphDef.
		
		Returns:
		  MetaGraphDef with the same tags.
		
		Raises:
		  RuntimeError: if no metagraphs were found with the associated tags.
	**/
	public function get_meta_graph_def_from_tags(tags:Dynamic):Dynamic;
	/**
		Load the MetaGraphDef graph and restore variable values into the session.
		
		Args:
		  sess: tf.Session to restore variable values.
		  tags: a set of string tags identifying a MetaGraphDef.
		  import_scope: Optional `string` -- if specified, prepend this string
		    followed by '/' to all loaded tensor names. This scope is applied to
		    tensor instances loaded into the passed session, but it is *not* written
		    through to the static `MetaGraphDef` protocol buffer that is returned.
		  **saver_kwargs: keyword arguments to pass to tf.train.import_meta_graph.
		
		Returns:
		  `MetagraphDef` proto of the graph that was loaded.
	**/
	public function load(sess:Dynamic, tags:Dynamic, ?import_scope:Dynamic, ?saver_kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Load ops and nodes from SavedModel MetaGraph into graph.
		
		Args:
		  graph: tf.Graph object.
		  tags: a set of string tags identifying a MetaGraphDef.
		  import_scope: Optional `string` -- if specified, prepend this string
		    followed by '/' to all loaded tensor names. This scope is applied to
		    tensor instances loaded into the passed session, but it is *not* written
		    through to the static `MetaGraphDef` protocol buffer that is returned.
		  **saver_kwargs: keyword arguments to pass to tf.train.import_meta_graph.
		
		Returns:
		  A tuple of
		    * Saver defined by the MetaGraph, which can be used to restore the
		      variable values.
		    * List of `Operation`/`Tensor` objects returned from
		      `tf.import_graph_def` (may be `None`).
	**/
	public function load_graph(graph:Dynamic, tags:Dynamic, ?import_scope:Dynamic, ?saver_kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Restore SavedModel variable values into the session.
		
		Args:
		  sess: tf.Session to restore variable values.
		  saver: a tf.train.Saver object. Can be None if there are no variables in
		    graph. This may be the saver returned by the load_graph() function, or a
		    default `tf.train.Saver()`.
		  import_scope: Optional `string` -- if specified, prepend this string
		    followed by '/' to all loaded tensor names. This scope is applied to
		    tensor instances loaded into the passed session, but it is *not* written
		    through to the static `MetaGraphDef` protocol buffer that is returned.
		
		Raises:
		  ValueError: if no saver was passed to the saver argument, and there are
		    variables in the graph.
	**/
	public function restore_variables(sess:Dynamic, saver:Dynamic, ?import_scope:Dynamic):Dynamic;
	/**
		Run initialization ops defined in the `MetaGraphDef`.
		
		Args:
		  sess: tf.Session to restore variable values.
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