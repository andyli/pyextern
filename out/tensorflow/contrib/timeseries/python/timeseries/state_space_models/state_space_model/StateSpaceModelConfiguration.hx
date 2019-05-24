/* This file is generated, do not edit! */
package tensorflow.contrib.timeseries.python.timeseries.state_space_models.state_space_model;
@:pythonImport("tensorflow.contrib.timeseries.python.timeseries.state_space_models.state_space_model", "StateSpaceModelConfiguration") extern class StateSpaceModelConfiguration {
	/**
		Return self+value.
	**/
	public function __add__(value:Dynamic):Dynamic;
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return key in self.
	**/
	public function __contains__(key:Dynamic):Dynamic;
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
		Return self[key].
	**/
	public function __getitem__(key:Dynamic):Dynamic;
	/**
		Return self as a plain tuple.  Used by copy and pickle.
	**/
	public function __getnewargs__():Dynamic;
	/**
		Return self>value.
	**/
	public function __gt__(value:Dynamic):Dynamic;
	/**
		Return hash(self).
	**/
	public function __hash__():Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	@:native("__init__")
	public function ___init__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Void;
	/**
		This method is called when a class is subclassed.
		
		The default implementation does nothing. It may be
		overridden to extend subclasses.
	**/
	public function __init_subclass__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Implement iter(self).
	**/
	public function __iter__():Dynamic;
	/**
		Return self<=value.
	**/
	public function __le__(value:Dynamic):Dynamic;
	/**
		Return len(self).
	**/
	public function __len__():Dynamic;
	/**
		Return self<value.
	**/
	public function __lt__(value:Dynamic):Dynamic;
	static public var __module__ : Dynamic;
	/**
		Return self*value.
	**/
	public function __mul__(value:Dynamic):Dynamic;
	/**
		Return self!=value.
	**/
	public function __ne__(value:Dynamic):Dynamic;
	/**
		Configuration options for StateSpaceModels.
		
		Args:
		  num_features: Output dimension for model
		  use_observation_noise: If true, observations are modeled as noisy
		    functions of the current state. If false, observations are a
		    deterministic function of the current state. Only applicable to the
		    top-level model in an ensemble. Consider also changing the
		    transition_covariance_initial_log_scale_bias when disabling observation
		    noise, as its default setting assumes that observation noise is part of
		    the model.
		  dtype: The float dtype to use when defining the model.
		  covariance_prior_fn: A function mapping from a covariance matrix to a
		      scalar value (e.g. log likelihood) which can be summed across
		      matrices. Defaults to an independent Jeffreys prior on the diagonal
		      elements (regularizing as log(1. / variance)). To use a flat prior
		      (i.e. no regularization), set to `lambda _: 0.`.  Defaults to
		      relatively uninformative priors on state transition and observation
		      noise, which have the effect of encouraging low-noise solutions which
		      provide confident predictions when possible. Without regularization,
		      transition noise tends to remain high, and multi-step predictions are
		      under-confident.
		  bayesian_prior_weighting: If True, weights the prior (covariance_prior_fn)
		      based on an estimate of the full dataset size. If False, weights it
		      based on the mini-batch window size, which (while statistically
		      improper) can lead to more desirable low-noise solutions in cases
		      where the full dataset is large enough to overwhelm the prior.
		  filtering_postprocessor: A FilteringStepPostprocessor object to use,
		      useful for ignoring anomalies in training data.
		  trainable_start_state: If True, start state may depend on trainable
		      Variables. If False, it will not.
		  exogenous_noise_increases: If True, exogenous regressors can add to model
		      state, increasing uncertainty. If both this parameter and
		      exogenous_noise_decreases are False, exogenous regressors are ignored.
		  exogenous_noise_decreases: If True, exogenous regressors can "set" model
		      state, decreasing uncertainty. If both this parameter and
		      exogenous_noise_increases are False, exogenous regressors are ignored.
		  exogenous_feature_columns: A list of `tf.feature_column`s (for example
		      `tf.feature_column.embedding_column`) corresponding to exogenous
		      features which provide extra information to the model but are not part
		      of the series to be predicted. Passed to
		      `tf.feature_column.input_layer`.
		  exogenous_update_condition: A function taking two Tensor arguments `times`
		      (shape [batch size]) and `features` (a dictionary mapping exogenous
		      feature keys to Tensors with shapes [batch size, ...]) and returning a
		      boolean Tensor with shape [batch size] indicating whether state should
		      be updated using exogenous features for each part of the batch. Where
		      it is False, no exogenous update is performed. If None (default),
		      exogenous updates are always performed. Useful for avoiding "leaky"
		      frequent exogenous updates when sparse updates are desired. Called
		      only during graph construction.
		  filtering_maximum_posterior_variance_ratio: The maximum allowed ratio of
		      two diagonal entries in a state covariance matrix just prior to
		      filtering. Lower values mean that filtering will be more numerically
		      stable, at the cost of artificially increasing estimated uncertainty
		      in some cases. This parameter can be important when learning a
		      transition matrix.
		  filtering_minimum_posterior_variance: The minimum diagonal value in a
		      state covariance matrix just prior to filtering, preventing numerical
		      instability due to deterministic beliefs (sometimes an issue when
		      learning transition matrices). This value should be set several orders
		      of magnitude below any expected minimum state uncertainty.
		  transition_covariance_initial_log_scale_bias: Controls the initial
		      tradeoff between the transition noise covariance matrix and the
		      observation noise covariance matrix, on a log scale (the elements of
		      the transition noise covariance matrix are proportional to `e^{X +
		      transition_covariance_initial_log_scale_bias}` where `X` is learned
		      and may depend on input statistics, observation noise covariance is
		      proportional to `e^{Y -
		      transition_covariance_initial_log_scale_bias}`). For models *with*
		      observation noise, -5 is a reasonable value. Models which do not use
		      observation noise, and are not part of an ensemble which does use
		      observation noise, should have this set to 0 or more to avoid
		      numerical issues due to filtering with too little noise.
		  static_unrolling_window_size_threshold: Only relevant for the top-level
		      StateSpaceModel in an ensemble; enables switching between static and
		      dynamic looping (if not None, default, meaning that no static
		      unrolling is performed) based on the window size (windows with this
		      size and smaller will have their graphs unrolled statically). See the
		      SequentialTimeSeriesModel constructor for details.
		Returns:
		  A StateSpaceModelConfiguration object.
	**/
	static public function __new__(cls:Dynamic, ?num_features:Dynamic, ?use_observation_noise:Dynamic, ?dtype:Dynamic, ?covariance_prior_fn:Dynamic, ?bayesian_prior_weighting:Dynamic, ?filtering_postprocessor:Dynamic, ?trainable_start_state:Dynamic, ?exogenous_noise_increases:Dynamic, ?exogenous_noise_decreases:Dynamic, ?exogenous_feature_columns:Dynamic, ?exogenous_update_condition:Dynamic, ?filtering_maximum_posterior_variance_ratio:Dynamic, ?filtering_minimum_posterior_variance:Dynamic, ?transition_covariance_initial_log_scale_bias:Dynamic, ?static_unrolling_window_size_threshold:Dynamic):Dynamic;
	/**
		helper for pickle
	**/
	public function __reduce__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		helper for pickle
	**/
	public function __reduce_ex__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return a nicely formatted representation string
	**/
	public function __repr__():Dynamic;
	/**
		Return value*self.
	**/
	public function __rmul__(value:Dynamic):Dynamic;
	/**
		Implement setattr(self, name, value).
	**/
	public function __setattr__(name:Dynamic, value:Dynamic):Dynamic;
	/**
		__sizeof__() -> int
		size of object in memory, in bytes
	**/
	public function __sizeof__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var __slots__ : Dynamic;
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
		Return a new OrderedDict which maps field names to their values.
	**/
	public function _asdict():Dynamic;
	static public var _fields : Dynamic;
	/**
		Make a new StateSpaceModelConfiguration object from a sequence or iterable
	**/
	static public function _make(iterable:Dynamic, ?_new:Dynamic, ?len:Dynamic):Dynamic;
	/**
		Return a new StateSpaceModelConfiguration object replacing specified fields with new values
	**/
	static public function _replace(_self:Dynamic, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public var _source : Dynamic;
	/**
		Alias for field number 4
	**/
	public var bayesian_prior_weighting : Dynamic;
	/**
		T.count(value) -> integer -- return number of occurrences of value
	**/
	public function count(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Alias for field number 3
	**/
	public var covariance_prior_fn : Dynamic;
	/**
		Alias for field number 2
	**/
	public var dtype : Dynamic;
	/**
		Alias for field number 9
	**/
	public var exogenous_feature_columns : Dynamic;
	/**
		Alias for field number 8
	**/
	public var exogenous_noise_decreases : Dynamic;
	/**
		Alias for field number 7
	**/
	public var exogenous_noise_increases : Dynamic;
	/**
		Alias for field number 10
	**/
	public var exogenous_update_condition : Dynamic;
	/**
		Alias for field number 11
	**/
	public var filtering_maximum_posterior_variance_ratio : Dynamic;
	/**
		Alias for field number 12
	**/
	public var filtering_minimum_posterior_variance : Dynamic;
	/**
		Alias for field number 5
	**/
	public var filtering_postprocessor : Dynamic;
	/**
		T.index(value, [start, [stop]]) -> integer -- return first index of value.
		Raises ValueError if the value is not present.
	**/
	public function index(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Alias for field number 0
	**/
	public var num_features : Dynamic;
	/**
		Alias for field number 14
	**/
	public var static_unrolling_window_size_threshold : Dynamic;
	/**
		Alias for field number 6
	**/
	public var trainable_start_state : Dynamic;
	/**
		Alias for field number 13
	**/
	public var transition_covariance_initial_log_scale_bias : Dynamic;
	/**
		Alias for field number 1
	**/
	public var use_observation_noise : Dynamic;
}