/* This file is generated, do not edit! */
package tensorflow.tensorboard.backend.server;
@:pythonImport("tensorflow.tensorboard.backend.server") extern class Server_Module {
	/**
		Sets up an HTTP server for running TensorBoard.
		
		Args:
		  multiplexer: An `EventMultiplexer` that the server will query for
		    information about events.
		  host: The host name.
		  port: The port number to bind to, or 0 to pick one automatically.
		
		Returns:
		  A `BaseHTTPServer.HTTPServer`.
	**/
	static public function BuildServer(multiplexer:Dynamic, host:Dynamic, port:Dynamic):Dynamic;
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
	static public function ParseEventFilesSpec(logdir:Dynamic):Dynamic;
	/**
		Loads all runs into the multiplexer.
		
		Args:
		  multiplexer: The `EventMultiplexer` to add runs to and reload.
		  path_to_run: A dict mapping from paths to run names, where `None` as the run
		    name is interpreted as a run name equal to the path.
	**/
	static public function ReloadMultiplexer(multiplexer:Dynamic, path_to_run:Dynamic):Dynamic;
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
	static public function StartMultiplexerReloadingThread(multiplexer:Dynamic, path_to_run:Dynamic, load_interval:Dynamic):Dynamic;
	static public var TENSORBOARD_SIZE_GUIDANCE : Dynamic;
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