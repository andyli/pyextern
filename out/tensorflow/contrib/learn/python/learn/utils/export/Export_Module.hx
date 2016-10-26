/* This file is generated, do not edit! */
package tensorflow.contrib.learn.python.learn.utils.export;
@:pythonImport("tensorflow.contrib.learn.python.learn.utils.export") extern class Export_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Creates default input parsing using Estimator's feature signatures.
	**/
	static public function _default_input_fn(estimator:Dynamic, examples:Dynamic):Dynamic;
	/**
		Exports graph via session_bundle, by creating a Session.
	**/
	static public function _export_graph(graph:Dynamic, saver:Dynamic, checkpoint_path:Dynamic, export_dir:Dynamic, default_graph_signature:Dynamic, named_graph_signatures:Dynamic, exports_to_keep:Dynamic):Dynamic;
	/**
		Get first element from the collection.
	**/
	static public function _get_first_op_from_collection(collection_name:Dynamic):Dynamic;
	/**
		Lazy init and return saver.
	**/
	static public function _get_saver():Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Creates classification signature from given examples and predictions.
		
		Args:
		  examples: `Tensor`.
		  unused_features: `dict` of `Tensor`s.
		  predictions: `dict` of `Tensor`s.
		
		Returns:
		  Tuple of default classification signature and named signature.
	**/
	static public function classification_signature_fn(examples:Dynamic, unused_features:Dynamic, predictions:Dynamic):Dynamic;
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
	/**
		Creates generic signature from given examples and predictions.
		
		This is needed for backward compatibility with default behaviour of
		export_estimator.
		
		Args:
		  examples: `Tensor`.
		  unused_features: `dict` of `Tensor`s.
		  predictions: `dict` of `Tensor`s.
		
		Returns:
		  Tuple of default signature and named signature.
	**/
	static public function generic_signature_fn(examples:Dynamic, unused_features:Dynamic, predictions:Dynamic):Dynamic;
	/**
		Creates logistic regression signature from given examples and predictions.
		
		Args:
		  examples: `Tensor`.
		  unused_features: `dict` of `Tensor`s.
		  predictions: `dict` of `Tensor`s.
		
		Returns:
		  Tuple of default classification signature and named signature.
	**/
	static public function logistic_regression_signature_fn(examples:Dynamic, unused_features:Dynamic, predictions:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Creates regression signature from given examples and predictions.
		
		Args:
		  examples: `Tensor`.
		  unused_features: `dict` of `Tensor`s.
		  predictions: `dict` of `Tensor`s.
		
		Returns:
		  Tuple of default regression signature and named signature.
	**/
	static public function regression_signature_fn(examples:Dynamic, unused_features:Dynamic, predictions:Dynamic):Dynamic;
}