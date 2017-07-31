/* This file is generated, do not edit! */
package tensorflow.contrib.session_bundle.exporter;
@:pythonImport("tensorflow.contrib.session_bundle.exporter", "Exporter") extern class Exporter {
	static public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	public function ___init__(saver:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(saver:Dynamic):Void;
	/**
		This method is called when a class is subclassed.
		
		The default implementation does nothing. It may be
		overridden to extend subclasses.
	**/
	static public function __init_subclass__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	static public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	/**
		Returns the filepath value stored in constant `path_tensor`.
	**/
	public function _file_path_value(path_tensor:Dynamic):Dynamic;
	/**
		Exports the model. (deprecated)
		
		THIS FUNCTION IS DEPRECATED. It will be removed after 2017-06-30.
		Instructions for updating:
		Please use SavedModel instead.
		
		Args:
		  export_dir_base: A string path to the base export dir.
		  global_step_tensor: An Tensor or tensor name providing the
		    global step counter to append to the export directory path and set
		    in the manifest version.
		  sess: A Session to use to save the parameters.
		  exports_to_keep: a gc.Path filter function used to determine the set of
		    exports to keep. If set to None, all versions will be kept.
		
		Returns:
		  The string path to the exported directory.
		
		Raises:
		  RuntimeError: if init is not called.
		  RuntimeError: if the export would overwrite an existing directory.
	**/
	public function export(export_dir_base:Dynamic, global_step_tensor:Dynamic, ?sess:Dynamic, ?exports_to_keep:Dynamic):Dynamic;
	/**
		Initialization. (deprecated)
		
		THIS FUNCTION IS DEPRECATED. It will be removed after 2017-06-30.
		Instructions for updating:
		Please use SavedModel instead.
		
		Args:
		  graph_def: A GraphDef message of the graph to be used in inference.
		    GraphDef of default graph is used when None.
		  init_op: Op to be used in initialization.
		  clear_devices: If device info of the graph should be cleared upon export.
		  default_graph_signature: Default signature of the graph.
		  named_graph_signatures: Map of named input/output signatures of the graph.
		  assets_collection: A collection of constant asset filepath tensors. If set
		    the assets will be exported into the asset directory.
		  assets_callback: callback with two argument called during export with the
		    list of files to copy and the asset path.
		Raises:
		  RuntimeError: if init is called more than once.
		  TypeError: if init_op is not an Operation or None.
		  ValueError: if asset file path tensors are not non-empty constant string
		    scalar tensors.
	**/
	public function init(?graph_def:Dynamic, ?init_op:Dynamic, ?clear_devices:Dynamic, ?default_graph_signature:Dynamic, ?named_graph_signatures:Dynamic, ?assets_collection:Dynamic, ?assets_callback:Dynamic):Dynamic;
}