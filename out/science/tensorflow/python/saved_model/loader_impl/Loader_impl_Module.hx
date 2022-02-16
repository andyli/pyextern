/* This file is generated, do not edit! */
package tensorflow.python.saved_model.loader_impl;
@:pythonImport("tensorflow.python.saved_model.loader_impl") extern class Loader_impl_Module {
	static public var _LOADER_LABEL : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Gets the main op tensor, if one exists.
		
		Args:
		  meta_graph_def_to_load: The meta graph def from the SavedModel to be loaded.
		  init_op_key: name of the collection to check; should be one of MAIN_OP_KEY
		    or the deprecated LEGACY_INIT_OP_KEY
		
		Returns:
		  The main op tensor, if it exists and `None` otherwise.
		
		Raises:
		  RuntimeError: If the collection def corresponding to the main op key has
		      other than exactly one tensor.
	**/
	static public function _get_main_op_tensor(meta_graph_def_to_load:Dynamic, ?init_op_key:Dynamic):Dynamic;
	static public function _get_op_from_collection(meta_graph_def:Dynamic, op_key:Dynamic):Dynamic;
	/**
		Retrieve op stored in the imported meta graph's signature def.
	**/
	static public function _get_op_from_signature_def(meta_graph_def:Dynamic, op_signature_key:Dynamic, import_scope:Dynamic):Dynamic;
	/**
		Reads the savedmodel.pb or savedmodel.pbtxt file containing `SavedModel`.
		
		Args:
		  export_dir: String or Pathlike, path to the directory containing the
		  SavedModel file.
		
		Returns:
		  A `SavedModel` protocol buffer.
		
		Raises:
		  IOError: If the file does not exist, or cannot be successfully parsed.
	**/
	static public function _parse_saved_model(export_dir:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
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
	static public function contains_saved_model(export_dir:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Gets the asset tensors, if defined in the meta graph def to load.
		
		Args:
		  export_dir: Directory where the SavedModel is located.
		  meta_graph_def_to_load: The meta graph def from the SavedModel to be loaded.
		  import_scope: Optional `string` -- if specified, prepend this followed by
		      '/' to all returned asset tensor names.
		
		Returns:
		  A dictionary of asset tensors, keyed by the name of the asset tensor. The
		  value in the map corresponds to the absolute path of the asset file.
	**/
	static public function get_asset_tensors(export_dir:Dynamic, meta_graph_def_to_load:Dynamic, ?import_scope:Dynamic):Dynamic;
	static public function get_init_op(meta_graph_def:Dynamic, ?import_scope:Dynamic):Dynamic;
	static public function get_train_op(meta_graph_def:Dynamic, ?import_scope:Dynamic):Dynamic;
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
	/**
		Reads the savedmodel.pb or savedmodel.pbtxt file containing `SavedModel`.
		
		Args:
		  export_dir: String or Pathlike, path to the directory containing the
		  SavedModel file.
		
		Returns:
		  A `SavedModel` protocol buffer.
		
		Raises:
		  IOError: If the file does not exist, or cannot be successfully parsed.
	**/
	static public function parse_saved_model(export_dir:Dynamic):Dynamic;
	/**
		Reads the savedmodel as well as the graph debug info.
		
		Args:
		  export_dir: Directory containing the SavedModel and GraphDebugInfo files.
		
		Returns:
		  `SavedModel` and `GraphDebugInfo` protocol buffers.
		
		Raises:
		  IOError: If the saved model file does not exist, or cannot be successfully
		  parsed. Missing graph debug info file is fine.
	**/
	static public function parse_saved_model_with_debug_info(export_dir:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}