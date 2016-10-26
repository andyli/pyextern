/* This file is generated, do not edit! */
package tensorflow.contrib.distributions.python.ops.mvn;
@:pythonImport("tensorflow.contrib.distributions.python.ops.mvn", "MultivariateNormalOperatorPD") extern class MultivariateNormalOperatorPD {
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
	static public function __class__(name:Dynamic, bases:Dynamic, namespace:Dynamic):Dynamic;
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
		Multivariate Normal distributions on `R^k`.
		
		User must provide means `mu`, and an instance of `OperatorPDBase`, `cov`,
		which determines the covariance.
		
		Args:
		  mu: Floating point tensor with shape `[N1,...,Nb, k]`, `b >= 0`.
		  cov: Instance of `OperatorPDBase` with same `dtype` as `mu` and shape
		    `[N1,...,Nb, k, k]`.
		  validate_args: Whether to validate input with asserts.  If `validate_args`
		    is `False`, and the inputs are invalid, correct behavior is not
		    guaranteed.
		  allow_nan_stats:  `Boolean`, default `False`.  If `False`, raise an
		    exception if a statistic (e.g. mean/mode/etc...) is undefined for any
		    batch member If `True`, batch members with valid parameters leading to
		    undefined statistics will return NaN for this statistic.
		  name: The name to give Ops created by the initializer.
		
		Raises:
		  TypeError: If `mu` and `cov` are different dtypes.
	**/
	@:native("__init__")
	public function ___init__(mu:Dynamic, cov:Dynamic, ?validate_args:Dynamic, ?allow_nan_stats:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Multivariate Normal distributions on `R^k`.
		
		User must provide means `mu`, and an instance of `OperatorPDBase`, `cov`,
		which determines the covariance.
		
		Args:
		  mu: Floating point tensor with shape `[N1,...,Nb, k]`, `b >= 0`.
		  cov: Instance of `OperatorPDBase` with same `dtype` as `mu` and shape
		    `[N1,...,Nb, k, k]`.
		  validate_args: Whether to validate input with asserts.  If `validate_args`
		    is `False`, and the inputs are invalid, correct behavior is not
		    guaranteed.
		  allow_nan_stats:  `Boolean`, default `False`.  If `False`, raise an
		    exception if a statistic (e.g. mean/mode/etc...) is undefined for any
		    batch member If `True`, batch members with valid parameters leading to
		    undefined statistics will return NaN for this statistic.
		  name: The name to give Ops created by the initializer.
		
		Raises:
		  TypeError: If `mu` and `cov` are different dtypes.
	**/
	public function new(mu:Dynamic, cov:Dynamic, ?validate_args:Dynamic, ?allow_nan_stats:Dynamic, ?name:Dynamic):Void;
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
	static public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	static public var _abc_cache : Dynamic;
	static public var _abc_negative_cache : Dynamic;
	static public var _abc_negative_cache_version : Dynamic;
	static public var _abc_registry : Dynamic;
	/**
		Return `mu` after validity checks and possibly with assertations.
	**/
	public function _check_mu(mu:Dynamic):Dynamic;
	/**
		`Boolean` describing behavior when stats are undefined.
	**/
	public var allow_nan_stats : Dynamic;
	/**
		Batch dimensions of this instance as a 1-D int32 `Tensor`.
	**/
	public function batch_shape(?name:Dynamic):Dynamic;
	/**
		Cumulative distribution function.
	**/
	public function cdf(value:Dynamic, ?name:Dynamic):Dynamic;
	/**
		dtype of samples from this distribution.
	**/
	public var dtype : Dynamic;
	/**
		The entropies of these Multivariate Normals.
		
		Args:
		  name: The name to give this op.
		
		Returns:
		  entropy: tensor of dtype `dtype`, the entropies.
	**/
	public function entropy(?name:Dynamic):Dynamic;
	/**
		Shape of a sample from a single distribution as a 1-D int32 `Tensor`.
	**/
	public function event_shape(?name:Dynamic):Dynamic;
	/**
		`TensorShape` available at graph construction time.
	**/
	public function get_batch_shape():Dynamic;
	/**
		`TensorShape` available at graph construction time.
	**/
	public function get_event_shape():Dynamic;
	public var is_continuous : Dynamic;
	public var is_reparameterized : Dynamic;
	/**
		Log CDF.
	**/
	public function log_cdf(value:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Log of the probability density function.
	**/
	public function log_pdf(value:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Log of the probability mass function.
	**/
	public function log_pmf(value:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Log prob of observations `x` given these Multivariate Normals.
		
		`x` is a batch vector with compatible shape if `x` is a `Tensor` whose
		shape can be broadcast up to either:
		
		````
		self.batch_shape + self.event_shape
		OR
		[M1,...,Mm] + self.batch_shape + self.event_shape
		```
		
		Args:
		  x: Compatible batch vector with same `dtype` as this distribution.
		  name: The name to give this op.
		
		Returns:
		  log_prob: tensor of dtype `dtype`, the log-PDFs of `x`.
	**/
	public function log_prob(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Log of determinant of covariance matrix.
	**/
	public function log_sigma_det(?name:Dynamic):Dynamic;
	/**
		Mean of each batch member.
	**/
	public function mean(?name:Dynamic):Dynamic;
	/**
		Mode of each batch member.
	**/
	public function mode(?name:Dynamic):Dynamic;
	public var mu : Dynamic;
	/**
		Name to prepend to all ops.
	**/
	public var name : Dynamic;
	/**
		The probability density function.
	**/
	public function pdf(value:Dynamic, ?name:Dynamic):Dynamic;
	/**
		The probability mass function.
	**/
	public function pmf(value:Dynamic, ?name:Dynamic):Dynamic;
	/**
		The PDF of observations `x` under these Multivariate Normals.
		
		`x` is a batch vector with compatible shape if `x` is a `Tensor` whose
		shape can be broadcast up to either:
		
		````
		self.batch_shape + self.event_shape
		OR
		[M1,...,Mm] + self.batch_shape + self.event_shape
		```
		
		Args:
		  x: Compatible batch vector with same `dtype` as this distribution.
		  name: The name to give this op.
		
		Returns:
		  prob: tensor of dtype `dtype`, the prob values of `x`.
	**/
	public function prob(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Generate samples of the specified shape for each batched distribution.
		
		Note that a call to `sample()` without arguments will generate a single
		sample per batched distribution.
		
		Args:
		  sample_shape: `int32` `Tensor` or tuple or list. Shape of the generated
		    samples.
		  seed: Python integer seed for RNG
		  name: name to give to the op.
		
		Returns:
		  samples: a `Tensor` of dtype `self.dtype` and shape
		      `sample_shape + self.batch_shape + self.event_shape`.
	**/
	public function sample(?sample_shape:Dynamic, ?seed:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Sample `n` observations from the Multivariate Normal Distributions.
		
		Args:
		  n: `Scalar`, type int32, the number of observations to sample.
		  seed: Python integer, the random seed.
		  name: The name to give this op.
		
		Returns:
		  samples: `[n, ...]`, a `Tensor` of `n` samples for each
		    of the distributions determined by broadcasting the hyperparameters.
	**/
	public function sample_n(n:Dynamic, ?seed:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Dense (batch) covariance matrix, if available.
	**/
	public var sigma : Dynamic;
	/**
		Determinant of covariance matrix.
	**/
	public function sigma_det(?name:Dynamic):Dynamic;
	/**
		Standard deviation of the distribution.
	**/
	public function std(?name:Dynamic):Dynamic;
	/**
		`Boolean` describing behavior on invalid input.
	**/
	public var validate_args : Dynamic;
	/**
		Variance of each batch member.
	**/
	public function variance(?name:Dynamic):Dynamic;
}