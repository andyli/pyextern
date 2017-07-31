/* This file is generated, do not edit! */
package tensorflow.tensorboard.backend.event_processing.plugin_asset_util;
@:pythonImport("tensorflow.tensorboard.backend.event_processing.plugin_asset_util") extern class Plugin_asset_util_Module {
	/**
		List all the assets that are available for given plugin in a logdir.
		
		Args:
		  logdir: A directory that was created by a TensorFlow summary.FileWriter.
		  plugin_name: A string name of a plugin to list assets for.
		
		Returns:
		  A string list of available plugin assets. If the plugin subdirectory does
		  not exist (either because the logdir doesn't exist, or because the plugin
		  didn't register) an empty list is returned.
	**/
	static public function ListAssets(logdir:Dynamic, plugin_name:Dynamic):Dynamic;
	/**
		List all the plugins that have registered assets in logdir.
		
		If the plugins_dir does not exist, it returns an empty list. This maintains
		compatibility with old directories that have no plugins written.
		
		Args:
		  logdir: A directory that was created by a TensorFlow events writer.
		
		Returns:
		  a list of plugin names, as strings
	**/
	static public function ListPlugins(logdir:Dynamic):Dynamic;
	/**
		Returns the plugin directory for plugin_name.
	**/
	static public function PluginDirectory(logdir:Dynamic, plugin_name:Dynamic):Dynamic;
	/**
		Retrieve a particular plugin asset from a logdir.
		
		Args:
		  logdir: A directory that was created by a TensorFlow summary.FileWriter.
		  plugin_name: The plugin we want an asset from.
		  asset_name: The name of the requested asset.
		
		Returns:
		  string contents of the plugin asset.
		
		Raises:
		  KeyError: if the asset does not exist.
	**/
	static public function RetrieveAsset(logdir:Dynamic, plugin_name:Dynamic, asset_name:Dynamic):Dynamic;
	/**
		Helper that returns if parent/item is a directory.
	**/
	static public function _IsDirectory(parent:Dynamic, item:Dynamic):Dynamic;
	static public var _PLUGINS_DIR : Dynamic;
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
	static public var print_function : Dynamic;
}