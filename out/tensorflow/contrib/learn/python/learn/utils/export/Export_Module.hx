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
		Creates default input parsing using Estimator's feature signatures. (deprecated)
		
		THIS FUNCTION IS DEPRECATED. It will be removed after 2017-03-25.
		Instructions for updating:
		Please use Estimator.export_savedmodel() instead.
	**/
	static public function _default_input_fn(estimator:Dynamic, examples:Dynamic):Dynamic;
	/**
		DEPRECATED FUNCTION
		
		THIS FUNCTION IS DEPRECATED. It will be removed after 2017-03-25.
		Instructions for updating:
		Please use Estimator.export_savedmodel() instead.
	**/
	static public function _export_estimator(estimator:Dynamic, export_dir:Dynamic, signature_fn:Dynamic, input_fn:Dynamic, default_batch_size:Dynamic, exports_to_keep:Dynamic, ?input_feature_key:Dynamic, ?use_deprecated_input_fn:Dynamic, ?prediction_key:Dynamic, ?checkpoint_path:Dynamic):Dynamic;
	/**
		Exports graph via session_bundle, by creating a Session. (deprecated)
		
		THIS FUNCTION IS DEPRECATED. It will be removed after 2017-03-25.
		Instructions for updating:
		Please use Estimator.export_savedmodel() instead.
	**/
	static public function _export_graph(graph:Dynamic, saver:Dynamic, checkpoint_path:Dynamic, export_dir:Dynamic, default_graph_signature:Dynamic, named_graph_signatures:Dynamic, exports_to_keep:Dynamic):Dynamic;
	/**
		Get first element from the collection. (deprecated)
		
		THIS FUNCTION IS DEPRECATED. It will be removed after 2017-03-25.
		Instructions for updating:
		Please use Estimator.export_savedmodel() instead.
	**/
	static public function _get_first_op_from_collection(collection_name:Dynamic):Dynamic;
	/**
		Lazy init and return saver. (deprecated)
		
		THIS FUNCTION IS DEPRECATED. It will be removed after 2017-03-25.
		Instructions for updating:
		Please use Estimator.export_savedmodel() instead.
	**/
	static public function _get_saver():Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Creates classification signature from given examples and predictions. (deprecated)
		
		THIS FUNCTION IS DEPRECATED. It will be removed after 2017-03-25.
		Instructions for updating:
		signature_fns are deprecated. For canned Estimators they are no longer needed. For custom Estimators, please return output_alternatives from your model_fn via ModelFnOps.
		
		Args:
		  examples: `Tensor`.
		  unused_features: `dict` of `Tensor`s.
		  predictions: `Tensor` or dict of tensors that contains the classes tensor
		    as in {'classes': `Tensor`}.
		
		Returns:
		  Tuple of default classification signature and empty named signatures.
		
		Raises:
		  ValueError: If examples is `None`.
	**/
	static public function classification_signature_fn(examples:Dynamic, unused_features:Dynamic, predictions:Dynamic):Dynamic;
	/**
		Classification signature from given examples and predicted probabilities. (deprecated)
		
		THIS FUNCTION IS DEPRECATED. It will be removed after 2017-03-25.
		Instructions for updating:
		signature_fns are deprecated. For canned Estimators they are no longer needed. For custom Estimators, please return output_alternatives from your model_fn via ModelFnOps.
		
		Args:
		  examples: `Tensor`.
		  unused_features: `dict` of `Tensor`s.
		  predictions: `Tensor` of predicted probabilities or dict that contains the
		    probabilities tensor as in {'probabilities', `Tensor`}.
		
		Returns:
		  Tuple of default classification signature and empty named signatures.
		
		Raises:
		  ValueError: If examples is `None`.
	**/
	static public function classification_signature_fn_with_prob(examples:Dynamic, unused_features:Dynamic, predictions:Dynamic):Dynamic;
	/**
		Decorator for marking functions or methods deprecated.
		
		This decorator logs a deprecation warning whenever the decorated function is
		called. It has the following format:
		
		  <function> (from <module>) is deprecated and will be removed after <date>.
		  Instructions for updating:
		  <instructions>
		
		If `date` is None, 'after <date>' is replaced with 'in a future version'.
		<function> will include the class name if it is a method.
		
		It also edits the docstring of the function: ' (deprecated)' is appended
		to the first line of the docstring and a deprecation notice is prepended
		to the rest of the docstring.
		
		Args:
		  date: String or None. The date the function is scheduled to be removed.
		    Must be ISO 8601 (YYYY-MM-DD), or None.
		  instructions: String. Instructions on how to update code using the
		    deprecated function.
		  warn_once: Boolean. Set to `True` to warn only the first time the decorated
		    function is called. Otherwise, every call will log a warning.
		
		Returns:
		  Decorated function or method.
		
		Raises:
		  ValueError: If date is not None or in ISO 8601 format, or instructions are
		    empty.
	**/
	static public function deprecated(date:Dynamic, instructions:Dynamic, ?warn_once:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Deprecated, please use Estimator.export_savedmodel(). (deprecated)
		
		THIS FUNCTION IS DEPRECATED. It will be removed after 2016-09-23.
		Instructions for updating:
		Please use Estimator.export_savedmodel() instead.
	**/
	static public function export_estimator(estimator:Dynamic, export_dir:Dynamic, ?signature_fn:Dynamic, ?input_fn:Dynamic, ?default_batch_size:Dynamic, ?exports_to_keep:Dynamic):Dynamic;
	/**
		Creates generic signature from given examples and predictions. (deprecated)
		
		THIS FUNCTION IS DEPRECATED. It will be removed after 2017-03-25.
		Instructions for updating:
		signature_fns are deprecated. For canned Estimators they are no longer needed. For custom Estimators, please return output_alternatives from your model_fn via ModelFnOps.
		
		This is needed for backward compatibility with default behavior of
		export_estimator.
		
		Args:
		  examples: `Tensor`.
		  unused_features: `dict` of `Tensor`s.
		  predictions: `Tensor` or `dict` of `Tensor`s.
		
		Returns:
		  Tuple of default signature and empty named signatures.
		
		Raises:
		  ValueError: If examples is `None`.
	**/
	static public function generic_signature_fn(examples:Dynamic, unused_features:Dynamic, predictions:Dynamic):Dynamic;
	/**
		Creates logistic regression signature from given examples and predictions. (deprecated)
		
		THIS FUNCTION IS DEPRECATED. It will be removed after 2017-03-25.
		Instructions for updating:
		signature_fns are deprecated. For canned Estimators they are no longer needed. For custom Estimators, please return output_alternatives from your model_fn via ModelFnOps.
		
		Args:
		  examples: `Tensor`.
		  unused_features: `dict` of `Tensor`s.
		  predictions: `Tensor` of shape [batch_size, 2] of predicted probabilities or
		    dict that contains the probabilities tensor as in
		    {'probabilities', `Tensor`}.
		
		Returns:
		  Tuple of default regression signature and named signature.
		
		Raises:
		  ValueError: If examples is `None`.
	**/
	static public function logistic_regression_signature_fn(examples:Dynamic, unused_features:Dynamic, predictions:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Creates regression signature from given examples and predictions. (deprecated)
		
		THIS FUNCTION IS DEPRECATED. It will be removed after 2017-03-25.
		Instructions for updating:
		signature_fns are deprecated. For canned Estimators they are no longer needed. For custom Estimators, please return output_alternatives from your model_fn via ModelFnOps.
		
		Args:
		  examples: `Tensor`.
		  unused_features: `dict` of `Tensor`s.
		  predictions: `Tensor`.
		
		Returns:
		  Tuple of default regression signature and empty named signatures.
		
		Raises:
		  ValueError: If examples is `None`.
	**/
	static public function regression_signature_fn(examples:Dynamic, unused_features:Dynamic, predictions:Dynamic):Dynamic;
}