/* This file is generated, do not edit! */
package tensorflow.contrib.distributions.python.ops.multinomial;
@:pythonImport("tensorflow.contrib.distributions.python.ops.multinomial", "Multinomial") extern class Multinomial {
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
		Initialize a batch of Multinomial distributions.
		
		Args:
		  n:  Non-negative floating point tensor with shape broadcastable to
		    `[N1,..., Nm]` with `m >= 0`. Defines this as a batch of
		    `N1 x ... x Nm` different Multinomial distributions.  Its components
		    should be equal to integer values.
		  logits: Floating point tensor representing the log-odds of a
		    positive event with shape broadcastable to `[N1,..., Nm, k], m >= 0`,
		    and the same dtype as `n`. Defines this as a batch of `N1 x ... x Nm`
		    different `k` class Multinomial distributions.
		  p:  Positive floating point tensor with shape broadcastable to
		    `[N1,..., Nm, k]` `m >= 0` and same dtype as `n`.  Defines this as
		    a batch of `N1 x ... x Nm` different `k` class Multinomial
		    distributions. `p`'s components in the last portion of its shape should
		    sum up to 1.
		  validate_args: Whether to assert valid values for parameters `n` and `p`,
		    and `x` in `prob` and `log_prob`.  If `False`, correct behavior is not
		    guaranteed.
		  allow_nan_stats:  Boolean, default `False`.  If `False`, raise an
		    exception if a statistic (e.g. mean/mode/etc...) is undefined for any
		    batch member.  If `True`, batch members with valid parameters leading to
		    undefined statistics will return NaN for this statistic.
		  name: The name to prefix Ops created by this distribution class.
		
		Examples:
		
		```python
		# Define 1-batch of 2-class multinomial distribution,
		# also known as a Binomial distribution.
		dist = Multinomial(n=2., p=[.1, .9])
		
		# Define a 2-batch of 3-class distributions.
		dist = Multinomial(n=[4., 5], p=[[.1, .3, .6], [.4, .05, .55]])
		```
	**/
	@:native("__init__")
	public function ___init__(n:Dynamic, ?logits:Dynamic, ?p:Dynamic, ?validate_args:Dynamic, ?allow_nan_stats:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Initialize a batch of Multinomial distributions.
		
		Args:
		  n:  Non-negative floating point tensor with shape broadcastable to
		    `[N1,..., Nm]` with `m >= 0`. Defines this as a batch of
		    `N1 x ... x Nm` different Multinomial distributions.  Its components
		    should be equal to integer values.
		  logits: Floating point tensor representing the log-odds of a
		    positive event with shape broadcastable to `[N1,..., Nm, k], m >= 0`,
		    and the same dtype as `n`. Defines this as a batch of `N1 x ... x Nm`
		    different `k` class Multinomial distributions.
		  p:  Positive floating point tensor with shape broadcastable to
		    `[N1,..., Nm, k]` `m >= 0` and same dtype as `n`.  Defines this as
		    a batch of `N1 x ... x Nm` different `k` class Multinomial
		    distributions. `p`'s components in the last portion of its shape should
		    sum up to 1.
		  validate_args: Whether to assert valid values for parameters `n` and `p`,
		    and `x` in `prob` and `log_prob`.  If `False`, correct behavior is not
		    guaranteed.
		  allow_nan_stats:  Boolean, default `False`.  If `False`, raise an
		    exception if a statistic (e.g. mean/mode/etc...) is undefined for any
		    batch member.  If `True`, batch members with valid parameters leading to
		    undefined statistics will return NaN for this statistic.
		  name: The name to prefix Ops created by this distribution class.
		
		Examples:
		
		```python
		# Define 1-batch of 2-class multinomial distribution,
		# also known as a Binomial distribution.
		dist = Multinomial(n=2., p=[.1, .9])
		
		# Define a 2-batch of 3-class distributions.
		dist = Multinomial(n=[4., 5], p=[[.1, .3, .6], [.4, .05, .55]])
		```
	**/
	public function new(n:Dynamic, ?logits:Dynamic, ?p:Dynamic, ?validate_args:Dynamic, ?allow_nan_stats:Dynamic, ?name:Dynamic):Void;
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
		Check counts for proper shape, values, then return tensor version.
	**/
	public function _check_counts(counts:Dynamic):Dynamic;
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
		Entropy of the distribution in nats.
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
		  batch shape
	**/
	public function get_batch_shape():Dynamic;
	/**
		`TensorShape` available at graph construction time.
		
		Same meaning as `event_shape`. May be only partially defined.
		
		Returns:
		  event shape
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
		`Log(P[counts])`, computed for every batch member.
		
		For each batch of counts `[n_1,...,n_k]`, `P[counts]` is the probability
		that after sampling `n` draws from this Multinomial distribution, the
		number of draws falling in class `j` is `n_j`.  Note that different
		sequences of draws can result in the same counts, thus the probability
		includes a combinatorial coefficient.
		
		Args:
		  counts:  Non-negative tensor with dtype `dtype` and whose shape can
		    be broadcast with `self.p` and `self.n`.  For fixed leading dimensions,
		    the last dimension represents counts for the corresponding Multinomial
		    distribution in `self.p`. `counts` is only legal if it sums up to `n`
		    and its components are equal to integer values.
		  name:  Name to give this Op, defaults to "log_prob".
		
		Returns:
		  Log probabilities for each record, shape `[N1,...,Nm]`.
	**/
	public function log_prob(counts:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Log-odds.
	**/
	public var logits : Dynamic;
	/**
		Mean of the distribution.
	**/
	public function mean(?name:Dynamic):Dynamic;
	/**
		Mode of the distribution.
	**/
	public function mode(?name:Dynamic):Dynamic;
	/**
		Number of trials.
	**/
	public var n : Dynamic;
	/**
		Name to prepend to all ops.
	**/
	public var name : Dynamic;
	/**
		Event probabilities.
	**/
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
		`P[counts]`, computed for every batch member.
		
		For each batch of counts `[n_1,...,n_k]`, `P[counts]` is the probability
		that after sampling `n` draws from this Multinomial distribution, the
		number of draws falling in class `j` is `n_j`.  Note that different
		sequences of draws can result in the same counts, thus the probability
		includes a combinatorial coefficient.
		
		Args:
		  counts:  Non-negative tensor with dtype `dtype` and whose shape can
		    be broadcast with `self.p` and `self.n`.  For fixed leading dimensions,
		    the last dimension represents counts for the corresponding Multinomial
		    distribution in `self.p`. `counts` is only legal if it sums up to `n`
		    and its components are equal to integer values.
		  name:  Name to give this Op, defaults to "prob".
		
		Returns:
		  Probabilities for each record, shape `[N1,...,Nm]`.
	**/
	public function prob(counts:Dynamic, ?name:Dynamic):Dynamic;
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
		  n: scalar. Number of samples to draw from each distribution.
		  seed: Python integer seed for RNG
		  name: name to give to the op.
		
		Returns:
		  samples: a `Tensor` of shape `(n,) + self.batch_shape + self.event_shape`
		      with values of type `self.dtype`.
	**/
	public function sample_n(n:Dynamic, ?seed:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Standard deviation of the distribution.
	**/
	public function std(?name:Dynamic):Dynamic;
	/**
		Boolean describing behavior on invalid input.
	**/
	public var validate_args : Dynamic;
	/**
		Variance of the distribution.
	**/
	public function variance(?name:Dynamic):Dynamic;
}