/* This file is generated, do not edit! */
package tensorflow.contrib.distributions.python.ops.bernoulli;
@:pythonImport("tensorflow.contrib.distributions.python.ops.bernoulli", "Bernoulli") extern class Bernoulli {
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
		Construct Bernoulli distributions.
		
		Args:
		  logits: An N-D `Tensor` representing the log-odds
		    of a positive event. Each entry in the `Tensor` parametrizes
		    an independent Bernoulli distribution where the probability of an event
		    is sigmoid(logits).
		  p: An N-D `Tensor` representing the probability of a positive
		      event. Each entry in the `Tensor` parameterizes an independent
		      Bernoulli distribution.
		  dtype: dtype for samples.
		  validate_args: Whether to assert that `0 <= p <= 1`. If not validate_args,
		   `log_pmf` may return nans.
		  allow_nan_stats:  Boolean, default `False`.  If `False`, raise an
		    exception if a statistic (e.g. mean/mode/etc...) is undefined for any
		    batch member.  If `True`, batch members with valid parameters leading to
		    undefined statistics will return NaN for this statistic.
		  name: A name for this distribution.
		
		Raises:
		  ValueError: If p and logits are passed, or if neither are passed.
	**/
	@:native("__init__")
	public function ___init__(?logits:Dynamic, ?p:Dynamic, ?dtype:Dynamic, ?validate_args:Dynamic, ?allow_nan_stats:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Construct Bernoulli distributions.
		
		Args:
		  logits: An N-D `Tensor` representing the log-odds
		    of a positive event. Each entry in the `Tensor` parametrizes
		    an independent Bernoulli distribution where the probability of an event
		    is sigmoid(logits).
		  p: An N-D `Tensor` representing the probability of a positive
		      event. Each entry in the `Tensor` parameterizes an independent
		      Bernoulli distribution.
		  dtype: dtype for samples.
		  validate_args: Whether to assert that `0 <= p <= 1`. If not validate_args,
		   `log_pmf` may return nans.
		  allow_nan_stats:  Boolean, default `False`.  If `False`, raise an
		    exception if a statistic (e.g. mean/mode/etc...) is undefined for any
		    batch member.  If `True`, batch members with valid parameters leading to
		    undefined statistics will return NaN for this statistic.
		  name: A name for this distribution.
		
		Raises:
		  ValueError: If p and logits are passed, or if neither are passed.
	**/
	public function new(?logits:Dynamic, ?p:Dynamic, ?dtype:Dynamic, ?validate_args:Dynamic, ?allow_nan_stats:Dynamic, ?name:Dynamic):Void;
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
		Boolean describing behavior when a stat is undefined for batch member.
	**/
	public var allow_nan_stats : Dynamic;
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
		Cumulative distribution function.
	**/
	public function cdf(value:Dynamic, ?name:Dynamic):Dynamic;
	/**
		dtype of samples from this distribution.
	**/
	public var dtype : Dynamic;
	/**
		Entropy of the distribution.
		
		Args:
		  name: Name for the op.
		
		Returns:
		  entropy: `Tensor` of the same type and shape as `p`.
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
	**/
	public function get_batch_shape():Dynamic;
	/**
		`TensorShape` available at graph construction time.
		
		Same meaning as `event_shape`. May be only partially defined.
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
		Log of the probability mass function.
		
		Args:
		  event: `int32` or `int64` binary Tensor.
		  name: A name for this operation (optional).
		
		Returns:
		  The log-probabilities of the events.
	**/
	public function log_prob(event:Dynamic, ?name:Dynamic):Dynamic;
	public var logits : Dynamic;
	/**
		Mean of the distribution.
		
		Args:
		  name: Name for the op.
		
		Returns:
		  mean: `Tensor` of the same type and shape as `p`.
	**/
	public function mean(?name:Dynamic):Dynamic;
	/**
		Mode of the distribution.
		
		1 if p > 1-p. 0 otherwise.
		
		Args:
		  name: Name for the op.
		
		Returns:
		  mode: binary `Tensor` of type self.dtype.
	**/
	public function mode(?name:Dynamic):Dynamic;
	/**
		Name to prepend to all ops.
	**/
	public var name : Dynamic;
	public var p : Dynamic;
	/**
		The probability density function.
	**/
	public function pdf(value:Dynamic, ?name:Dynamic):Dynamic;
	/**
		The probability mass function.
	**/
	public function pmf(value:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Probability mass function.
		
		Args:
		  event: `int32` or `int64` binary Tensor; must be broadcastable with `p`.
		  name: A name for this operation.
		
		Returns:
		  The probabilities of the events.
	**/
	public function prob(event:Dynamic, ?name:Dynamic):Dynamic;
	/**
		1-p.
	**/
	public var q : Dynamic;
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
		Generate `n` samples.
		
		Args:
		  n: scalar.  Number of samples to draw from each distribution.
		  seed: Python integer seed for RNG.
		  name: name to give to the op.
		
		Returns:
		  samples: a `Tensor` of shape `(n,) + self.batch_shape` with values of type
		      `self.dtype`.
	**/
	public function sample_n(n:Dynamic, ?seed:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Standard deviation of the distribution.
		
		Args:
		  name: Name for the op.
		
		Returns:
		  std: `Tensor` of the same type and shape as `p`.
	**/
	public function std(?name:Dynamic):Dynamic;
	/**
		Boolean describing behavior on invalid input.
	**/
	public var validate_args : Dynamic;
	/**
		Variance of the distribution.
		
		Args:
		  name: Name for the op.
		
		Returns:
		  variance: `Tensor` of the same type and shape as `p`.
	**/
	public function variance(?name:Dynamic):Dynamic;
}