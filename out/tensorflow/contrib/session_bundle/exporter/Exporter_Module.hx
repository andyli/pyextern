/* This file is generated, do not edit! */
package tensorflow.contrib.session_bundle.exporter;
@:pythonImport("tensorflow.contrib.session_bundle.exporter") extern class Exporter_Module {
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
		Creates a classification signature.
		
		Args:
		  input_tensor: Tensor specifying the input to a graph.
		  classes_tensor: Tensor specifying the output classes of a graph.
		  scores_tensor: Tensor specifying the scores of the output classes.
		
		Returns:
		  A Signature message.
	**/
	static public function classification_signature(input_tensor:Dynamic, ?classes_tensor:Dynamic, ?scores_tensor:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Creates a generic signature of name to Tensor name.
		
		Args:
		  name_tensor_map: Map from logical name to Tensor.
		
		Returns:
		  A Signature message.
	**/
	static public function generic_signature(name_tensor_map:Dynamic):Dynamic;
	/**
		Callback to copy files using `gfile.Copy` to an export directory.
		
		This method is used as the default `assets_callback` in `Exporter.init` to
		copy assets from the `assets_collection`. It can also be invoked directly to
		copy additional supplementary files into the export directory (in which case
		it is not a callback).
		
		Args:
		  files_to_copy: A dictionary that maps original file paths to desired
		    basename in the export directory.
		  export_dir_path: Directory to copy the files to.
	**/
	static public function gfile_copy_callback(files_to_copy:Dynamic, export_dir_path:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Creates a regression signature.
		
		Args:
		  input_tensor: Tensor specifying the input to a graph.
		  output_tensor: Tensor specifying the output of a graph.
		
		Returns:
		  A Signature message.
	**/
	static public function regression_signature(input_tensor:Dynamic, output_tensor:Dynamic):Dynamic;
}