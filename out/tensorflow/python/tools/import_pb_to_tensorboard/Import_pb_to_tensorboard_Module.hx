/* This file is generated, do not edit! */
package tensorflow.python.tools.import_pb_to_tensorboard;
@:pythonImport("tensorflow.python.tools.import_pb_to_tensorboard") extern class Import_pb_to_tensorboard_Module {
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
		Decorator for marking endpoints deprecated.
		
		This decorator does not print deprecation messages.
		TODO(annarev): eventually start printing deprecation warnings when
		@deprecation_endpoints decorator is added.
		
		Args:
		  *args: Deprecated endpoint names.
		
		Returns:
		  A function that takes symbol as an argument and adds
		  _tf_deprecated_api_names to that symbol.
		  _tf_deprecated_api_names would be set to a list of deprecated
		  endpoint names for the symbol.
	**/
	static public function deprecated_endpoints(?args:python.VarArgs<Dynamic>):Dynamic;
	static public var division : Dynamic;
	/**
		View an imported protobuf model (`.pb` file) as a graph in Tensorboard.
		
		Args:
		  model_dir: The location of the protobuf (`pb`) model to visualize
		  log_dir: The location for the Tensorboard log to begin visualization from.
		
		Usage:
		  Call this function with your model location and desired log directory.
		  Launch Tensorboard by pointing it to the log directory.
		  View your imported `.pb` model as a graph.
	**/
	static public function import_to_tensorboard(model_dir:Dynamic, log_dir:Dynamic):Dynamic;
	static public function main(unused_args:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}