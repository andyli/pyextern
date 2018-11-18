/* This file is generated, do not edit! */
package tensorflow.python.estimator.exporter;
@:pythonImport("tensorflow.python.estimator.exporter", "_SavedModelExporter") extern class _SavedModelExporter {
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
		Create an `Exporter` to use with `tf.estimator.EvalSpec`.
		
		Args:
		  name: unique name of this `Exporter` that is going to be used in the
		    export path.
		  serving_input_receiver_fn: a function that takes no arguments and returns
		    a `ServingInputReceiver`.
		  assets_extra: An optional dict specifying how to populate the assets.extra
		    directory within the exported SavedModel.  Each key should give the
		    destination path (including the filename) relative to the assets.extra
		    directory.  The corresponding value gives the full path of the source
		    file to be copied.  For example, the simple case of copying a single
		    file without renaming it is specified as
		    `{'my_asset_file.txt': '/path/to/my_asset_file.txt'}`.
		  as_text: whether to write the SavedModel proto in text format. Defaults to
		    `False`.
		  strip_default_attrs: Boolean. If set, default attrs in the `GraphDef` will
		    be stripped on write. This is the default behavior and recommended for
		    better forward compatibility of the resulting `SavedModel`.
		
		Raises:
		  ValueError: if any arguments is invalid.
	**/
	@:native("__init__")
	public function ___init__(name:Dynamic, serving_input_receiver_fn:Dynamic, ?assets_extra:Dynamic, ?as_text:Dynamic, ?strip_default_attrs:Dynamic):Dynamic;
	/**
		Create an `Exporter` to use with `tf.estimator.EvalSpec`.
		
		Args:
		  name: unique name of this `Exporter` that is going to be used in the
		    export path.
		  serving_input_receiver_fn: a function that takes no arguments and returns
		    a `ServingInputReceiver`.
		  assets_extra: An optional dict specifying how to populate the assets.extra
		    directory within the exported SavedModel.  Each key should give the
		    destination path (including the filename) relative to the assets.extra
		    directory.  The corresponding value gives the full path of the source
		    file to be copied.  For example, the simple case of copying a single
		    file without renaming it is specified as
		    `{'my_asset_file.txt': '/path/to/my_asset_file.txt'}`.
		  as_text: whether to write the SavedModel proto in text format. Defaults to
		    `False`.
		  strip_default_attrs: Boolean. If set, default attrs in the `GraphDef` will
		    be stripped on write. This is the default behavior and recommended for
		    better forward compatibility of the resulting `SavedModel`.
		
		Raises:
		  ValueError: if any arguments is invalid.
	**/
	public function new(name:Dynamic, serving_input_receiver_fn:Dynamic, ?assets_extra:Dynamic, ?as_text:Dynamic, ?strip_default_attrs:Dynamic):Void;
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
	static public var _estimator_api_names : Dynamic;
	static public var _estimator_api_names_v1 : Dynamic;
	/**
		Exports the given `Estimator` to a specific format.
		
		Args:
		  estimator: the `Estimator` to export.
		  export_path: A string containing a directory where to write the export.
		  checkpoint_path: The checkpoint path to export.
		  eval_result: The output of `Estimator.evaluate` on this checkpoint.
		  is_the_final_export: This boolean is True when this is an export in the
		    end of training.  It is False for the intermediate exports during
		    the training.
		    When passing `Exporter` to `tf.estimator.train_and_evaluate`
		    `is_the_final_export` is always False if `TrainSpec.max_steps` is
		    `None`.
		
		Returns:
		  The string path to the exported directory or `None` if export is skipped.
	**/
	public function export(estimator:Dynamic, export_path:Dynamic, checkpoint_path:Dynamic, eval_result:Dynamic, is_the_final_export:Dynamic):Dynamic;
	/**
		Directory name.
		
		A directory name under the export base directory where exports of
		this type are written.  Should not be `None` nor empty.
	**/
	public var name : Dynamic;
}