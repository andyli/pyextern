/* This file is generated, do not edit! */
package tensorflow.contrib.timeseries.python.timeseries.input_pipeline;
@:pythonImport("tensorflow.contrib.timeseries.python.timeseries.input_pipeline") extern class Input_pipeline_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Do basic checking and reshaping for Numpy data.
		
		Args:
		  data: A dictionary mapping keys to Numpy arrays, with several possible
		    shapes (requires keys `TrainEvalFeatures.TIMES` and
		    `TrainEvalFeatures.VALUES`):
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
		  require_single_batch: If True, raises an error if the provided data has a
		    batch dimension > 1.
		Returns:
		  A dictionary with features normalized to have shapes prefixed with [batch
		  size x series length]. The sizes of dimensions which were omitted in the
		  inputs are 1.
		Raises:
		  ValueError: If dimensions are incorrect or do not match, or required
		    features are missing.
	**/
	static public function _canonicalize_numpy_data(data:Dynamic, require_single_batch:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	/**
		An Estimator input_fn for running predict() after evaluate().
		
		If the call to evaluate() we are making predictions based on had a batch_size
		greater than one, predictions will start after each of these windows
		(i.e. will have the same batch dimension).
		
		Args:
		  evaluation: The dictionary returned by `Estimator.evaluate`, with keys
		    FilteringResults.STATE_TUPLE and FilteringResults.TIMES.
		  steps: The number of steps to predict (scalar), starting after the
		    evaluation. If `times` is specified, `steps` must not be; one is required.
		  times: A [batch_size x window_size] array of integers (not a Tensor)
		    indicating times to make predictions for. These times must be after the
		    corresponding evaluation. If `steps` is specified, `times` must not be;
		    one is required. If the batch dimension is omitted, it is assumed to be 1.
		  exogenous_features: Optional dictionary. If specified, indicates exogenous
		    features for the model to use while making the predictions. Values must
		    have shape [batch_size x window_size x ...], where `batch_size` matches
		    the batch dimension used when creating `evaluation`, and `window_size` is
		    either the `steps` argument or the `window_size` of the `times` argument
		    (depending on which was specified).
		Returns:
		  An `input_fn` suitable for passing to the `predict` function of a time
		  series `Estimator`.
		Raises:
		  ValueError: If `times` or `steps` are misspecified.
	**/
	static public function predict_continuation_input_fn(evaluation:Dynamic, ?steps:Dynamic, ?times:Dynamic, ?exogenous_features:Dynamic):Dynamic;
	static public var print_function : Dynamic;
}