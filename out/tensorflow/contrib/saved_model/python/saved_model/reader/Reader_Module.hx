/* This file is generated, do not edit! */
package tensorflow.contrib.saved_model.python.saved_model.reader;
@:pythonImport("tensorflow.contrib.saved_model.python.saved_model.reader") extern class Reader_Module {
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
		Retrieves all the tag-sets available in the SavedModel.
		
		Args:
		  saved_model_dir: Directory containing the SavedModel.
		
		Returns:
		  String representation of all tag-sets in the SavedModel.
	**/
	static public function get_saved_model_tag_sets(saved_model_dir:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Reads the savedmodel.pb or savedmodel.pbtxt file containing `SavedModel`.
		
		Args:
		  saved_model_dir: Directory containing the SavedModel file.
		
		Returns:
		  A `SavedModel` protocol buffer.
		
		Raises:
		  IOError: If the file does not exist, or cannot be successfully parsed.
	**/
	static public function read_saved_model(saved_model_dir:Dynamic):Dynamic;
}