/* This file is generated, do not edit! */
package tensorflow.tensorboard.plugins.projector.projector_plugin;
@:pythonImport("tensorflow.tensorboard.plugins.projector.projector_plugin") extern class Projector_plugin_Module {
	static public var BOOKMARKS_ROUTE : Dynamic;
	static public var CONFIG_ROUTE : Dynamic;
	static public var METADATA_ROUTE : Dynamic;
	static public function NewCheckpointReader(filepattern:Dynamic):Dynamic;
	static public var PROJECTOR_FILENAME : Dynamic;
	static public var RUNS_ROUTE : Dynamic;
	/**
		Construct a werkzeug Response.
		
		Responses are transmitted to the browser with compression if: a) the browser
		supports it; b) it's sane to compress the content_type in question; and c)
		the content isn't already compressed, as indicated by the content_encoding
		parameter.
		
		Browser and proxy caching is completely disabled by default. If the expires
		parameter is greater than zero then the response will be able to be cached by
		the browser for that many seconds; however, proxies are still forbidden from
		caching so that developers can bypass the cache with Ctrl+Shift+R.
		
		For textual content that isn't JSON, the encoding parameter is used as the
		transmission charset which is automatically appended to the Content-Type
		header. That is unless of course the content_type parameter contains a
		charset parameter. If the two disagree, the characters in content will be
		transcoded to the latter.
		
		If content_type declares a JSON media type, then content MAY be a dict, list,
		tuple, or set, in which case this function has an implicit composition with
		json_util.Cleanse and json.dumps. The encoding parameter is used to decode
		byte strings within the JSON object; therefore transmitting binary data
		within JSON is not permitted. JSON is transmitted as ASCII unless the
		content_type parameter explicitly defines a charset parameter, in which case
		the serialized JSON bytes will use that instead of escape sequences.
		
		Args:
		  request: A werkzeug Request object. Used mostly to check the
		    Accept-Encoding header.
		  content: Payload data as byte string, unicode string, or maybe JSON.
		  content_type: Media type and optionally an output charset.
		  code: Numeric HTTP status code to use.
		  expires: Second duration for browser caching.
		  content_encoding: Encoding if content is already encoded, e.g. 'gzip'.
		  encoding: Input charset if content parameter has byte strings.
		
		Returns:
		  A werkzeug Response object (a WSGI application).
	**/
	static public function Respond(request:Dynamic, content:Dynamic, content_type:Dynamic, ?code:Dynamic, ?expires:Dynamic, ?content_encoding:Dynamic, ?encoding:Dynamic):Dynamic;
	static public var SPRITE_IMAGE_ROUTE : Dynamic;
	static public var TENSOR_ROUTE : Dynamic;
	static public var _DEFAULT_IMAGE_MIMETYPE : Dynamic;
	static public var _IMGHDR_TO_MIMETYPE : Dynamic;
	static public var _PLUGINS_DIR : Dynamic;
	static public var _PLUGIN_NAME : Dynamic;
	static public var _PLUGIN_PREFIX_ROUTE : Dynamic;
	static public var _TENSOR_CACHE_CAPACITY : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _assets_dir_to_logdir(assets_dir:Dynamic):Dynamic;
	static public function _find_latest_checkpoint(dir_path:Dynamic):Dynamic;
	/**
		Returns true if the latest checkpoint has changed in any of the runs.
	**/
	static public function _latest_checkpoints_changed(configs:Dynamic, run_path_pairs:Dynamic):Dynamic;
	/**
		Constructs a sprite image from thumbnails and returns the png bytes.
	**/
	static public function _make_sprite_image(thumbnails:Dynamic, thumbnail_dim:Dynamic):Dynamic;
	/**
		Parses and asserts a positive (>0) integer query parameter.
		
		Args:
		  request: The Werkzeug Request object
		  param_name: Name of the parameter.
		
		Returns:
		  Param, or None, or -1 if parameter is not a positive integer.
	**/
	static public function _parse_positive_int_param(request:Dynamic, param_name:Dynamic):Dynamic;
	static public function _read_tensor_tsv_file(fpath:Dynamic):Dynamic;
	static public function _rel_to_abs_asset_path(fpath:Dynamic, config_fpath:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Checks whether a V1 or V2 checkpoint exists with the specified prefix.
		
		This is the recommended way to check if a checkpoint exists, since it takes
		into account the naming difference between V1 and V2 formats.
		
		Args:
		  checkpoint_prefix: the prefix of a V1 or V2 checkpoint, with V2 taking
		    priority.  Typically the result of `Saver.save()` or that of
		    `tf.train.latest_checkpoint()`, regardless of sharded/non-sharded or
		    V1/V2.
		Returns:
		  A bool, true iff a checkpoint referred to by `checkpoint_prefix` exists.
	**/
	static public function checkpoint_exists(checkpoint_prefix:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Finds the filename of latest saved checkpoint file.
		
		Args:
		  checkpoint_dir: Directory where the variables were saved.
		  latest_filename: Optional name for the protocol buffer file that
		    contains the list of most recent checkpoint filenames.
		    See the corresponding argument to `Saver.save()`.
		
		Returns:
		  The full path to the latest checkpoint or `None` if no checkpoint was found.
	**/
	static public function latest_checkpoint(checkpoint_dir:Dynamic, ?latest_filename:Dynamic):Dynamic;
	static public var print_function : Dynamic;
}