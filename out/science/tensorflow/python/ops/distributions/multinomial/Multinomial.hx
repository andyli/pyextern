/* This file is generated, do not edit! */
package tensorflow.python.ops.distributions.multinomial;
@:pythonImport("tensorflow.python.ops.distributions.multinomial", "Multinomial") extern class Multinomial {
	static public var __abstractmethods__ : Dynamic;
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
	static public function __class__(classname:Dynamic, baseclasses:Dynamic, attrs:Dynamic):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
	static public var __dict__ : Dynamic;
	/**
		Default dir() implementation.
	**/
	public function __dir__():Dynamic;
	static public var __doc__ : Dynamic;
	/**
		Return self==value.
	**/
	public function __eq__(value:Dynamic):Dynamic;
	/**
		Default object formatter.
	**/
	public function __format__(format_spec:Dynamic):Dynamic;
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
		Initialize a batch of Multinomial distributions. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed after 2019-01-01.
		Instructions for updating:
		The TensorFlow Distributions library has moved to TensorFlow Probability (https://github.com/tensorflow/probability). You should update all references to use `tfp.distributions` instead of `tf.distributions`.
		
		Args:
		  total_count: Non-negative floating point tensor with shape broadcastable
		    to `[N1,..., Nm]` with `m >= 0`. Defines this as a batch of
		    `N1 x ... x Nm` different Multinomial distributions. Its components
		    should be equal to integer values.
		  logits: Floating point tensor representing unnormalized log-probabilities
		    of a positive event with shape broadcastable to
		    `[N1,..., Nm, K]` `m >= 0`, and the same dtype as `total_count`. Defines
		    this as a batch of `N1 x ... x Nm` different `K` class Multinomial
		    distributions. Only one of `logits` or `probs` should be passed in.
		  probs: Positive floating point tensor with shape broadcastable to
		    `[N1,..., Nm, K]` `m >= 0` and same dtype as `total_count`. Defines
		    this as a batch of `N1 x ... x Nm` different `K` class Multinomial
		    distributions. `probs`'s components in the last portion of its shape
		    should sum to `1`. Only one of `logits` or `probs` should be passed in.
		  validate_args: Python `bool`, default `False`. When `True` distribution
		    parameters are checked for validity despite possibly degrading runtime
		    performance. When `False` invalid inputs may silently render incorrect
		    outputs.
		  allow_nan_stats: Python `bool`, default `True`. When `True`, statistics
		    (e.g., mean, mode, variance) use the value "`NaN`" to indicate the
		    result is undefined. When `False`, an exception is raised if one or
		    more of the statistic's batch members are undefined.
		  name: Python `str` name prefixed to Ops created by this class.
	**/
	@:native("__init__")
	public function ___init__(total_count:Dynamic, ?logits:Dynamic, ?probs:Dynamic, ?validate_args:Dynamic, ?allow_nan_stats:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Initialize a batch of Multinomial distributions. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed after 2019-01-01.
		Instructions for updating:
		The TensorFlow Distributions library has moved to TensorFlow Probability (https://github.com/tensorflow/probability). You should update all references to use `tfp.distributions` instead of `tf.distributions`.
		
		Args:
		  total_count: Non-negative floating point tensor with shape broadcastable
		    to `[N1,..., Nm]` with `m >= 0`. Defines this as a batch of
		    `N1 x ... x Nm` different Multinomial distributions. Its components
		    should be equal to integer values.
		  logits: Floating point tensor representing unnormalized log-probabilities
		    of a positive event with shape broadcastable to
		    `[N1,..., Nm, K]` `m >= 0`, and the same dtype as `total_count`. Defines
		    this as a batch of `N1 x ... x Nm` different `K` class Multinomial
		    distributions. Only one of `logits` or `probs` should be passed in.
		  probs: Positive floating point tensor with shape broadcastable to
		    `[N1,..., Nm, K]` `m >= 0` and same dtype as `total_count`. Defines
		    this as a batch of `N1 x ... x Nm` different `K` class Multinomial
		    distributions. `probs`'s components in the last portion of its shape
		    should sum to `1`. Only one of `logits` or `probs` should be passed in.
		  validate_args: Python `bool`, default `False`. When `True` distribution
		    parameters are checked for validity despite possibly degrading runtime
		    performance. When `False` invalid inputs may silently render incorrect
		    outputs.
		  allow_nan_stats: Python `bool`, default `True`. When `True`, statistics
		    (e.g., mean, mode, variance) use the value "`NaN`" to indicate the
		    result is undefined. When `False`, an exception is raised if one or
		    more of the statistic's batch members are undefined.
		  name: Python `str` name prefixed to Ops created by this class.
	**/
	public function new(total_count:Dynamic, ?logits:Dynamic, ?probs:Dynamic, ?validate_args:Dynamic, ?allow_nan_stats:Dynamic, ?name:Dynamic):Void;
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
		Helper for pickle.
	**/
	public function __reduce__():Dynamic;
	/**
		Helper for pickle.
	**/
	public function __reduce_ex__(protocol:Dynamic):Dynamic;
	/**
		Return repr(self).
	**/
	public function __repr__():Dynamic;
	/**
		Implement setattr(self, name, value).
	**/
	public function __setattr__(name:Dynamic, value:Dynamic):Dynamic;
	/**
		Size of object in memory, in bytes.
	**/
	public function __sizeof__():Dynamic;
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
	static public var _abc_impl : Dynamic;
	public function _batch_shape():Dynamic;
	public function _batch_shape_tensor():Dynamic;
	public function _call_cdf(value:Dynamic, name:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function _call_log_cdf(value:Dynamic, name:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function _call_log_prob(value:Dynamic, name:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function _call_log_survival_function(value:Dynamic, name:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function _call_prob(value:Dynamic, name:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function _call_quantile(value:Dynamic, name:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function _call_sample_n(sample_shape:Dynamic, seed:Dynamic, name:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function _call_survival_function(value:Dynamic, name:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function _cdf(value:Dynamic):Dynamic;
	public function _covariance():Dynamic;
	public function _cross_entropy(other:Dynamic):Dynamic;
	public function _entropy():Dynamic;
	public function _event_shape():Dynamic;
	public function _event_shape_tensor():Dynamic;
	/**
		Helper to `sample` which ensures input is 1D.
	**/
	public function _expand_sample_shape_to_vector(x:Dynamic, name:Dynamic):Dynamic;
	/**
		Implementation for `is_scalar_batch` and `is_scalar_event`.
	**/
	public function _is_scalar_helper(static_shape:Dynamic, dynamic_shape_fn:Dynamic):Dynamic;
	public function _kl_divergence(other:Dynamic):Dynamic;
	public function _log_cdf(value:Dynamic):Dynamic;
	public function _log_normalization(counts:Dynamic):Dynamic;
	/**
		For each batch of counts, `value = [n_0, ...
		,n_{k-1}]`, `P[value]` is the probability that after sampling `self.total_count`
		draws from this Multinomial distribution, the number of draws falling in class
		`j` is `n_j`. Since this definition is [exchangeable](
		https://en.wikipedia.org/wiki/Exchangeable_random_variables); different
		sequences have the same counts so the probability includes a combinatorial
		coefficient.
		
		Note: `value` must be a non-negative tensor with dtype `self.dtype`, have no
		fractional components, and such that
		`tf.reduce_sum(value, -1) = self.total_count`. Its shape must be broadcastable
		with `self.probs` and `self.total_count`.
	**/
	public function _log_prob(counts:Dynamic):Dynamic;
	public function _log_survival_function(value:Dynamic):Dynamic;
	public function _log_unnormalized_prob(counts:Dynamic):Dynamic;
	/**
		Check counts for proper shape, values, then return tensor version.
	**/
	public function _maybe_assert_valid_sample(counts:Dynamic):Dynamic;
	public function _mean():Dynamic;
	public function _mode():Dynamic;
	/**
		Helper function to standardize op scope.
	**/
	public function _name_scope(?name:Dynamic, ?values:Dynamic):Dynamic;
	static public function _param_shapes(sample_shape:Dynamic):Dynamic;
	public var _parameters : Dynamic;
	public function _prob(value:Dynamic):Dynamic;
	public function _quantile(value:Dynamic):Dynamic;
	public function _sample_n(n:Dynamic, ?seed:Dynamic):Dynamic;
	/**
		Helper to `sample`; sets static shape info.
	**/
	public function _set_sample_static_shape(x:Dynamic, sample_shape:Dynamic):Dynamic;
	public function _stddev():Dynamic;
	public function _survival_function(value:Dynamic):Dynamic;
	static public var _tf_api_names : Dynamic;
	static public var _tf_api_names_v1 : Dynamic;
	public function _variance():Dynamic;
	/**
		Python `bool` describing behavior when a stat is undefined.
		
		Stats return +/- infinity when it makes sense. E.g., the variance of a
		Cauchy distribution is infinity. However, sometimes the statistic is
		undefined, e.g., if a distribution's pdf does not achieve a maximum within
		the support of the distribution, the mode is undefined. If the mean is
		undefined, then by definition the variance is undefined. E.g. the mean for
		Student's T for df = 1 is undefined (no clear way to say it is either + or -
		infinity), so the variance = E[(X - mean)**2] is also undefined.
		
		Returns:
		  allow_nan_stats: Python `bool`.
	**/
	public var allow_nan_stats : Dynamic;
	/**
		Shape of a single sample from a single event index as a `TensorShape`.
		
		May be partially defined or unknown.
		
		The batch dimensions are indexes into independent, non-identical
		parameterizations of this distribution.
		
		Returns:
		  batch_shape: `TensorShape`, possibly unknown.
	**/
	public var batch_shape : Dynamic;
	/**
		Shape of a single sample from a single event index as a 1-D `Tensor`.
		
		The batch dimensions are indexes into independent, non-identical
		parameterizations of this distribution.
		
		Args:
		  name: name to give to the op
		
		Returns:
		  batch_shape: `Tensor`.
	**/
	public function batch_shape_tensor(?name:Dynamic):Dynamic;
	/**
		Cumulative distribution function.
		
		Given random variable `X`, the cumulative distribution function `cdf` is:
		
		```none
		cdf(x) := P[X <= x]
		```
		
		Args:
		  value: `float` or `double` `Tensor`.
		  name: Python `str` prepended to names of ops created by this function.
		
		Returns:
		  cdf: a `Tensor` of shape `sample_shape(x) + self.batch_shape` with
		    values of type `self.dtype`.
	**/
	public function cdf(value:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Creates a deep copy of the distribution.
		
		Note: the copy distribution may continue to depend on the original
		initialization arguments.
		
		Args:
		  **override_parameters_kwargs: String/value dictionary of initialization
		    arguments to override with new values.
		
		Returns:
		  distribution: A new instance of `type(self)` initialized from the union
		    of self.parameters and override_parameters_kwargs, i.e.,
		    `dict(self.parameters, **override_parameters_kwargs)`.
	**/
	public function copy(?override_parameters_kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Covariance.
		
		Covariance is (possibly) defined only for non-scalar-event distributions.
		
		For example, for a length-`k`, vector-valued distribution, it is calculated
		as,
		
		```none
		Cov[i, j] = Covariance(X_i, X_j) = E[(X_i - E[X_i]) (X_j - E[X_j])]
		```
		
		where `Cov` is a (batch of) `k x k` matrix, `0 <= (i, j) < k`, and `E`
		denotes expectation.
		
		Alternatively, for non-vector, multivariate distributions (e.g.,
		matrix-valued, Wishart), `Covariance` shall return a (batch of) matrices
		under some vectorization of the events, i.e.,
		
		```none
		Cov[i, j] = Covariance(Vec(X)_i, Vec(X)_j) = [as above]
		```
		
		where `Cov` is a (batch of) `k' x k'` matrices,
		`0 <= (i, j) < k' = reduce_prod(event_shape)`, and `Vec` is some function
		mapping indices of this distribution's event dimensions to indices of a
		length-`k'` vector.
		
		Args:
		  name: Python `str` prepended to names of ops created by this function.
		
		Returns:
		  covariance: Floating-point `Tensor` with shape `[B1, ..., Bn, k', k']`
		    where the first `n` dimensions are batch coordinates and
		    `k' = reduce_prod(self.event_shape)`.
	**/
	public function covariance(?name:Dynamic):Dynamic;
	/**
		Computes the (Shannon) cross entropy.
		
		Denote this distribution (`self`) by `P` and the `other` distribution by
		`Q`. Assuming `P, Q` are absolutely continuous with respect to
		one another and permit densities `p(x) dr(x)` and `q(x) dr(x)`, (Shanon)
		cross entropy is defined as:
		
		```none
		H[P, Q] = E_p[-log q(X)] = -int_F p(x) log q(x) dr(x)
		```
		
		where `F` denotes the support of the random variable `X ~ P`.
		
		Args:
		  other: `tfp.distributions.Distribution` instance.
		  name: Python `str` prepended to names of ops created by this function.
		
		Returns:
		  cross_entropy: `self.dtype` `Tensor` with shape `[B1, ..., Bn]`
		    representing `n` different calculations of (Shanon) cross entropy.
	**/
	public function cross_entropy(other:Dynamic, ?name:Dynamic):Dynamic;
	/**
		The `DType` of `Tensor`s handled by this `Distribution`.
	**/
	public var dtype : Dynamic;
	/**
		Shannon entropy in nats.
	**/
	public function entropy(?name:Dynamic):Dynamic;
	/**
		Shape of a single sample from a single batch as a `TensorShape`.
		
		May be partially defined or unknown.
		
		Returns:
		  event_shape: `TensorShape`, possibly unknown.
	**/
	public var event_shape : Dynamic;
	/**
		Shape of a single sample from a single batch as a 1-D int32 `Tensor`.
		
		Args:
		  name: name to give to the op
		
		Returns:
		  event_shape: `Tensor`.
	**/
	public function event_shape_tensor(?name:Dynamic):Dynamic;
	/**
		Indicates that `batch_shape == []`.
		
		Args:
		  name: Python `str` prepended to names of ops created by this function.
		
		Returns:
		  is_scalar_batch: `bool` scalar `Tensor`.
	**/
	public function is_scalar_batch(?name:Dynamic):Dynamic;
	/**
		Indicates that `event_shape == []`.
		
		Args:
		  name: Python `str` prepended to names of ops created by this function.
		
		Returns:
		  is_scalar_event: `bool` scalar `Tensor`.
	**/
	public function is_scalar_event(?name:Dynamic):Dynamic;
	/**
		Computes the Kullback--Leibler divergence.
		
		Denote this distribution (`self`) by `p` and the `other` distribution by
		`q`. Assuming `p, q` are absolutely continuous with respect to reference
		measure `r`, the KL divergence is defined as:
		
		```none
		KL[p, q] = E_p[log(p(X)/q(X))]
		         = -int_F p(x) log q(x) dr(x) + int_F p(x) log p(x) dr(x)
		         = H[p, q] - H[p]
		```
		
		where `F` denotes the support of the random variable `X ~ p`, `H[., .]`
		denotes (Shanon) cross entropy, and `H[.]` denotes (Shanon) entropy.
		
		Args:
		  other: `tfp.distributions.Distribution` instance.
		  name: Python `str` prepended to names of ops created by this function.
		
		Returns:
		  kl_divergence: `self.dtype` `Tensor` with shape `[B1, ..., Bn]`
		    representing `n` different calculations of the Kullback-Leibler
		    divergence.
	**/
	public function kl_divergence(other:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Log cumulative distribution function.
		
		Given random variable `X`, the cumulative distribution function `cdf` is:
		
		```none
		log_cdf(x) := Log[ P[X <= x] ]
		```
		
		Often, a numerical approximation can be used for `log_cdf(x)` that yields
		a more accurate answer than simply taking the logarithm of the `cdf` when
		`x << -1`.
		
		Args:
		  value: `float` or `double` `Tensor`.
		  name: Python `str` prepended to names of ops created by this function.
		
		Returns:
		  logcdf: a `Tensor` of shape `sample_shape(x) + self.batch_shape` with
		    values of type `self.dtype`.
	**/
	public function log_cdf(value:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Log probability density/mass function.
		
		
		Additional documentation from `Multinomial`:
		
		For each batch of counts, `value = [n_0, ...
		,n_{k-1}]`, `P[value]` is the probability that after sampling `self.total_count`
		draws from this Multinomial distribution, the number of draws falling in class
		`j` is `n_j`. Since this definition is [exchangeable](
		https://en.wikipedia.org/wiki/Exchangeable_random_variables); different
		sequences have the same counts so the probability includes a combinatorial
		coefficient.
		
		Note: `value` must be a non-negative tensor with dtype `self.dtype`, have no
		fractional components, and such that
		`tf.reduce_sum(value, -1) = self.total_count`. Its shape must be broadcastable
		with `self.probs` and `self.total_count`.
		
		Args:
		  value: `float` or `double` `Tensor`.
		  name: Python `str` prepended to names of ops created by this function.
		
		Returns:
		  log_prob: a `Tensor` of shape `sample_shape(x) + self.batch_shape` with
		    values of type `self.dtype`.
	**/
	public function log_prob(value:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Log survival function.
		
		Given random variable `X`, the survival function is defined:
		
		```none
		log_survival_function(x) = Log[ P[X > x] ]
		                         = Log[ 1 - P[X <= x] ]
		                         = Log[ 1 - cdf(x) ]
		```
		
		Typically, different numerical approximations can be used for the log
		survival function, which are more accurate than `1 - cdf(x)` when `x >> 1`.
		
		Args:
		  value: `float` or `double` `Tensor`.
		  name: Python `str` prepended to names of ops created by this function.
		
		Returns:
		  `Tensor` of shape `sample_shape(x) + self.batch_shape` with values of type
		    `self.dtype`.
	**/
	public function log_survival_function(value:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Vector of coordinatewise logits.
	**/
	public var logits : Dynamic;
	/**
		Mean.
	**/
	public function mean(?name:Dynamic):Dynamic;
	/**
		Mode.
	**/
	public function mode(?name:Dynamic):Dynamic;
	/**
		Name prepended to all ops created by this `Distribution`.
	**/
	public var name : Dynamic;
	/**
		Shapes of parameters given the desired shape of a call to `sample()`.
		
		This is a class method that describes what key/value arguments are required
		to instantiate the given `Distribution` so that a particular shape is
		returned for that instance's call to `sample()`.
		
		Subclasses should override class method `_param_shapes`.
		
		Args:
		  sample_shape: `Tensor` or python list/tuple. Desired shape of a call to
		    `sample()`.
		  name: name to prepend ops with.
		
		Returns:
		  `dict` of parameter name to `Tensor` shapes.
	**/
	static public function param_shapes(sample_shape:Dynamic, ?name:Dynamic):Dynamic;
	/**
		param_shapes with static (i.e. `TensorShape`) shapes.
		
		This is a class method that describes what key/value arguments are required
		to instantiate the given `Distribution` so that a particular shape is
		returned for that instance's call to `sample()`. Assumes that the sample's
		shape is known statically.
		
		Subclasses should override class method `_param_shapes` to return
		constant-valued tensors when constant values are fed.
		
		Args:
		  sample_shape: `TensorShape` or python list/tuple. Desired shape of a call
		    to `sample()`.
		
		Returns:
		  `dict` of parameter name to `TensorShape`.
		
		Raises:
		  ValueError: if `sample_shape` is a `TensorShape` and is not fully defined.
	**/
	static public function param_static_shapes(sample_shape:Dynamic):Dynamic;
	/**
		Dictionary of parameters used to instantiate this `Distribution`.
	**/
	public var parameters : Dynamic;
	/**
		Probability density/mass function.
		
		Args:
		  value: `float` or `double` `Tensor`.
		  name: Python `str` prepended to names of ops created by this function.
		
		Returns:
		  prob: a `Tensor` of shape `sample_shape(x) + self.batch_shape` with
		    values of type `self.dtype`.
	**/
	public function prob(value:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Probability of drawing a `1` in that coordinate.
	**/
	public var probs : Dynamic;
	/**
		Quantile function. Aka "inverse cdf" or "percent point function".
		
		Given random variable `X` and `p in [0, 1]`, the `quantile` is:
		
		```none
		quantile(p) := x such that P[X <= x] == p
		```
		
		Args:
		  value: `float` or `double` `Tensor`.
		  name: Python `str` prepended to names of ops created by this function.
		
		Returns:
		  quantile: a `Tensor` of shape `sample_shape(x) + self.batch_shape` with
		    values of type `self.dtype`.
	**/
	public function quantile(value:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Describes how samples from the distribution are reparameterized.
		
		Currently this is one of the static instances
		`distributions.FULLY_REPARAMETERIZED`
		or `distributions.NOT_REPARAMETERIZED`.
		
		Returns:
		  An instance of `ReparameterizationType`.
	**/
	public var reparameterization_type : Dynamic;
	/**
		Generate samples of the specified shape.
		
		Note that a call to `sample()` without arguments will generate a single
		sample.
		
		Args:
		  sample_shape: 0D or 1D `int32` `Tensor`. Shape of the generated samples.
		  seed: Python integer seed for RNG
		  name: name to give to the op.
		
		Returns:
		  samples: a `Tensor` with prepended dimensions `sample_shape`.
	**/
	public function sample(?sample_shape:Dynamic, ?seed:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Standard deviation.
		
		Standard deviation is defined as,
		
		```none
		stddev = E[(X - E[X])**2]**0.5
		```
		
		where `X` is the random variable associated with this distribution, `E`
		denotes expectation, and `stddev.shape = batch_shape + event_shape`.
		
		Args:
		  name: Python `str` prepended to names of ops created by this function.
		
		Returns:
		  stddev: Floating-point `Tensor` with shape identical to
		    `batch_shape + event_shape`, i.e., the same shape as `self.mean()`.
	**/
	public function stddev(?name:Dynamic):Dynamic;
	/**
		Survival function.
		
		Given random variable `X`, the survival function is defined:
		
		```none
		survival_function(x) = P[X > x]
		                     = 1 - P[X <= x]
		                     = 1 - cdf(x).
		```
		
		Args:
		  value: `float` or `double` `Tensor`.
		  name: Python `str` prepended to names of ops created by this function.
		
		Returns:
		  `Tensor` of shape `sample_shape(x) + self.batch_shape` with values of type
		    `self.dtype`.
	**/
	public function survival_function(value:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Number of trials used to construct a sample.
	**/
	public var total_count : Dynamic;
	/**
		Python `bool` indicating possibly expensive checks are enabled.
	**/
	public var validate_args : Dynamic;
	/**
		Variance.
		
		Variance is defined as,
		
		```none
		Var = E[(X - E[X])**2]
		```
		
		where `X` is the random variable associated with this distribution, `E`
		denotes expectation, and `Var.shape = batch_shape + event_shape`.
		
		Args:
		  name: Python `str` prepended to names of ops created by this function.
		
		Returns:
		  variance: Floating-point `Tensor` with shape identical to
		    `batch_shape + event_shape`, i.e., the same shape as `self.mean()`.
	**/
	public function variance(?name:Dynamic):Dynamic;
}