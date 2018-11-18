/* This file is generated, do not edit! */
package tensorflow.contrib.timeseries.python.timeseries.state_space_models.structural_ensemble;
@:pythonImport("tensorflow.contrib.timeseries.python.timeseries.state_space_models.structural_ensemble", "StructuralEnsemble") extern class StructuralEnsemble {
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
		Initialize the Basic Structural Time Series model.
		
		Args:
		  periodicities: Number of time steps for cyclic behavior. May be a list, in
		      which case one periodic component is created for each element.
		  moving_average_order: The number of moving average coefficients to use,
		      which also defines the number of steps after which transient
		      deviations revert to the mean defined by periodic and level/trend
		      components.
		  autoregressive_order: The number of steps back for autoregression.
		  use_level_noise: Whether to model the time series as having level
		      noise. See level_noise in the model description above.
		  configuration: A StateSpaceModelConfiguration object.
	**/
	@:native("__init__")
	public function ___init__(periodicities:Dynamic, moving_average_order:Dynamic, autoregressive_order:Dynamic, ?use_level_noise:Dynamic, ?configuration:Dynamic):Dynamic;
	/**
		Initialize the Basic Structural Time Series model.
		
		Args:
		  periodicities: Number of time steps for cyclic behavior. May be a list, in
		      which case one periodic component is created for each element.
		  moving_average_order: The number of moving average coefficients to use,
		      which also defines the number of steps after which transient
		      deviations revert to the mean defined by periodic and level/trend
		      components.
		  autoregressive_order: The number of steps back for autoregression.
		  use_level_noise: Whether to model the time series as having level
		      noise. See level_noise in the model description above.
		  configuration: A StateSpaceModelConfiguration object.
	**/
	public function new(periodicities:Dynamic, moving_average_order:Dynamic, autoregressive_order:Dynamic, ?use_level_noise:Dynamic, ?configuration:Dynamic):Void;
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
	public function _cached_transition_powers_and_sums(num_steps:Dynamic):Dynamic;
	public function _check_graph_initialized():Dynamic;
	public function _compute_blocked(member_fn:Dynamic, name:Dynamic):Dynamic;
	/**
		Define extra model-specific parameters.
		
		Models should wrap any variables defined here in the model's variable scope.
		
		Args:
		  observation_transition_tradeoff_log: An ensemble-global parameter
		    controlling the tradeoff between observation noise and transition
		    noise. If its value is not None, component transition noise should scale
		    with e^-observation_transition_tradeoff_log.
	**/
	public function _define_parameters(?observation_transition_tradeoff_log:Dynamic):Dynamic;
	/**
		Update state with exogenous regressors.
		
		Allows both increases and decreases in uncertainty.
		
		Args:
		  current_times: A [batch size] Tensor of times for the exogenous values
		      being input.
		  current_exogenous_regressors: A [batch size x exogenous input dimension]
		      Tensor of exogenous values for each part of the batch.
		  state: A tuple of (mean, covariance, previous_times) having shapes
		      mean; [batch size x state dimension]
		      covariance; [batch size x state dimension x state dimension]
		      previous_times; [batch size]
		Returns:
		  Updated state taking the exogenous regressors into account.
	**/
	public function _exogenous_input_step(current_times:Dynamic, current_exogenous_regressors:Dynamic, state:Dynamic):Dynamic;
	/**
		Update state with exogenous regressors, decreasing uncertainty.
		
		Constructs a mean and covariance based on transformations of
		`exogenous_values`, then performs Bayesian inference on the constructed
		observation. This has the effect of lowering uncertainty.
		
		This update refines or overrides previous inferences, useful for modeling
		exogenous inputs which "set" state, e.g. we dumped boiling water on the
		thermometer so we're pretty sure it's 100 degrees C.
		
		Args:
		  current_times: A [batch size] Tensor of times for the exogenous values
		      being input.
		  exogenous_values: A [batch size x exogenous input dimension] Tensor of
		      exogenous values for each part of the batch.
		  state: A tuple of (mean, covariance, previous_times) having shapes
		      mean; [batch size x state dimension]
		      covariance; [batch size x state dimension x state dimension]
		      previous_times; [batch size]
		Returns:
		  Updated state taking the exogenous regressors into account (with lower
		  uncertainty than the input state).
	**/
	public function _exogenous_noise_decreasing(current_times:Dynamic, exogenous_values:Dynamic, state:Dynamic):Dynamic;
	/**
		Update state with exogenous regressors, increasing uncertainty.
		
		Adds to the state mean a linear transformation of `exogenous_values`, and
		increases uncertainty by constructing a covariance matrix based on
		`exogenous_values` and adding it to the state covariance.
		
		This update is useful for modeling changes relative to current state,
		e.g. the furnace turned on so the temperature will be increasing at an
		additional 1 degree per minute with some uncertainty, this uncertainty being
		added to our current uncertainty in the per-minute change in temperature.
		
		Args:
		  current_times: A [batch size] Tensor of times for the exogenous values
		      being input.
		  exogenous_values: A [batch size x exogenous input dimension] Tensor of
		      exogenous values for each part of the batch.
		  state: A tuple of (mean, covariance, previous_times) having shapes
		      mean; [batch size x state dimension]
		      covariance; [batch size x state dimension x state dimension]
		      previous_times; [batch size]
		Returns:
		  Updated state taking the exogenous regressors into account (with higher
		  uncertainty than the input state).
	**/
	public function _exogenous_noise_increasing(current_times:Dynamic, exogenous_values:Dynamic, state:Dynamic):Dynamic;
	/**
		Compute posteriors and accumulate one-step-ahead predictions.
		
		Args:
		  current_times: A [batch size] Tensor for times for each observation.
		  current_values: A [batch size] Tensor of values for each observation.
		  state: A tuple of (mean, covariance, previous_times) having shapes
		      mean; [batch size x state dimension]
		      covariance; [batch size x state dimension x state dimension]
		      previous_times; [batch size]
		  predictions: A dictionary containing mean and covariance Tensors, the
		      output of _prediction_step.
		Returns:
		  A tuple of (posteriors, outputs):
		    posteriors: Model state updated to take `current_values` into account.
		    outputs: The `predictions` dictionary updated to include "loss" and
		        "log_likelihood" entries (loss simply being negative log
		        likelihood).
	**/
	public function _filtering_step(current_times:Dynamic, current_values:Dynamic, state:Dynamic, predictions:Dynamic):Dynamic;
	/**
		Computes the shape of the vector returned by _process_exogenous_features.
		
		Returns:
		  The shape as a list. Does not include a batch dimension.
	**/
	public function _get_exogenous_embedding_shape():Dynamic;
	/**
		Add state transition noise to catch `state` up to `current_times`.
		
		State space models are inherently sequential, so we need to "predict
		through" any missing time steps to catch up each element of the batch to its
		next observation/prediction time.
		
		Args:
		  current_times: A [batch size] Tensor of times to impute up to, not
		      inclusive.
		  state: A tuple of (mean, covariance, previous_times) having shapes
		      mean; [batch size x state dimension]
		      covariance; [batch size x state dimension x state dimension]
		      previous_times; [batch size]
		Returns:
		  Imputed model state corresponding to the `state` argument.
	**/
	public function _imputation_step(current_times:Dynamic, state:Dynamic):Dynamic;
	public function _lookup_window_caches(caches:Dynamic, indices:Dynamic):Dynamic;
	/**
		Add regularization during training.
	**/
	public function _loss_additions(times:Dynamic, values:Dynamic, mode:Dynamic):Dynamic;
	/**
		Creates and returns model priors.
	**/
	public function _make_priors():Dynamic;
	/**
		Make a prediction based on `state`.
		
		Computes predictions based on the current `state`, checking that it has
		already been updated (in `_imputation_step`) to `current_times`.
		
		Args:
		  current_times: A [batch size] Tensor for times to make predictions for.
		  state: A tuple of (mean, covariance, previous_times) having shapes
		      mean; [batch size x state dimension]
		      covariance; [batch size x state dimension x state dimension]
		      previous_times; [batch size]
		Returns:
		  A tuple of (updated state, predictions):
		    updated state: Model state with added transition noise.
		    predictions: A dictionary with "mean" and "covariance", having shapes
		        "mean": [batch size x num features]
		        "covariance: [batch size x num features x num features]
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
	public function _set_input_statistics(input_statistics:Dynamic):Dynamic;
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
		Define a variable to trade off observation and transition noise.
	**/
	public function _variable_observation_transition_tradeoff_log():Dynamic;
	/**
		Prepare to impute across the gaps in a window.
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
	public function generate(number_of_series:Dynamic, series_length:Dynamic, ?model_parameters:Dynamic, ?seed:Dynamic, ?add_observation_noise:Dynamic):Dynamic;
	/**
		Calls self._filtering_step. See TimeSeriesModel.get_batch_loss.
	**/
	public function get_batch_loss(features:Dynamic, mode:Dynamic, state:Dynamic):Dynamic;
	/**
		Computes a combined observation model based on member models.
		
		The effect is that predicted observations from each model are summed.
		
		Args:
		  times: A [batch dimension] int32 Tensor with times for each part of the
		      batch, on which member observation models can depend.
		Returns:
		  A [batch dimension x num features x combined state dimension] Tensor with
		  the combined observation model.
	**/
	public function get_broadcasted_observation_model(times:Dynamic):Dynamic;
	/**
		Get features for a batch of timesteps. Default to no features.
	**/
	public function get_features_for_timesteps(timesteps:Dynamic):Dynamic;
	/**
		Specifies the noise transition model to use.
		
		Returns:
		  A [state dimension x state noise dimension] Tensor specifying how noise
		  (generated with shape [state noise dimension]) affects the model's state.
	**/
	public function get_noise_transform():Dynamic;
	/**
		Specifies the observation model to use.
		
		Args:
		  times: A [batch dimension] int32 Tensor with times for each part of the
		      batch, on which the observation model can depend.
		Returns:
		  This function, when overridden, has three possible return values:
		    - A [state dimension] Tensor with a static, univariate observation
		      model.
		    - A [self.num_features x state dimension] static, multivariate model.
		    - A [batch dimension x self.num_features x state dimension] observation
		      model, which may depend on `times`.
		  See get_broadcasted_observation_model for details of the broadcasting.
	**/
	public function get_observation_model(times:Dynamic):Dynamic;
	public function get_observation_noise_covariance(?minimum_initial_variance:Dynamic):Dynamic;
	/**
		Construct the ensemble prior covariance based on component models.
	**/
	public function get_prior_covariance():Dynamic;
	/**
		Constructs a Variable-parameterized prior mean.
		
		Models should wrap any variables defined here in the model's variable scope.
		
		Returns:
		  A one-dimensional floating point Tensor with shape [state dimension]
		  indicating the prior mean.
	**/
	public function get_prior_mean():Dynamic;
	/**
		Defines and returns a non-batched prior state and covariance.
	**/
	public function get_start_state():Dynamic;
	/**
		Specifies the state transition model to use.
		
		Returns:
		  A [state dimension x state dimension] Tensor specifying how states
		  transition from one timestep to the next.
	**/
	public function get_state_transition():Dynamic;
	/**
		Construct the ensemble transition noise covariance from components.
	**/
	public function get_state_transition_noise_covariance():Dynamic;
	/**
		Define variables and ops relevant to the top-level model in an ensemble.
		
		For generic model parameters, _define_parameters() is called recursively on
		all members of an ensemble.
		
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
	public function random_model_parameters(?seed:Dynamic):Dynamic;
	/**
		Sum a transitioned covariance matrix over a number of steps.
		
		Computes
		
		  \sum_{i=0}^{num_steps - 1} (
		    state_transition^i
		    * state_transition_noise_covariance
		    * (state_transition^i)^T)
		
		If special cases are available, overriding this function can lead to more
		efficient inferences.
		
		Args:
		  num_steps: A [...] shape integer Tensor with numbers of steps to compute
		    power sums for.
		Returns:
		  The computed power sum, with shape [..., state dimension, state
		  dimension].
	**/
	public function transition_power_noise_accumulator(num_steps:Dynamic):Dynamic;
	/**
		Raise the transition matrix to a batch of powers.
		
		Computes state_transition^powers. If special cases are available, overriding
		this function can lead to more efficient inferences.
		
		Args:
		  powers: A [...] shape integer Tensor with powers to raise the transition
		    matrix to.
		Returns:
		  The computed matrix powers, with shape [..., state dimension, state
		  dimension].
	**/
	public function transition_to_powers(powers:Dynamic):Dynamic;
}