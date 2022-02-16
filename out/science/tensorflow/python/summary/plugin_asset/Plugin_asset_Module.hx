/* This file is generated, do not edit! */
package tensorflow.python.summary.plugin_asset;
@:pythonImport("tensorflow.python.summary.plugin_asset") extern class Plugin_asset_Module {
	static public var _PLUGIN_ASSET_PREFIX : Dynamic;
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
		Retrieve all PluginAssets stored in the graph collection.
		
		Args:
		  graph: Optionally, the graph to get assets from. If unspecified, the default
		    graph is used.
		
		Returns:
		  A list with all PluginAsset instances in the graph.
		
		Raises:
		  ValueError: if we unexpectedly find a collection with the wrong number of
		    PluginAssets.
	**/
	static public function get_all_plugin_assets(?graph:Dynamic):Dynamic;
	/**
		Acquire singleton PluginAsset instance from a graph.
		
		PluginAssets are always singletons, and are stored in tf Graph collections.
		This way, they can be defined anywhere the graph is being constructed, and
		if the same plugin is configured at many different points, the user can always
		modify the same instance.
		
		Args:
		  plugin_asset_cls: The PluginAsset class
		  graph: (optional) The graph to retrieve the instance from. If not specified,
		    the default graph is used.
		
		Returns:
		  An instance of the plugin_asset_class
		
		Raises:
		  ValueError: If we have a plugin name collision, or if we unexpectedly find
		    the wrong number of items in a collection.
	**/
	static public function get_plugin_asset(plugin_asset_cls:Dynamic, ?graph:Dynamic):Dynamic;
	static public var print_function : Dynamic;
}