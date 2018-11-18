/* This file is generated, do not edit! */
package tensorflow.contrib.timeseries.python.timeseries.ar_model;
@:pythonImport("tensorflow.contrib.timeseries.python.timeseries.ar_model", "ARModel") extern class ARModel {
	static public var NORMAL_LIKELIHOOD_LOSS : Dynamic;
	static public var SQUARED_LOSS : Dynamic;
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
		Constructs an auto-regressive model.
		
		Args:
		  periodicities: periodicities of the input data, in the same units as the
		    time feature (for example 24 if feeding hourly data with a daily
		    periodicity, or 60 * 24 if feeding minute-level data with daily
		    periodicity). Note this can be a single value or a list of values for
		    multiple periodicities.
		  input_window_size: Number of past time steps of data to look at when doing
		    the regression.
		  output_window_size: Number of future time steps to predict. Note that
		    setting it to > 1 empirically seems to give a better fit.
		  num_features: number of input features per time step.
		  prediction_model_factory: A callable taking arguments `num_features`,
		    `input_window_size`, and `output_window_size` and returning a
		    `tf.keras.Model`. The `Model`'s `call()` takes two arguments: an input
		    window and an output window, and returns a dictionary of predictions.
		    See `FlatPredictionModel` for an example. Example usage:
		
		    ```python model = ar_model.ARModel( periodicities=2, num_features=3,
		    prediction_model_factory=functools.partial( FlatPredictionModel,
		    hidden_layer_sizes=[10, 10])) ```
		
		    The default model computes predictions as a linear function of flattened
		    input and output windows.
		  num_time_buckets: Number of buckets into which to divide (time %
		    periodicity). This value multiplied by the number of periodicities is
		    the number of time features added to the model.
		  loss: Loss function to use for training. Currently supported values are
		    SQUARED_LOSS and NORMAL_LIKELIHOOD_LOSS. Note that for
		    NORMAL_LIKELIHOOD_LOSS, we train the covariance term as well. For
		    SQUARED_LOSS, the evaluation loss is reported based on un-scaled
		    observations and predictions, while the training loss is computed on
		    normalized data (if input statistics are available).
		  exogenous_feature_columns: A list of `tf.feature_column`s (for example
		    `tf.feature_column.embedding_column`) corresponding to
		    features which provide extra information to the model but are not part
		    of the series to be predicted.
	**/
	@:native("__init__")
	public function ___init__(periodicities:Dynamic, input_window_size:Dynamic, output_window_size:Dynamic, num_features:Dynamic, ?prediction_model_factory:Dynamic, ?num_time_buckets:Dynamic, ?loss:Dynamic, ?exogenous_feature_columns:Dynamic):Dynamic;
	/**
		Constructs an auto-regressive model.
		
		Args:
		  periodicities: periodicities of the input data, in the same units as the
		    time feature (for example 24 if feeding hourly data with a daily
		    periodicity, or 60 * 24 if feeding minute-level data with daily
		    periodicity). Note this can be a single value or a list of values for
		    multiple periodicities.
		  input_window_size: Number of past time steps of data to look at when doing
		    the regression.
		  output_window_size: Number of future time steps to predict. Note that
		    setting it to > 1 empirically seems to give a better fit.
		  num_features: number of input features per time step.
		  prediction_model_factory: A callable taking arguments `num_features`,
		    `input_window_size`, and `output_window_size` and returning a
		    `tf.keras.Model`. The `Model`'s `call()` takes two arguments: an input
		    window and an output window, and returns a dictionary of predictions.
		    See `FlatPredictionModel` for an example. Example usage:
		
		    ```python model = ar_model.ARModel( periodicities=2, num_features=3,
		    prediction_model_factory=functools.partial( FlatPredictionModel,
		    hidden_layer_sizes=[10, 10])) ```
		
		    The default model computes predictions as a linear function of flattened
		    input and output windows.
		  num_time_buckets: Number of buckets into which to divide (time %
		    periodicity). This value multiplied by the number of periodicities is
		    the number of time features added to the model.
		  loss: Loss function to use for training. Currently supported values are
		    SQUARED_LOSS and NORMAL_LIKELIHOOD_LOSS. Note that for
		    NORMAL_LIKELIHOOD_LOSS, we train the covariance term as well. For
		    SQUARED_LOSS, the evaluation loss is reported based on un-scaled
		    observations and predictions, while the training loss is computed on
		    normalized data (if input statistics are available).
		  exogenous_feature_columns: A list of `tf.feature_column`s (for example
		    `tf.feature_column.embedding_column`) corresponding to
		    features which provide extra information to the model but are not part
		    of the series to be predicted.
	**/
	public function new(periodicities:Dynamic, input_window_size:Dynamic, output_window_size:Dynamic, num_features:Dynamic, ?prediction_model_factory:Dynamic, ?num_time_buckets:Dynamic, ?loss:Dynamic, ?exogenous_feature_columns:Dynamic):Void;
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
		Compute some features on the time value.
	**/
	public function _compute_time_features(time:Dynamic):Dynamic;
	/**
		Computes the shape of the vector returned by _process_exogenous_features.
		
		Returns:
		  The shape as a list. Does not include a batch dimension.
	**/
	public function _get_exogenous_embedding_shape():Dynamic;
	public function _output_window_predictions(input_window_features:Dynamic, output_window_features:Dynamic):Dynamic;
	public function _predicted_covariance_op(activations:Dynamic, num_values:Dynamic):Dynamic;
	public function _predicted_mean_op(activations:Dynamic):Dynamic;
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
		Compute model outputs on a single window of data.
	**/
	public function _process_window(features:Dynamic, mode:Dynamic, exogenous_regressors:Dynamic):Dynamic;
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
		Computes predictions and a loss.
		
		Args:
		  features: A dictionary (such as is produced by a chunker) with the
		    following key/value pairs (shapes are given as required for training):
		      TrainEvalFeatures.TIMES: A [batch size, self.window_size] integer
		        Tensor with times for each observation. To train on longer
		        sequences, the data should first be chunked.
		      TrainEvalFeatures.VALUES: A [batch size, self.window_size,
		        self.num_features] Tensor with values for each observation.
		    When evaluating, `TIMES` and `VALUES` must have a window size of at
		    least self.window_size, but it may be longer, in which case the last
		    window_size - self.input_window_size times (or fewer if this is not
		    divisible by self.output_window_size) will be evaluated on with
		    non-overlapping output windows (and will have associated
		    predictions). This is primarily to support qualitative
		    evaluation/plotting, and is not a recommended way to compute evaluation
		    losses (since there is no overlap in the output windows, which for
		    window-based models is an undesirable bias).
		  mode: The tf.estimator.ModeKeys mode to use (TRAIN or EVAL).
		  state: Unused
		Returns:
		  A model.ModelOutputs object.
		Raises:
		  ValueError: If `mode` is not TRAIN or EVAL, or if static shape information
		  is incorrect.
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
		Create loss_op.
	**/
	public function loss_op(targets:Dynamic, prediction_ops:Dynamic):Dynamic;
	/**
		Computes predictions multiple steps into the future.
		
		Args:
		  features: A dictionary with the following key/value pairs:
		    PredictionFeatures.TIMES: A [batch size, predict window size]
		      integer Tensor of times, after the window of data indicated by
		      `STATE_TUPLE`, to make predictions for.
		    PredictionFeatures.STATE_TUPLE: A tuple of (times, values), times with
		      shape [batch size, self.input_window_size], values with shape [batch
		      size, self.input_window_size, self.num_features] representing a
		      segment of the time series before `TIMES`. This data is used
		      to start of the autoregressive computation. This should have data for
		      at least self.input_window_size timesteps.
		    And any exogenous features, with shapes prefixed by shape of `TIMES`.
		Returns:
		  A dictionary with keys, "mean", "covariance". The
		  values are Tensors of shape [batch_size, predict window size,
		  num_features] and correspond to the values passed in `TIMES`.
	**/
	public function predict(features:Dynamic):Dynamic;
	/**
		Compute model predictions given input data.
		
		Args:
		  times: A [batch size, self.window_size] integer Tensor, the first
		      self.input_window_size times in each part of the batch indicating
		      input features, and the last self.output_window_size times indicating
		      prediction times.
		  values: A [batch size, self.input_window_size, self.num_features] Tensor
		      with input features.
		  exogenous_regressors: A [batch size, self.window_size,
		      self.exogenous_size] Tensor with exogenous features.
		Returns:
		  Tuple (predicted_mean, predicted_covariance), where each element is a
		  Tensor with shape [batch size, self.output_window_size,
		  self.num_features].
	**/
	public function prediction_ops(times:Dynamic, values:Dynamic, exogenous_regressors:Dynamic):Dynamic;
	public function random_model_parameters(?seed:Dynamic):Dynamic;
}