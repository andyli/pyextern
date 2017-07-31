/* This file is generated, do not edit! */
package tensorflow.python.saved_model.builder_impl;
@:pythonImport("tensorflow.python.saved_model.builder_impl") extern class Builder_impl_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Builds an asset proto and adds it to the asset collection of the graph.
		
		Args:
		  asset_filename: The filename of the asset to be added.
		  asset_tensor: The asset tensor used to populate the tensor info of the
		      asset proto.
	**/
	static public function _add_asset_to_collection(asset_filename:Dynamic, asset_tensor:Dynamic):Dynamic;
	/**
		Returns the filepath value stored in constant `path_tensor`.
		
		Args:
		  path_tensor: Tensor of a file-path.
		
		Returns:
		  The string value i.e. path of the tensor, if valid.
		
		Raises:
		  TypeError if tensor does not match expected op type, dtype or value.
	**/
	static public function _asset_path_from_tensor(path_tensor:Dynamic):Dynamic;
	/**
		Saves assets to the meta graph.
		
		Args:
		  assets_collection_to_add: The collection where the asset paths are setup.
		
		Returns:
		  The list of filepaths to the assets in the assets collection.
		
		Raises:
		  ValueError: Indicating an invalid filepath tensor.
	**/
	static public function _maybe_save_assets(?assets_collection_to_add:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
}