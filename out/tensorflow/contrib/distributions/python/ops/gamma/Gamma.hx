/* This file is generated, do not edit! */
package tensorflow.contrib.distributions.python.ops.gamma;
@:pythonImport("tensorflow.contrib.distributions.python.ops.gamma", "Gamma") extern class Gamma {
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
		Construct Gamma distributions with parameters `alpha` and `beta`.
		
		The parameters `alpha` and `beta` must be shaped in a way that supports
		broadcasting (e.g. `alpha + beta` is a valid operation).
		
		Args:
		  alpha: Floating point tensor, the shape params of the
		    distribution(s).
		    alpha must contain only positive values.
		  beta: Floating point tensor, the inverse scale params of the
		    distribution(s).
		    beta must contain only positive values.
		  validate_args: Whether to assert that `a > 0, b > 0`, and that `x > 0` in
		    the methods `prob(x)` and `log_prob(x)`.  If `validate_args` is `False`
		    and the inputs are invalid, correct behavior is not guaranteed.
		  allow_nan_stats:  Boolean, default `False`.  If `False`, raise an
		    exception if a statistic (e.g. mean/mode/etc...) is undefined for any
		    batch member.  If `True`, batch members with valid parameters leading to
		    undefined statistics will return NaN for this statistic.
		  name: The name to prepend to all ops created by this distribution.
		
		Raises:
		  TypeError: if `alpha` and `beta` are different dtypes.
	**/
	@:native("__init__")
	public function ___init__(alpha:Dynamic, beta:Dynamic, ?validate_args:Dynamic, ?allow_nan_stats:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Construct Gamma distributions with parameters `alpha` and `beta`.
		
		The parameters `alpha` and `beta` must be shaped in a way that supports
		broadcasting (e.g. `alpha + beta` is a valid operation).
		
		Args:
		  alpha: Floating point tensor, the shape params of the
		    distribution(s).
		    alpha must contain only positive values.
		  beta: Floating point tensor, the inverse scale params of the
		    distribution(s).
		    beta must contain only positive values.
		  validate_args: Whether to assert that `a > 0, b > 0`, and that `x > 0` in
		    the methods `prob(x)` and `log_prob(x)`.  If `validate_args` is `False`
		    and the inputs are invalid, correct behavior is not guaranteed.
		  allow_nan_stats:  Boolean, default `False`.  If `False`, raise an
		    exception if a statistic (e.g. mean/mode/etc...) is undefined for any
		    batch member.  If `True`, batch members with valid parameters leading to
		    undefined statistics will return NaN for this statistic.
		  name: The name to prepend to all ops created by this distribution.
		
		Raises:
		  TypeError: if `alpha` and `beta` are different dtypes.
	**/
	public function new(alpha:Dynamic, beta:Dynamic, ?validate_args:Dynamic, ?allow_nan_stats:Dynamic, ?name:Dynamic):Void;
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
	public function _ones():Dynamic;
	/**
		Boolean describing behavior when a stat is undefined for batch member.
	**/
	public var allow_nan_stats : Dynamic;
	/**
		Shape parameter.
	**/
	public var alpha : Dynamic;
	/**
		Batch dimensions of this instance as a 1-D int32 `Tensor`.
		
		The product of the dimensions of the `batch_shape` is the number of
		independent distributions of this kind the instance represents.
		
		Args:
		  name: name to give to the op
		
		Returns:
		  `Tensor` `batch_shape`
	**/
	public function batch_shape(?name:Dynamic):Dynamic;
	/**
		Inverse scale parameter.
	**/
	public var beta : Dynamic;
	/**
		CDF of observations `x` under these Gamma distribution(s).
		
		Args:
		  x: tensor of dtype `dtype`, must be broadcastable with `alpha` and `beta`.
		  name: The name to give this op.
		
		Returns:
		  cdf: tensor of dtype `dtype`, the CDFs of `x`.
	**/
	public function cdf(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		dtype of samples from this distribution.
	**/
	public var dtype : Dynamic;
	/**
		The entropy of Gamma distribution(s).
		
		This is defined to be
		
		```
		entropy = alpha - log(beta) + log(Gamma(alpha))
		             + (1-alpha)digamma(alpha)
		```
		
		where digamma(alpha) is the digamma function.
		
		Args:
		  name: The name to give this op.
		
		Returns:
		  entropy: tensor of dtype `dtype`, the entropy.
	**/
	public function entropy(?name:Dynamic):Dynamic;
	/**
		Shape of a sample from a single distribution as a 1-D int32 `Tensor`.
		
		Args:
		  name: name to give to the op
		
		Returns:
		  `Tensor` `event_shape`
	**/
	public function event_shape(?name:Dynamic):Dynamic;
	/**
		`TensorShape` available at graph construction time.
		
		Same meaning as `batch_shape`. May be only partially defined.
		
		Returns:
		  `TensorShape` object.
	**/
	public function get_batch_shape():Dynamic;
	/**
		`TensorShape` available at graph construction time.
		
		Same meaning as `event_shape`. May be only partially defined.
		
		Returns:
		  `TensorShape` object.
	**/
	public function get_event_shape():Dynamic;
	public var is_continuous : Dynamic;
	public var is_reparameterized : Dynamic;
	/**
		Log CDF of observations `x` under these Gamma distribution(s).
		
		Args:
		  x: tensor of dtype `dtype`, must be broadcastable with `alpha` and `beta`.
		  name: The name to give this op.
		
		Returns:
		  log_cdf: tensor of dtype `dtype`, the log-CDFs of `x`.
	**/
	public function log_cdf(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Log of the probability density function.
	**/
	public function log_pdf(value:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Log of the probability mass function.
	**/
	public function log_pmf(value:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Log prob of observations in `x` under these Gamma distribution(s).
		
		Args:
		  x: tensor of dtype `dtype`, must be broadcastable with `alpha` and `beta`.
		  name: The name to give this op.
		
		Returns:
		  log_prob: tensor of dtype `dtype`, the log-PDFs of `x`.
		
		Raises:
		  TypeError: if `x` and `alpha` are different dtypes.
	**/
	public function log_prob(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Mean of each batch member.
	**/
	public function mean(?name:Dynamic):Dynamic;
	/**
		Mode of each batch member.
		
		The mode of a gamma distribution is `(alpha - 1) / beta` when `alpha > 1`,
		and `NaN` otherwise.  If `self.allow_nan_stats` is `False`, an exception
		will be raised rather than returning `NaN`.
		
		Args:
		  name:  A name to give this op.
		
		Returns:
		  The mode for every batch member, a `Tensor` with same `dtype` as self.
	**/
	public function mode(?name:Dynamic):Dynamic;
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
		Pdf of observations in `x` under these Gamma distribution(s).
		
		Args:
		  x: tensor of dtype `dtype`, must be broadcastable with `alpha` and `beta`.
		  name: The name to give this op.
		
		Returns:
		  prob: tensor of dtype `dtype`, the PDFs of `x`
		
		Raises:
		  TypeError: if `x` and `alpha` are different dtypes.
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
		Draws `n` samples from the Gamma distribution(s).
		
		See the doc for tf.random_gamma for further detail.
		
		Args:
		  n: Python integer, the number of observations to sample from each
		    distribution.
		  seed: Python integer, the random seed for this operation.
		  name: Optional name for the operation.
		
		Returns:
		  samples: a `Tensor` of shape `(n,) + self.batch_shape + self.event_shape`
		      with values of type `self.dtype`.
	**/
	public function sample_n(n:Dynamic, ?seed:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Standard deviation of this distribution.
	**/
	public function std(?name:Dynamic):Dynamic;
	/**
		Boolean describing behavior on invalid input.
	**/
	public var validate_args : Dynamic;
	/**
		Variance of each batch member.
	**/
	public function variance(?name:Dynamic):Dynamic;
}