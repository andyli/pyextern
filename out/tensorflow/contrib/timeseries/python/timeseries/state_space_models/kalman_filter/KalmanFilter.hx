/* This file is generated, do not edit! */
package tensorflow.contrib.timeseries.python.timeseries.state_space_models.kalman_filter;
@:pythonImport("tensorflow.contrib.timeseries.python.timeseries.state_space_models.kalman_filter", "KalmanFilter") extern class KalmanFilter {
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
		Initialize the Kalman filter.
		
		Args:
		  dtype: The data type to use for floating point tensors.
		  simplified_posterior_covariance_computation: If True, uses an algebraic
		    simplification of the Kalman filtering posterior covariance update,
		    which is slightly faster at the cost of numerical stability. The
		    simplified update is often stable when using double precision on small
		    models or with fixed transition matrices.
	**/
	@:native("__init__")
	public function ___init__(?dtype:Dynamic, ?simplified_posterior_covariance_computation:Dynamic):Dynamic;
	/**
		Initialize the Kalman filter.
		
		Args:
		  dtype: The data type to use for floating point tensors.
		  simplified_posterior_covariance_computation: If True, uses an algebraic
		    simplification of the Kalman filtering posterior covariance update,
		    which is slightly faster at the cost of numerical stability. The
		    simplified update is often stable when using double precision on small
		    models or with fixed transition matrices.
	**/
	public function new(?dtype:Dynamic, ?simplified_posterior_covariance_computation:Dynamic):Void;
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
		Convenience function for scoring predictions.
		
		Scores a prediction against an observation, and computes the updated
		posterior over states.
		
		Shapes given below for arguments are for single-model Kalman filtering
		(e.g. KalmanFilter). For ensembles, prior_state and prior_state_var are
		same-length tuples of values corresponding to each model.
		
		Args:
		  estimated_state: A prior mean over states [batch size x state dimension]
		  estimated_state_covariance: Covariance of state prior [batch size x D x
		      D], with D depending on the Kalman filter implementation (typically
		      the state dimension).
		  predicted_observation: A prediction for the observed value, such as that
		      returned by observed_from_state. A [batch size x num features] Tensor.
		  predicted_observation_covariance: A covariance matrix corresponding to
		      `predicted_observation`, a [batch size x num features x num features]
		      Tensor.
		  observation: The observed value corresponding to the predictions
		      given [batch size x observation dimension]
		  observation_model: The [batch size x observation dimension x model state
		      dimension] Tensor indicating how a particular state is mapped to
		      (pre-noise) observations for each part of the batch.
		  observation_noise: A [batch size x observation dimension x observation
		      dimension] Tensor or [observation dimension x observation dimension]
		      Tensor with covariance matrices to use for each part of the batch (a
		      two-dimensional input will be broadcast).
		Returns:
		  posterior_state, posterior_state_var: Posterior mean and
		      covariance, updated versions of prior_state and
		      prior_state_var.
		  log_prediction_prob: Log probability of the observations under
		      the priors, suitable for optimization (should be maximized).
	**/
	public function do_filter(estimated_state:Dynamic, estimated_state_covariance:Dynamic, predicted_observation:Dynamic, predicted_observation_covariance:Dynamic, observation:Dynamic, observation_model:Dynamic, observation_noise:Dynamic):Dynamic;
	/**
		Compute an observation distribution given a state distribution.
		
		Args:
		  state_mean: State mean vector [batch size x state dimension]
		  state_var: State covariance [batch size x state dimension x state
		      dimension]
		  observation_model: The [batch size x observation dimension x model state
		      dimension] Tensor indicating how a particular state is mapped to
		      (pre-noise) observations for each part of the batch.
		  observation_noise: A [batch size x observation dimension x observation
		      dimension] Tensor with covariance matrices to use for each part of the
		      batch. To remove observation noise, pass a Tensor of zeros (or simply
		      0, which will broadcast).
		Returns:
		  observed_mean: Observation mean vector [batch size x observation
		      dimension]
		  observed_var: Observation covariance [batch size x observation dimension x
		      observation dimension]
	**/
	public function observed_from_state(state_mean:Dynamic, state_var:Dynamic, observation_model:Dynamic, observation_noise:Dynamic):Dynamic;
	/**
		Compute a posterior over states given an observation.
		
		Args:
		  prior_state: Prior state mean [batch size x state dimension]
		  prior_state_var: Prior state covariance [batch size x state dimension x
		      state dimension]
		  observation: The observed value corresponding to the predictions given
		      [batch size x observation dimension]
		  observation_model: The [batch size x observation dimension x model state
		      dimension] Tensor indicating how a particular state is mapped to
		      (pre-noise) observations for each part of the batch.
		  predicted_observations: An (observation mean, observation variance) tuple
		      computed based on the current state, usually the output of
		      observed_from_state.
		  observation_noise: A [batch size x observation dimension x observation
		      dimension] or [observation dimension x observation dimension] Tensor
		      with covariance matrices to use for each part of the batch (a
		      two-dimensional input will be broadcast).
		Returns:
		  Posterior mean and covariance (dimensions matching the first two
		  arguments).
	**/
	public function posterior_from_prior_state(prior_state:Dynamic, prior_state_var:Dynamic, observation:Dynamic, observation_model:Dynamic, predicted_observations:Dynamic, observation_noise:Dynamic):Dynamic;
	/**
		Compute state transitions.
		
		Args:
		  prior_state: Current estimated state mean [batch_size x state_dimension]
		  transition_matrices: A [batch size, state dimension, state dimension]
		    batch of matrices (dtype matching the `dtype` argument to the
		    constructor) with the transition matrix raised to the power of the
		    number of steps to be taken (not element-wise; use
		    math_utils.matrix_to_powers if there is no efficient special case) if
		    more than one step is desired.
		Returns:
		  State mean advanced based on `transition_matrices` (dimensions matching
		  first argument).
	**/
	public function predict_state_mean(prior_state:Dynamic, transition_matrices:Dynamic):Dynamic;
	/**
		Compute variance for state transitions.
		
		Computes a noise estimate corresponding to the value returned by
		predict_state_mean.
		
		Args:
		  prior_state_var: Covariance matrix specifying uncertainty of current state
		      estimate [batch size x state dimension x state dimension]
		  transition_matrices: A [batch size, state dimension, state dimension]
		    batch of matrices (dtype matching the `dtype` argument to the
		    constructor) with the transition matrix raised to the power of the
		    number of steps to be taken (not element-wise; use
		    math_utils.matrix_to_powers if there is no efficient special case).
		  transition_noise_sums: A [batch size, state dimension, state dimension]
		    Tensor (dtype matching the `dtype` argument to the constructor) with:
		
		      \sum_{i=0}^{num_steps - 1} (
		         state_transition_to_powers_fn(i)
		         * state_transition_noise_covariance
		         * state_transition_to_powers_fn(i)^T
		      )
		
		    for the number of steps to be taken in each part of the batch (this
		    should match `transition_matrices`). Use math_utils.power_sums_tensor
		    with `tf.gather` if there is no efficient special case.
		Returns:
		  State variance advanced based on `transition_matrices` and
		  `transition_noise_sums` (dimensions matching first argument).
	**/
	public function predict_state_var(prior_state_var:Dynamic, transition_matrices:Dynamic, transition_noise_sums:Dynamic):Dynamic;
}