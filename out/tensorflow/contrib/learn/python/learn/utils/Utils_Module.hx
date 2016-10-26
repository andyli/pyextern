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
	static public var division : Dynamic;
	/**
		Exports inference graph into given dir.
		
		Args:
		  estimator: Estimator to export
		  export_dir: A string containing a directory to write the exported graph
		    and checkpoints.
		  signature_fn: Function that given `Tensor` of `Example` strings,
		    `dict` of `Tensor`s for features and `dict` of `Tensor`s for predictions
		  input_fn: Function that given `Tensor` of `Example` strings, parses it into
		    features that are then passed to the model.
		    and returns default and named exporting signatures.
		  default_batch_size: Default batch size of the `Example` placeholder.
		  exports_to_keep: Number of exports to keep.
	**/
	static public function export_estimator(estimator:Dynamic, export_dir:Dynamic, ?signature_fn:Dynamic, ?input_fn:Dynamic, ?default_batch_size:Dynamic, ?exports_to_keep:Dynamic):Dynamic;
	static public var print_function : Dynamic;
}