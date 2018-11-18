/* This file is generated, do not edit! */
package tensorflow.contrib.learn.python.learn.utils;
@:pythonImport("tensorflow.contrib.learn.python.learn.utils") extern class Utils_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __path__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Build an input_fn appropriate for serving, expecting feature Tensors. (deprecated)
		
		THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Please use tf.estimator.export.build_raw_serving_input_receiver_fn.
		
		Creates an input_fn that expects all features to be fed directly.
		This input_fn is for use at serving time, so the labels return value is always
		None.
		
		Args:
		  features: a dict of string to `Tensor`.
		  default_batch_size: the number of query examples expected per batch.
		      Leave unset for variable batch size (recommended).
		
		Returns:
		  An input_fn suitable for use in serving.
	**/
	static public function build_default_serving_input_fn(features:Dynamic, ?default_batch_size:Dynamic):Dynamic;
	/**
		Build an input_fn appropriate for serving, expecting fed tf.Examples. (deprecated)
		
		THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Please use tf.estimator.export.build_parsing_serving_input_receiver_fn.
		
		Creates an input_fn that expects a serialized tf.Example fed into a string
		placeholder.  The function parses the tf.Example according to the provided
		feature_spec, and returns all parsed Tensors as features.  This input_fn is
		for use at serving time, so the labels return value is always None.
		
		Args:
		  feature_spec: a dict of string to `VarLenFeature`/`FixedLenFeature`.
		  default_batch_size: the number of query examples expected per batch.
		      Leave unset for variable batch size (recommended).
		
		Returns:
		  An input_fn suitable for use in serving.
	**/
	static public function build_parsing_serving_input_fn(feature_spec:Dynamic, ?default_batch_size:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Deprecated, please use Estimator.export_savedmodel(). (deprecated)
		
		THIS FUNCTION IS DEPRECATED. It will be removed after 2016-09-23.
		Instructions for updating:
		Please use Estimator.export_savedmodel() instead.
	**/
	static public function export_estimator(estimator:Dynamic, export_dir:Dynamic, ?signature_fn:Dynamic, ?input_fn:Dynamic, ?default_batch_size:Dynamic, ?exports_to_keep:Dynamic):Dynamic;
	/**
		Create an ExportStrategy for use with Experiment. (deprecated)
		
		THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Switch to tf.estimator.Exporter and associated utilities.
		
		Args:
		  serving_input_fn: A function that takes no arguments and returns an
		    `InputFnOps`.
		  default_output_alternative_key: the name of the head to serve when an
		    incoming serving request does not explicitly request a specific head.
		    Must be `None` if the estimator inherits from `tf.estimator.Estimator`
		    or for single-headed models.
		  assets_extra: A dict specifying how to populate the assets.extra directory
		    within the exported SavedModel.  Each key should give the destination
		    path (including the filename) relative to the assets.extra directory.
		    The corresponding value gives the full path of the source file to be
		    copied.  For example, the simple case of copying a single file without
		    renaming it is specified as
		    `{'my_asset_file.txt': '/path/to/my_asset_file.txt'}`.
		  as_text: whether to write the SavedModel proto in text format.
		  exports_to_keep: Number of exports to keep.  Older exports will be
		    garbage-collected.  Defaults to 5.  Set to None to disable garbage
		    collection.
		  strip_default_attrs: Boolean. If True, default attrs in the
		    `GraphDef` will be stripped on write. This is recommended for better
		    forward compatibility of the resulting `SavedModel`.
		
		Returns:
		  An ExportStrategy that can be passed to the Experiment constructor.
	**/
	static public function make_export_strategy(serving_input_fn:Dynamic, ?default_output_alternative_key:Dynamic, ?assets_extra:Dynamic, ?as_text:Dynamic, ?exports_to_keep:Dynamic, ?strip_default_attrs:Dynamic):Dynamic;
	static public var print_function : Dynamic;
}