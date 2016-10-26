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
	static public var division : Dynamic;
	/**
		Load session bundle from the given path.
		
		The function reads input from the export_dir, constructs the graph data to the
		default graph and restores the parameters for the session created.
		
		Args:
		  export_dir: the directory that contains files exported by exporter.
		  target: The execution engine to connect to. See target in tf.Session()
		  config: A ConfigProto proto with configuration options. See config in
		  tf.Session()
		
		Returns:
		  session: a tensorflow session created from the variable files.
		  meta_graph: a meta graph proto saved in the exporter directory.
		
		Raises:
		  RuntimeError: if the required files are missing or contain unrecognizable
		  fields, i.e. the exported model is invalid.
	**/
	static public function load_session_bundle_from_path(export_dir:Dynamic, ?target:Dynamic, ?config:Dynamic):Dynamic;
	static public var print_function : Dynamic;
}