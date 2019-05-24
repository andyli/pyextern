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
		Builds an asset proto and adds it to the meta graph def.
		
		Args:
		  meta_graph_def: The meta graph def to which the asset will be added.
		  asset_filename: The filename of the asset to be added.
		  asset_tensor: The asset tensor used to populate the tensor info of the asset
		    proto.
	**/
	static public function _add_asset_to_metagraph(meta_graph_def:Dynamic, asset_filename:Dynamic, asset_tensor:Dynamic):Dynamic;
	static public function _add_op_to_signature_def_map(signature_def_map:Dynamic, op:Dynamic, key:Dynamic):Dynamic;
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
	static public function _get_unique_asset_filename(asset_filename:Dynamic, asset_filename_map:Dynamic):Dynamic;
	/**
		Saves assets to the meta graph.
		
		Args:
		  write_fn: A function callback that writes asset into meta graph.
		  assets_to_add: The list where the asset paths are setup.
		
		Returns:
		  A dict of asset basenames for saving to the original full path to the asset.
		
		Raises:
		  ValueError: Indicating an invalid filepath tensor.
	**/
	static public function _maybe_save_assets(write_fn:Dynamic, ?assets_to_add:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Copy all assets from source path to destination path.
	**/
	static public function copy_assets_to_destination_dir(asset_filename_map:Dynamic, destination_dir:Dynamic):Dynamic;
	/**
		Decorator for marking specific function arguments as deprecated.
		
		This decorator logs a deprecation warning whenever the decorated function is
		called with the deprecated argument. It has the following format:
		
		  Calling <function> (from <module>) with <arg> is deprecated and will be
		  removed after <date>. Instructions for updating:
		    <instructions>
		
		If `date` is None, 'after <date>' is replaced with 'in a future version'.
		<function> includes the class name if it is a method.
		
		It also edits the docstring of the function: ' (deprecated arguments)' is
		appended to the first line of the docstring and a deprecation notice is
		prepended to the rest of the docstring.
		
		Args:
		  date: String or None. The date the function is scheduled to be removed.
		    Must be ISO 8601 (YYYY-MM-DD), or None.
		  instructions: String. Instructions on how to update code using the
		    deprecated function.
		  *deprecated_arg_names_or_tuples: String or 2-Tuple(String,
		    [ok_vals]).  The string is the deprecated argument name.
		    Optionally, an ok-value may be provided.  If the user provided
		    argument equals this value, the warning is suppressed.
		  **kwargs: If `warn_once=False` is passed, every call with a deprecated
		    argument will log a warning. The default behavior is to only warn the
		    first time the function is called with any given deprecated argument.
		    All other kwargs raise `ValueError`.
		
		Returns:
		  Decorated function or method.
		
		Raises:
		  ValueError: If date is not None or in ISO 8601 format, instructions are
		    empty, the deprecated arguments are not present in the function
		    signature, the second element of a deprecated_tuple is not a
		    list, or if a kwarg other than `warn_once` is passed.
	**/
	static public function deprecated_args(date:Dynamic, instructions:Dynamic, ?deprecated_arg_names_or_tuples:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var division : Dynamic;
	/**
		Get a unique basename to add to the SavedModel if this file is unseen.
		
		Assets come from users as full paths, and we save them out to the
		SavedModel as basenames. In some cases, the basenames collide. Here,
		we dedupe asset basenames by first checking if the file is the same,
		and, if different, generate and return an index-suffixed basename
		that can be used to add the asset to the SavedModel.
		
		Args:
		  asset_filepath: the full path to the asset that is being saved
		  asset_filename_map: a dict of filenames used for saving the asset in
		    the SavedModel to full paths from which the filenames were derived.
		
		Returns:
		  Uniquified filename string if the file is not a duplicate, or the original
		  filename if the file has already been seen and saved.
	**/
	static public function get_asset_filename_to_add(asset_filepath:Dynamic, asset_filename_map:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}