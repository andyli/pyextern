/* This file is generated, do not edit! */
package tensorflow.python.tools.saved_model_utils;
@:pythonImport("tensorflow.python.tools.saved_model_utils") extern class Saved_model_utils_Module {
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
		Gets MetaGraphDef from SavedModel.
		
		Returns the MetaGraphDef for the given tag-set and SavedModel directory.
		
		Args:
		  saved_model_dir: Directory containing the SavedModel to inspect.
		  tag_set: Group of tag(s) of the MetaGraphDef to load, in string format,
		      separated by ','. The empty string tag is ignored so that passing ''
		      means the empty tag set. For tag-set contains multiple tags, all tags
		      must be passed in.
		
		Raises:
		  RuntimeError: An error when the given tag-set does not exist in the
		      SavedModel.
		
		Returns:
		  A MetaGraphDef corresponding to the tag-set.
	**/
	static public function get_meta_graph_def(saved_model_dir:Dynamic, tag_set:Dynamic):Dynamic;
	/**
		Retrieves all the tag-sets available in the SavedModel.
		
		Args:
		  saved_model_dir: Directory containing the SavedModel.
		
		Returns:
		  List of all tag-sets in the SavedModel, where a tag-set is represented as a
		  list of strings.
	**/
	static public function get_saved_model_tag_sets(saved_model_dir:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Reads the saved_model.pb or saved_model.pbtxt file containing `SavedModel`.
		
		Args:
		  saved_model_dir: Directory containing the SavedModel file.
		
		Returns:
		  A `SavedModel` protocol buffer.
		
		Raises:
		  IOError: If the file does not exist, or cannot be successfully parsed.
	**/
	static public function read_saved_model(saved_model_dir:Dynamic):Dynamic;
}