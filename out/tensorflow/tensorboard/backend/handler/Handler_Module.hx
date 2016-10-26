/* This file is generated, do not edit! */
package tensorflow.tensorboard.backend.handler;
@:pythonImport("tensorflow.tensorboard.backend.handler") extern class Handler_Module {
	static public var AUDIO_ROUTE : Dynamic;
	static public var COMPRESSED_HISTOGRAMS_ROUTE : Dynamic;
	static public var DATA_PREFIX : Dynamic;
	static public var GRAPH_ROUTE : Dynamic;
	static public var HISTOGRAMS_ROUTE : Dynamic;
	static public var IMAGES_ROUTE : Dynamic;
	static public var INDIVIDUAL_AUDIO_ROUTE : Dynamic;
	static public var INDIVIDUAL_IMAGE_ROUTE : Dynamic;
	static public var RUNS_ROUTE : Dynamic;
	static public var RUN_METADATA_ROUTE : Dynamic;
	static public var SCALARS_ROUTE : Dynamic;
	static public var TAB_ROUTES : Dynamic;
	static public var _ALLOWS_GZIP_PATTERN : Dynamic;
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
	/**
		Samples `count` values uniformly from `values`.
		
		Args:
		  values: The values to sample from.
		  count: The number of values to sample. Must be at least 2.
		
		Raises:
		  ValueError: If `count` is not at least 2.
		  TypeError: If `type(count) != int`.
		
		Returns:
		  A list of values from `values`. The first and the last element will always
		  be included. If `count > len(values)`, then all values will be returned.
	**/
	static public function _uniform_sample(values:Dynamic, count:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
}