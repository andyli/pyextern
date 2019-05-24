/* This file is generated, do not edit! */
package tensorflow.contrib.session_bundle.session_bundle;
@:pythonImport("tensorflow.contrib.session_bundle.session_bundle") extern class Session_bundle_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Decorator for marking functions or methods deprecated.
		
		This decorator logs a deprecation warning whenever the decorated function is
		called. It has the following format:
		
		  <function> (from <module>) is deprecated and will be removed after <date>.
		  Instructions for updating:
		  <instructions>
		
		If `date` is None, 'after <date>' is replaced with 'in a future version'.
		<function> will include the class name if it is a method.
		
		It also edits the docstring of the function: ' (deprecated)' is appended
		to the first line of the docstring and a deprecation notice is prepended
		to the rest of the docstring.
		
		Args:
		  date: String or None. The date the function is scheduled to be removed.
		    Must be ISO 8601 (YYYY-MM-DD), or None.
		  instructions: String. Instructions on how to update code using the
		    deprecated function.
		  warn_once: Boolean. Set to `True` to warn only the first time the decorated
		    function is called. Otherwise, every call will log a warning.
		
		Returns:
		  Decorated function or method.
		
		Raises:
		  ValueError: If date is not None or in ISO 8601 format, or instructions are
		    empty.
	**/
	static public function deprecated(date:Dynamic, instructions:Dynamic, ?warn_once:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Load session bundle from the given path. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed after 2017-06-30.
		Instructions for updating:
		No longer supported. Switch to SavedModel immediately.
		
		The function reads input from the export_dir, constructs the graph data to the
		default graph and restores the parameters for the session created.
		
		Args:
		  export_dir: the directory that contains files exported by exporter.
		  target: The execution engine to connect to. See target in tf.Session()
		  config: A ConfigProto proto with configuration options. See config in
		  tf.Session()
		  meta_graph_def: optional object of type MetaGraphDef. If this object is
		  present, then it is used instead of parsing MetaGraphDef from export_dir.
		
		Returns:
		  session: a tensorflow session created from the variable files.
		  meta_graph: a meta graph proto saved in the exporter directory.
		
		Raises:
		  RuntimeError: if the required files are missing or contain unrecognizable
		  fields, i.e. the exported model is invalid.
	**/
	static public function load_session_bundle_from_path(export_dir:Dynamic, ?target:Dynamic, ?config:Dynamic, ?meta_graph_def:Dynamic):Dynamic;
	/**
		Checks if the model path contains session bundle model. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed after 2017-06-30.
		Instructions for updating:
		No longer supported. Switch to SavedModel immediately.
		
		Args:
		  export_dir: string path to model checkpoint, for example 'model/00000123'
		
		Returns:
		  true if path contains session bundle model files, ie META_GRAPH_DEF_FILENAME
	**/
	static public function maybe_session_bundle_dir(export_dir:Dynamic):Dynamic;
	static public var print_function : Dynamic;
}