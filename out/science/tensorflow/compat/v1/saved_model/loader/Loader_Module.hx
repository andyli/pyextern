/* This file is generated, do not edit! */
package tensorflow.compat.v1.saved_model.loader;
@:pythonImport("tensorflow.compat.v1.saved_model.loader") extern class Loader_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __path__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Loads the model from a SavedModel as specified by tags. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		This function will only be available through the v1 compatibility library as tf.compat.v1.saved_model.loader.load or tf.compat.v1.saved_model.load. There will be a new function for importing SavedModels in Tensorflow 2.0.
		
		Args:
		  sess: The TensorFlow session to restore the variables.
		  tags: Set of string tags to identify the required MetaGraphDef. These should
		      correspond to the tags used when saving the variables using the
		      SavedModel `save()` API.
		  export_dir: Directory in which the SavedModel protocol buffer and variables
		      to be loaded are located.
		  import_scope: Optional `string` -- if specified, prepend this string
		      followed by '/' to all loaded tensor names. This scope is applied to
		      tensor instances loaded into the passed session, but it is *not* written
		      through to the static `MetaGraphDef` protocol buffer that is returned.
		  **saver_kwargs: Optional keyword arguments passed through to Saver.
		
		Returns:
		  The `MetaGraphDef` protocol buffer loaded in the provided session. This
		  can be used to further extract signature-defs, collection-defs, etc.
		
		Raises:
		  RuntimeError: MetaGraphDef associated with the tags cannot be found.
		
		@compatibility(TF2)
		
		`tf.compat.v1.saved_model.load` or `tf.compat.v1.saved_model.loader.load` is
		not compatible with eager execution. Please use `tf.saved_model.load` instead
		to load your model. You can refer to the [SavedModel guide]
		(https://www.tensorflow.org/guide/saved_model) for more information as well as
		"Importing SavedModels from TensorFlow 1.x" in the [`tf.saved_model.load`]
		(https://www.tensorflow.org/api_docs/python/tf/saved_model/load) docstring.
		
		#### How to Map Arguments
		
		| TF1 Arg Name          | TF2 Arg Name    | Note                       |
		| :-------------------- | :-------------- | :------------------------- |
		| `sess`                | Not supported   | -                          |
		| `tags`                | `tags`          | -                          |
		| `export_dir`          | `export_dir`    | -                          |
		| `import_scope`        | Not supported   | Name scopes are not needed.
		:                       :                 : By default, variables are  :
		:                       :                 : associated with the loaded :
		:                       :                 : object and function names  :
		:                       :                 : are deduped.               :
		| `saver_kwargs`        | Not supported   | -                          |
		
		#### Before & After Usage Example
		
		Before:
		
		```
		with tf.compat.v1.Session(graph=tf.Graph()) as sess:
		  tf.compat.v1.saved_model.loader.load(sess, ["foo-tag"], export_dir)
		```
		
		After:
		
		```
		model = tf.saved_model.load(export_dir, tags=["foo-tag"])
		```
		@end_compatibility
	**/
	static public function load(sess:Dynamic, tags:Dynamic, export_dir:Dynamic, ?import_scope:Dynamic, ?saver_kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Checks whether the provided export directory could contain a SavedModel.
		
		Note that the method does not load any data by itself. If the method returns
		`false`, the export directory definitely does not contain a SavedModel. If the
		method returns `true`, the export directory may contain a SavedModel but
		provides no guarantee that it can be loaded.
		
		Args:
		  export_dir: Absolute string path to possible export location. For example,
		              '/my/foo/model'.
		
		Returns:
		  True if the export directory contains SavedModel files, False otherwise.
	**/
	static public function maybe_saved_model_directory(export_dir:Dynamic):Dynamic;
}