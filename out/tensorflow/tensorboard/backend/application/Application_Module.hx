/* This file is generated, do not edit! */
package tensorflow.tensorboard.backend.application;
@:pythonImport("tensorflow.tensorboard.backend.application") extern class Application_Module {
	static public var AUDIO_ROUTE : Dynamic;
	static public var COMPRESSED_HISTOGRAMS_ROUTE : Dynamic;
	static public var DATA_PREFIX : Dynamic;
	static public var DEFAULT_SIZE_GUIDANCE : Dynamic;
	static public var GRAPH_ROUTE : Dynamic;
	static public var HISTOGRAMS_ROUTE : Dynamic;
	static public var IMAGES_ROUTE : Dynamic;
	static public var INDIVIDUAL_AUDIO_ROUTE : Dynamic;
	static public var INDIVIDUAL_IMAGE_ROUTE : Dynamic;
	static public var LOGDIR_ROUTE : Dynamic;
	static public var PLUGINS_LISTING_ROUTE : Dynamic;
	static public var PLUGIN_PREFIX : Dynamic;
	static public var RUNS_ROUTE : Dynamic;
	static public var RUN_METADATA_ROUTE : Dynamic;
	static public var SCALARS_ROUTE : Dynamic;
	static public var TAB_ROUTES : Dynamic;
	static public var _DEFAULT_IMAGE_MIMETYPE : Dynamic;
	static public var _IMGHDR_TO_MIMETYPE : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _content_type_for_image(encoded_image_string:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	/**
		Read the TensorBoard TAG number, and return it or an empty string.
	**/
	static public function get_tensorboard_tag():Dynamic;
	/**
		Parses `logdir` into a map from paths to run group names.
		
		The events files flag format is a comma-separated list of path specifications.
		A path specification either looks like 'group_name:/path/to/directory' or
		'/path/to/directory'; in the latter case, the group is unnamed. Group names
		cannot start with a forward slash: /foo:bar/baz will be interpreted as a
		spec with no name and path '/foo:bar/baz'.
		
		Globs are not supported.
		
		Args:
		  logdir: A comma-separated list of run specifications.
		Returns:
		  A dict mapping directory paths to names like {'/path/to/directory': 'name'}.
		  Groups without an explicit name are named after their path. If logdir is
		  None, returns an empty dict, which is helpful for testing things that don't
		  require any valid runs.
	**/
	static public function parse_event_files_spec(logdir:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Loads all runs into the multiplexer.
		
		Args:
		  multiplexer: The `EventMultiplexer` to add runs to and reload.
		  path_to_run: A dict mapping from paths to run names, where `None` as the run
		    name is interpreted as a run name equal to the path.
	**/
	static public function reload_multiplexer(multiplexer:Dynamic, path_to_run:Dynamic):Dynamic;
	/**
		Construct a TensorBoardWSGIApp with standard plugins and multiplexer.
		
		Args:
		  logdir: The path to the directory containing events files.
		  purge_orphaned_data: Whether to purge orphaned data.
		  reload_interval: The interval at which the backend reloads more data in
		      seconds.
		  plugins: A list of plugins for TensorBoard to initialize.
		
		Returns:
		  The new TensorBoard WSGI application.
	**/
	static public function standard_tensorboard_wsgi(logdir:Dynamic, purge_orphaned_data:Dynamic, reload_interval:Dynamic, plugins:Dynamic):Dynamic;
	/**
		Starts a thread to automatically reload the given multiplexer.
		
		The thread will reload the multiplexer by calling `ReloadMultiplexer` every
		`load_interval` seconds, starting immediately.
		
		Args:
		  multiplexer: The `EventMultiplexer` to add runs to and reload.
		  path_to_run: A dict mapping from paths to run names, where `None` as the run
		    name is interpreted as a run name equal to the path.
		  load_interval: How many seconds to wait after one load before starting the
		    next load.
		
		Returns:
		  A started `threading.Thread` that reloads the multiplexer.
	**/
	static public function start_reloading_multiplexer(multiplexer:Dynamic, path_to_run:Dynamic, load_interval:Dynamic):Dynamic;
}