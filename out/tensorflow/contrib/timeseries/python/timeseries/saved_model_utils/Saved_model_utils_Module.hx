/* This file is generated, do not edit! */
package tensorflow.contrib.timeseries.python.timeseries.saved_model_utils;
@:pythonImport("tensorflow.contrib.timeseries.python.timeseries.saved_model_utils") extern class Saved_model_utils_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Uses a saved model signature to construct feed and fetch dictionaries.
	**/
	static public function _colate_features_to_feeds_and_fetches(signature:Dynamic, features:Dynamic, graph:Dynamic, ?continue_from:Dynamic):Dynamic;
	/**
		Perform filtering using an exported saved model.
		
		Filtering refers to updating model state based on new observations.
		Predictions based on the returned model state will be conditioned on these
		observations.
		
		Starts from the model's default/uninformed state.
		
		Args:
		  signatures: The `MetaGraphDef` protocol buffer returned from
		    `tf.saved_model.loader.load`. Used to determine the names of Tensors to
		    feed and fetch. Must be from the same model as `continue_from`.
		  session: The session to use. The session's graph must be the one into which
		    `tf.saved_model.loader.load` loaded the model.
		  features: A dictionary mapping keys to Numpy arrays, with several possible
		    shapes (requires keys `FilteringFeatures.TIMES` and
		    `FilteringFeatures.VALUES`):
		      Single example; `TIMES` is a scalar and `VALUES` is either a scalar or a
		        vector of length [number of features].
		      Sequence; `TIMES` is a vector of shape [series length], `VALUES` either
		        has shape [series length] (univariate) or [series length x number of
		        features] (multivariate).
		      Batch of sequences; `TIMES` is a vector of shape [batch size x series
		        length], `VALUES` has shape [batch size x series length] or [batch
		        size x series length x number of features].
		    In any case, `VALUES` and any exogenous features must have their shapes
		    prefixed by the shape of the value corresponding to the `TIMES` key.
		Returns:
		  A dictionary containing model state updated to account for the observations
		  in `features`.
	**/
	static public function cold_start_filter(signatures:Dynamic, session:Dynamic, features:Dynamic):Dynamic;
	/**
		Perform filtering using an exported saved model.
		
		Filtering refers to updating model state based on new observations.
		Predictions based on the returned model state will be conditioned on these
		observations.
		
		Args:
		  continue_from: A dictionary containing the results of either an Estimator's
		    evaluate method or a previous filter step (cold start or
		    continuation). Used to determine the model state to start filtering from.
		  signatures: The `MetaGraphDef` protocol buffer returned from
		    `tf.saved_model.loader.load`. Used to determine the names of Tensors to
		    feed and fetch. Must be from the same model as `continue_from`.
		  session: The session to use. The session's graph must be the one into which
		    `tf.saved_model.loader.load` loaded the model.
		  features: A dictionary mapping keys to Numpy arrays, with several possible
		    shapes (requires keys `FilteringFeatures.TIMES` and
		    `FilteringFeatures.VALUES`):
		      Single example; `TIMES` is a scalar and `VALUES` is either a scalar or a
		        vector of length [number of features].
		      Sequence; `TIMES` is a vector of shape [series length], `VALUES` either
		        has shape [series length] (univariate) or [series length x number of
		        features] (multivariate).
		      Batch of sequences; `TIMES` is a vector of shape [batch size x series
		        length], `VALUES` has shape [batch size x series length] or [batch
		        size x series length x number of features].
		    In any case, `VALUES` and any exogenous features must have their shapes
		    prefixed by the shape of the value corresponding to the `TIMES` key.
		Returns:
		  A dictionary containing model state updated to account for the observations
		  in `features`.
	**/
	static public function filter_continuation(continue_from:Dynamic, signatures:Dynamic, session:Dynamic, features:Dynamic):Dynamic;
	/**
		Perform prediction using an exported saved model.
		
		Analogous to _input_pipeline.predict_continuation_input_fn, but operates on a
		saved model rather than feeding into Estimator's predict method.
		
		Args:
		  continue_from: A dictionary containing the results of either an Estimator's
		    evaluate method or filter_continuation. Used to determine the model
		    state to make predictions starting from.
		  signatures: The `MetaGraphDef` protocol buffer returned from
		    `tf.saved_model.loader.load`. Used to determine the names of Tensors to
		    feed and fetch. Must be from the same model as `continue_from`.
		  session: The session to use. The session's graph must be the one into which
		    `tf.saved_model.loader.load` loaded the model.
		  steps: The number of steps to predict (scalar), starting after the
		    evaluation or filtering. If `times` is specified, `steps` must not be; one
		    is required.
		  times: A [batch_size x window_size] array of integers (not a Tensor)
		    indicating times to make predictions for. These times must be after the
		    corresponding evaluation or filtering. If `steps` is specified, `times`
		    must not be; one is required. If the batch dimension is omitted, it is
		    assumed to be 1.
		  exogenous_features: Optional dictionary. If specified, indicates exogenous
		    features for the model to use while making the predictions. Values must
		    have shape [batch_size x window_size x ...], where `batch_size` matches
		    the batch dimension used when creating `continue_from`, and `window_size`
		    is either the `steps` argument or the `window_size` of the `times`
		    argument (depending on which was specified).
		Returns:
		  A dictionary with model-specific predictions (typically having keys "mean"
		  and "covariance") and a feature_keys.PredictionResults.TIMES key indicating
		  the times for which the predictions were computed.
		Raises:
		  ValueError: If `times` or `steps` are misspecified.
	**/
	static public function predict_continuation(continue_from:Dynamic, signatures:Dynamic, session:Dynamic, ?steps:Dynamic, ?times:Dynamic, ?exogenous_features:Dynamic):Dynamic;
}