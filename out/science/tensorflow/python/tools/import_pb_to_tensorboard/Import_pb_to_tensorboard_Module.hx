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
	static public var division : Dynamic;
	/**
		View an SavedModel as a graph in Tensorboard.
		
		Args:
		  model_dir: The directory containing the SavedModel to import.
		  log_dir: The location for the Tensorboard log to begin visualization from.
		  tag_set: Group of tag(s) of the MetaGraphDef to load, in string format,
		    separated by ','. For tag-set contains multiple tags, all tags must be
		    passed in.
		Usage: Call this function with your SavedModel location and desired log
		  directory. Launch Tensorboard by pointing it to the log directory. View your
		  imported SavedModel as a graph.
	**/
	static public function import_to_tensorboard(model_dir:Dynamic, log_dir:Dynamic, tag_set:Dynamic):Dynamic;
	static public function main(_:Dynamic):Dynamic;
	static public var print_function : Dynamic;
}