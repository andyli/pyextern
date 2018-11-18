/* This file is generated, do not edit! */
package tensorflow.contrib.timeseries.python.timeseries.model;
@:pythonImport("tensorflow.contrib.timeseries.python.timeseries.model", "SequentialTimeSeriesModel") extern class SequentialTimeSeriesModel {
	/**
		An interface for Python lists that is similar to TensorArray.
		
		Used for easy switching between static and dynamic looping.
	**/
	static public function _FakeTensorArray():Dynamic;
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
		Initialize a SequentialTimeSeriesModel.
		
		Args:
		  train_output_names: A list of products/predictions returned from
		      _filtering_step.
		  predict_output_names: A list of products/predictions returned from
		      _prediction_step.
		  num_features: Number of features for the time series
		  normalize_features: Boolean. If True, `values` are passed normalized to
		      the model (via self._scale_data). Scaling is done for the whole window
		      as a batch, which is slightly more efficient than scaling inside the
		      window loop. The model must then define _scale_back_predictions, which
		      may use _scale_back_data or _scale_back_variance to return predictions
		      to the input scale.
		  dtype: The floating point datatype to use.
		  exogenous_feature_columns: A list of `tf.feature_column`s objects. See
		      `TimeSeriesModel`.
		  exogenous_update_condition: A function taking two Tensor arguments `times`
		      (shape [batch size]) and `features` (a dictionary mapping exogenous
		      feature keys to Tensors with shapes [batch size, ...]) and returning a
		      boolean Tensor with shape [batch size] indicating whether state should
		      be updated using exogenous features for each part of the batch. Where
		      it is False, no exogenous update is performed. If None (default),
		      exogenous updates are always performed. Useful for avoiding "leaky"
		      frequent exogenous updates when sparse updates are desired. Called
		      only during graph construction.
		  static_unrolling_window_size_threshold: Controls whether a `tf.while_loop`
		      is used when looping over a window of data. If
		      `static_unrolling_window_size_threshold` is None, a `tf.while_loop` is
		      always used. Otherwise it must be an integer, and the graph is
		      replicated for each step taken whenever the window size is less than
		      or equal to this value (if the window size is available in the static
		      shape information of the TrainEvalFeatures.TIMES feature). Static
		      unrolling generally decreases the per-step time for small window/batch
		      sizes, but increases graph construction time.
	**/
	@:native("__init__")
	public function ___init__(train_output_names:Dynamic, predict_output_names:Dynamic, num_features:Dynamic, ?normalize_features:Dynamic, ?dtype:Dynamic, ?exogenous_feature_columns:Dynamic, ?exogenous_update_condition:Dynamic, ?static_unrolling_window_size_threshold:Dynamic):Dynamic;
	/**
		Initialize a SequentialTimeSeriesModel.
		
		Args:
		  train_output_names: A list of products/predictions returned from
		      _filtering_step.
		  predict_output_names: A list of products/predictions returned from
		      _prediction_step.
		  num_features: Number of features for the time series
		  normalize_features: Boolean. If True, `values` are passed normalized to
		      the model (via self._scale_data). Scaling is done for the whole window
		      as a batch, which is slightly more efficient than scaling inside the
		      window loop. The model must then define _scale_back_predictions, which
		      may use _scale_back_data or _scale_back_variance to return predictions
		      to the input scale.
		  dtype: The floating point datatype to use.
		  exogenous_feature_columns: A list of `tf.feature_column`s objects. See
		      `TimeSeriesModel`.
		  exogenous_update_condition: A function taking two Tensor arguments `times`
		      (shape [batch size]) and `features` (a dictionary mapping exogenous
		      feature keys to Tensors with shapes [batch size, ...]) and returning a
		      boolean Tensor with shape [batch size] indicating whether state should
		      be updated using exogenous features for each part of the batch. Where
		      it is False, no exogenous update is performed. If None (default),
		      exogenous updates are always performed. Useful for avoiding "leaky"
		      frequent exogenous updates when sparse updates are desired. Called
		      only during graph construction.
		  static_unrolling_window_size_threshold: Controls whether a `tf.while_loop`
		      is used when looping over a window of data. If
		      `static_unrolling_window_size_threshold` is None, a `tf.while_loop` is
		      always used. Otherwise it must be an integer, and the graph is
		      replicated for each step taken whenever the window size is less than
		      or equal to this value (if the window size is available in the static
		      shape information of the TrainEvalFeatures.TIMES feature). Static
		      unrolling generally decreases the per-step time for small window/batch
		      sizes, but increases graph construction time.
	**/
	public function new(train_output_names:Dynamic, predict_output_names:Dynamic, num_features:Dynamic, ?normalize_features:Dynamic, ?dtype:Dynamic, ?exogenous_feature_columns:Dynamic, ?exogenous_update_condition:Dynamic, ?static_unrolling_window_size_threshold:Dynamic):Void;
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
	/**
		Performs a conditional state update based on exogenous features.
	**/
	public function _apply_exogenous_update(current_times:Dynamic, step_number:Dynamic, state:Dynamic, raw_features:Dynamic, embedded_exogenous_regressors:Dynamic):Dynamic;
	public function _check_graph_initialized():Dynamic;
	/**
		Update state to account for exogenous regressors.
		
		Args:
		  current_times: A [batch size] Tensor of times for the exogenous values
		      being input.
		  current_exogenous_regressors: A [batch size x exogenous input dimension]
		      Tensor of exogenous values for each part of the batch.
		  state: Model state, a possibly nested list of Tensors, each with shape
		      [batch size x ...].
		Returns:
		  Updated model state, structure and shapes matching the `state` argument.
	**/
	public function _exogenous_input_step(current_times:Dynamic, current_exogenous_regressors:Dynamic, state:Dynamic):Dynamic;
	/**
		Compute a single-step loss for a batch of data.
		
		Args:
		  current_times: A [batch size] Tensor of times for each observation.
		  current_values: A [batch size] Tensor of values for each observation.
		  state: Model state, updated to current_times.
		  predictions: The outputs of _prediction_step
		Returns:
		  A tuple of (updated state, outputs):
		    updated state: Model state taking current_values into account.
		    outputs: A dictionary of Tensors with keys corresponding to
		        self._train_output_names, plus a special "loss" key. The value
		        corresponding to "loss" is minimized during training. Other outputs
		        may include one-step-ahead predictions, for example a predicted
		        location and scale.
	**/
	public function _filtering_step(current_times:Dynamic, current_values:Dynamic, state:Dynamic, predictions:Dynamic):Dynamic;
	/**
		Computes the shape of the vector returned by _process_exogenous_features.
		
		Returns:
		  The shape as a list. Does not include a batch dimension.
	**/
	public function _get_exogenous_embedding_shape():Dynamic;
	/**
		Update model state across missing values.
		
		Called to prepare model state for _filtering_step and _prediction_step.
		
		Args:
		  current_times: A [batch size] Tensor; state will be imputed up to, but not
		      including, these timesteps.
		  state: The pre-imputation model state, Tensors with shape [batch size x
		      ...].
		Returns:
		  Updated/imputed model state, corresponding to `state`.
	**/
	public function _imputation_step(current_times:Dynamic, state:Dynamic):Dynamic;
	/**
		Additions to per-observation normalized loss, e.g. regularization.
		
		Args:
		  times: A [batch size x window size] Tensor with times for each
		      observation.
		  values: A [batch size x window size x num features] Tensor with values for
		      each observation.
		  mode: The tf.estimator.ModeKeys mode to use (TRAIN, EVAL, INFER).
		Returns:
		  A scalar value to add to the per-observation normalized loss.
	**/
	public function _loss_additions(times:Dynamic, values:Dynamic, mode:Dynamic):Dynamic;
	/**
		Compute a batch of single-step predictions.
		
		Args:
		  current_times: A [batch size] Tensor of times for each observation.
		  state: Model state, imputed to one step before current_times.
		Returns:
		  A tuple of (updated state, outputs):
		    updated state: Model state updated to current_times.
		    outputs: A dictionary of Tensors with keys corresponding to
		        self._predict_output_names.
	**/
	public function _prediction_step(current_times:Dynamic, state:Dynamic):Dynamic;
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
		Return a window of predictions to input scale.
		
		Args:
		  predictions: A dictionary mapping from prediction names to Tensors.
		Returns:
		  A dictionary with values corrected for input normalization (e.g. with
		  self._scale_back_mean and possibly self._scale_back_variance). May be a
		  mutated version of the argument.
	**/
	public function _scale_back_predictions(predictions:Dynamic):Dynamic;
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
		Iterates over `times`, calling `state_update_fn` to collect outputs.
		
		Args:
		  times: A [batch size x window size] Tensor of integers to iterate over.
		  state: A list of model-specific state Tensors, each with shape [batch size
		      x ...].
		  state_update_fn: A callback taking the following arguments
		        step_number; A scalar integer Tensor indicating the current position
		          in the window.
		        current_times; A [batch size] vector of Integers indicating times
		          for each part of the batch.
		        state; Current model state.
		      It returns a tuple of (updated state, output_values), output_values
		      being a dictionary of Tensors with keys corresponding to `outputs`.
		  outputs: A list of strings indicating values which will be saved while
		      iterating. Must match the keys of the dictionary returned by
		      state_update_fn.
		Returns:
		  A tuple of (state, output_dict)
		  state: The final model state.
		  output_dict: A dictionary of outputs corresponding to those specified in
		    `outputs` and computed in state_update_fn.
	**/
	public function _state_update_loop(times:Dynamic, state:Dynamic, state_update_fn:Dynamic, outputs:Dynamic):Dynamic;
	/**
		Prepare for training or prediction on a window of data.
		
		Args:
		  times: A [batch size x window size] Tensor with times for each
		      observation.
		  state: Model-dependent state, each with size [batch size x ...]. The
		      number and type will typically be fixed by the model (for example a
		      mean and variance).
		Returns:
		  Nothing
	**/
	public function _window_initializer(times:Dynamic, state:Dynamic):Dynamic;
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
		Calls self._filtering_step. See TimeSeriesModel.get_batch_loss.
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
		Computes predictions, losses, and intermediate model states.
		
		Args:
		  features: A dictionary with times, values, and (optionally) exogenous
		      regressors. See `define_loss`.
		  mode: The tf.estimator.ModeKeys mode to use (TRAIN, EVAL, INFER).
		  state: Model-dependent state, each with size [batch size x ...]. The
		      number and type will typically be fixed by the model (for example a
		      mean and variance).
		Returns:
		  A tuple of (loss, filtered_states, predictions)
		    loss: Average loss values across the batch.
		    filtered_states: For each Tensor in `state` with shape [batch size x
		        ...], `filtered_states` has a Tensor with shape [batch size x window
		        size x ...] with filtered state for each part of the batch and
		        window.
		    predictions: A dictionary with model-dependent one-step-ahead (or
		        at-least-one-step-ahead with missing values) predictions, with keys
		        indicating the type of prediction and values having shape [batch
		        size x window size x ...]. For example state space models provide
		        "mean", "covariance", and "log_likelihood".
	**/
	public function per_step_batch_loss(features:Dynamic, mode:Dynamic, state:Dynamic):Dynamic;
	/**
		Calls self._prediction_step in a loop. See TimeSeriesModel.predict.
	**/
	public function predict(features:Dynamic):Dynamic;
}