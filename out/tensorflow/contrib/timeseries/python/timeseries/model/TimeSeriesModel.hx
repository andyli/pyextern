/* This file is generated, do not edit! */
package tensorflow.contrib.timeseries.python.timeseries.model;
@:pythonImport("tensorflow.contrib.timeseries.python.timeseries.model", "TimeSeriesModel") extern class TimeSeriesModel {
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
	static public var __dict__ : Dynamic;
	/**
		__dir__() -> list
		default dir() implementation
	**/
	public function __dir__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var __doc__ : Dynamic;
	/**
		Return self==value.
	**/
	public function __eq__(value:Dynamic):Dynamic;
	/**
		default object formatter
	**/
	public function __format__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return self>=value.
	**/
	public function __ge__(value:Dynamic):Dynamic;
	/**
		Return getattr(self, name).
	**/
	public function __getattribute__(name:Dynamic):Dynamic;
	/**
		Return self>value.
	**/
	public function __gt__(value:Dynamic):Dynamic;
	/**
		Return hash(self).
	**/
	public function __hash__():Dynamic;
	/**
		Constructor for generative models.
		
		Args:
		  num_features: Number of features for the time series
		  exogenous_feature_columns: A list of `tf.feature_column`s (for example
		       `tf.feature_column.embedding_column`) corresponding to exogenous
		       features which provide extra information to the model but are not
		       part of the series to be predicted. Passed to
		       `tf.feature_column.input_layer`.
		  dtype: The floating point datatype to use.
	**/
	@:native("__init__")
	public function ___init__(num_features:Dynamic, ?exogenous_feature_columns:Dynamic, ?dtype:Dynamic):Dynamic;
	/**
		Constructor for generative models.
		
		Args:
		  num_features: Number of features for the time series
		  exogenous_feature_columns: A list of `tf.feature_column`s (for example
		       `tf.feature_column.embedding_column`) corresponding to exogenous
		       features which provide extra information to the model but are not
		       part of the series to be predicted. Passed to
		       `tf.feature_column.input_layer`.
		  dtype: The floating point datatype to use.
	**/
	public function new(num_features:Dynamic, ?exogenous_feature_columns:Dynamic, ?dtype:Dynamic):Void;
	/**
		This method is called when a class is subclassed.
		
		The default implementation does nothing. It may be
		overridden to extend subclasses.
	**/
	public function __init_subclass__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return self<=value.
	**/
	public function __le__(value:Dynamic):Dynamic;
	/**
		Return self<value.
	**/
	public function __lt__(value:Dynamic):Dynamic;
	/**
		Metaclass for defining Abstract Base Classes (ABCs).
		
		Use this metaclass to create an ABC.  An ABC can be subclassed
		directly, and then acts as a mix-in class.  You can also register
		unrelated concrete classes (even built-in classes) and unrelated
		ABCs as 'virtual subclasses' -- these and their descendants will
		be considered subclasses of the registering ABC by the built-in
		issubclass() function, but the registering ABC won't show up in
		their MRO (Method Resolution Order) nor will method
		implementations defined by the registering ABC be callable (not
		even via super()).
	**/
	static public function __metaclass__(name:Dynamic, bases:Dynamic, namespace:Dynamic):Dynamic;
	static public var __module__ : Dynamic;
	/**
		Return self!=value.
	**/
	public function __ne__(value:Dynamic):Dynamic;
	/**
		Create and return a new object.  See help(type) for accurate signature.
	**/
	static public function __new__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		helper for pickle
	**/
	public function __reduce__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		helper for pickle
	**/
	public function __reduce_ex__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return repr(self).
	**/
	public function __repr__():Dynamic;
	/**
		Implement setattr(self, name, value).
	**/
	public function __setattr__(name:Dynamic, value:Dynamic):Dynamic;
	/**
		__sizeof__() -> int
		size of object in memory, in bytes
	**/
	public function __sizeof__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return str(self).
	**/
	public function __str__():Dynamic;
	/**
		Abstract classes can override this to customize issubclass().
		
		This is invoked early on by abc.ABCMeta.__subclasscheck__().
		It should return True, False or NotImplemented.  If it returns
		NotImplemented, the normal algorithm is used.  Otherwise, it
		overrides the normal algorithm (and the outcome is cached).
	**/
	public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	public function _check_graph_initialized():Dynamic;
	/**
		Computes the shape of the vector returned by _process_exogenous_features.
		
		Returns:
		  The shape as a list. Does not include a batch dimension.
	**/
	public function _get_exogenous_embedding_shape():Dynamic;
	/**
		Create a single vector from exogenous features.
		
		Args:
		  times: A [batch size, window size] vector of times for this batch,
		      primarily used to check the shape information of exogenous features.
		  features: A dictionary of exogenous features corresponding to the columns
		      in self._exogenous_feature_columns. Each value should have a shape
		      prefixed by [batch size, window size].
		Returns:
		  A Tensor with shape [batch size, window size, exogenous dimension], where
		  the size of the exogenous dimension depends on the exogenous feature
		  columns passed to the model's constructor.
		Raises:
		  ValueError: If an exogenous feature has an unknown rank.
	**/
	public function _process_exogenous_features(times:Dynamic, features:Dynamic):Dynamic;
	/**
		Scale back data according to stats (model scale -> input scale).
	**/
	public function _scale_back_data(data:Dynamic):Dynamic;
	/**
		Scale back variances according to stats (model scale -> input scale).
	**/
	public function _scale_back_variance(variance:Dynamic):Dynamic;
	/**
		Scale data according to stats (input scale -> model scale).
	**/
	public function _scale_data(data:Dynamic):Dynamic;
	/**
		Scale variances according to stats (input scale -> model scale).
	**/
	public function _scale_variance(variance:Dynamic):Dynamic;
	/**
		Default loss definition with state replicated across a batch.
		
		Time series passed to this model have a batch dimension, and each series in
		a batch can be operated on in parallel. This loss definition assumes that
		each element of the batch represents an independent sample conditioned on
		the same initial state (i.e. it is simply replicated across the batch). A
		batch size of one provides sequential operations on a single time series.
		
		More complex processing may operate instead on get_start_state() and
		get_batch_loss() directly.
		
		Args:
		  features: A dictionary (such as is produced by a chunker) with at minimum
		    the following key/value pairs (others corresponding to the
		    `exogenous_feature_columns` argument to `__init__` may be included
		    representing exogenous regressors):
		    TrainEvalFeatures.TIMES: A [batch size x window size] integer Tensor
		        with times for each observation. If there is no artificial chunking,
		        the window size is simply the length of the time series.
		    TrainEvalFeatures.VALUES: A [batch size x window size x num features]
		        Tensor with values for each observation.
		  mode: The tf.estimator.ModeKeys mode to use (TRAIN, EVAL). For INFER,
		    see predict().
		Returns:
		  A ModelOutputs object.
	**/
	public function define_loss(features:Dynamic, mode:Dynamic):Dynamic;
	/**
		`tf.feature_colum`s for features which are not predicted.
	**/
	public var exogenous_feature_columns : Dynamic;
	/**
		Sample synthetic data from model parameters, with optional substitutions.
		
		Returns `number_of_series` possible sequences of future values, sampled from
		the generative model with each conditioned on the previous. Samples are
		based on trained parameters, except for those parameters explicitly
		overridden in `model_parameters`.
		
		For distributions over future observations, see predict().
		
		Args:
		  number_of_series: Number of time series to create.
		  series_length: Length of each time series.
		  model_parameters: A dictionary mapping model parameters to values, which
		      replace trained parameters when generating data.
		  seed: If specified, return deterministic time series according to this
		      value.
		Returns:
		  A dictionary with keys TrainEvalFeatures.TIMES (mapping to an array with
		  shape [number_of_series, series_length]) and TrainEvalFeatures.VALUES
		  (mapping to an array with shape [number_of_series, series_length,
		  num_features]).
	**/
	public function generate(number_of_series:Dynamic, series_length:Dynamic, ?model_parameters:Dynamic, ?seed:Dynamic):Dynamic;
	/**
		Return predictions, losses, and end state for a time series.
		
		Args:
		  features: A dictionary with times, values, and (optionally) exogenous
		      regressors. See `define_loss`.
		  mode: The tf.estimator.ModeKeys mode to use (TRAIN, EVAL, INFER).
		  state: Model-dependent state, each with size [batch size x ...]. The
		      number and type will typically be fixed by the model (for example a
		      mean and variance).
		Returns:
		  A ModelOutputs object.
	**/
	public function get_batch_loss(features:Dynamic, mode:Dynamic, state:Dynamic):Dynamic;
	/**
		Returns a tuple of state for the start of the time series.
		
		For example, a mean and covariance. State should not have a batch
		dimension, and will often be TensorFlow Variables to be learned along with
		the rest of the model parameters.
	**/
	public function get_start_state():Dynamic;
	/**
		Define ops for the model, not depending on any previously defined ops.
		
		Args:
		  input_statistics: A math_utils.InputStatistics object containing input
		      statistics. If None, data-independent defaults are used, which may
		      result in longer or unstable training.
	**/
	public function initialize_graph(?input_statistics:Dynamic):Dynamic;
	/**
		Returns predictions of future observations given an initial state.
		
		Computes distributions for future observations. For sampled draws from the
		model where each is conditioned on the previous, see generate().
		
		Args:
		  features: A dictionary with at minimum the following key/value pairs
		    (others corresponding to the `exogenous_feature_columns` argument to
		    `__init__` may be included representing exogenous regressors):
		    PredictionFeatures.TIMES: A [batch size x window size] Tensor with
		      times to make predictions for. Times must be increasing within each
		      part of the batch, and must be greater than the last time `state` was
		      updated.
		    PredictionFeatures.STATE_TUPLE: Model-dependent state, each with size
		      [batch size x ...]. The number and type will typically be fixed by the
		      model (for example a mean and variance). Typically these will be the
		      end state returned by get_batch_loss, predicting beyond that data.
		Returns:
		  A dictionary with model-dependent predictions corresponding to the
		  requested times. Keys indicate the type of prediction, and values have
		  shape [batch size x window size x ...]. For example state space models
		  return a "predicted_mean" and "predicted_covariance".
	**/
	public function predict(features:Dynamic):Dynamic;
}