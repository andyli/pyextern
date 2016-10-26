/* This file is generated, do not edit! */
package tensorflow.contrib.distributions.python.ops.dirichlet;
@:pythonImport("tensorflow.contrib.distributions.python.ops.dirichlet", "Dirichlet") extern class Dirichlet {
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
		Initialize a batch of Dirichlet distributions.
		
		Args:
		  alpha:  Positive floating point tensor with shape broadcastable to
		    `[N1,..., Nm, k]` `m >= 0`.  Defines this as a batch of `N1 x ... x Nm`
		     different `k` class Dirichlet distributions.
		  validate_args: Whether to assert valid values for parameters `alpha` and
		    `x` in `prob` and `log_prob`.  If `False`, correct behavior is not
		    guaranteed.
		  allow_nan_stats:  Boolean, default `False`.  If `False`, raise an
		    exception if a statistic (e.g. mean/mode/etc...) is undefined for any
		    batch member.  If `True`, batch members with valid parameters leading to
		    undefined statistics will return NaN for this statistic.
		  name: The name to prefix Ops created by this distribution class.
		
		Examples:
		
		```python
		# Define 1-batch of 2-class Dirichlet distributions,
		# also known as a Beta distribution.
		dist = Dirichlet([1.1, 2.0])
		
		# Define a 2-batch of 3-class distributions.
		dist = Dirichlet([[1.0, 2.0, 3.0], [4.0, 5.0, 6.0]])
		```
	**/
	@:native("__init__")
	public function ___init__(alpha:Dynamic, ?validate_args:Dynamic, ?allow_nan_stats:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Initialize a batch of Dirichlet distributions.
		
		Args:
		  alpha:  Positive floating point tensor with shape broadcastable to
		    `[N1,..., Nm, k]` `m >= 0`.  Defines this as a batch of `N1 x ... x Nm`
		     different `k` class Dirichlet distributions.
		  validate_args: Whether to assert valid values for parameters `alpha` and
		    `x` in `prob` and `log_prob`.  If `False`, correct behavior is not
		    guaranteed.
		  allow_nan_stats:  Boolean, default `False`.  If `False`, raise an
		    exception if a statistic (e.g. mean/mode/etc...) is undefined for any
		    batch member.  If `True`, batch members with valid parameters leading to
		    undefined statistics will return NaN for this statistic.
		  name: The name to prefix Ops created by this distribution class.
		
		Examples:
		
		```python
		# Define 1-batch of 2-class Dirichlet distributions,
		# also known as a Beta distribution.
		dist = Dirichlet([1.1, 2.0])
		
		# Define a 2-batch of 3-class distributions.
		dist = Dirichlet([[1.0, 2.0, 3.0], [4.0, 5.0, 6.0]])
		```
	**/
	public function new(alpha:Dynamic, ?validate_args:Dynamic, ?allow_nan_stats:Dynamic, ?name:Dynamic):Void;
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
		Check x for proper shape, values, then return tensor version.
	**/
	public function _check_x(x:Dynamic):Dynamic;
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
		Cumulative distribution function.
	**/
	public function cdf(x:Dynamic, ?name:Dynamic):Dynamic;
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
		`Log(P[counts])`, computed for every batch member.
		
		Args:
		  x:  Non-negative tensor with dtype `dtype` and whose shape can
		    be broadcast with `self.alpha`.  For fixed leading dimensions, the last
		    dimension represents counts for the corresponding Dirichlet distribution
		    in `self.alpha`. `x` is only legal if it sums up to one.
		  name:  Name to give this Op, defaults to "log_prob".
		
		Returns:
		  Log probabilities for each record, shape `[N1,...,Nm]`.
	**/
	public function log_prob(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Mean of the distribution.
	**/
	public function mean(?name:Dynamic):Dynamic;
	/**
		Mode of the distribution.
		
		Note that the mode for the Beta distribution is only defined
		when `alpha > 1`. This returns the mode when `alpha > 1`,
		and NaN otherwise. If `self.allow_nan_stats` is `False`, an exception
		will be raised rather than returning `NaN`.
		
		Args:
		  name: The name for this op.
		
		Returns:
		  Mode of the Dirichlet distribution.
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
		`P[x]`, computed for every batch member.
		
		Args:
		  x:  Non-negative tensor with dtype `dtype` and whose shape can
		    be broadcast with `self.alpha`.  For fixed leading dimensions, the last
		    dimension represents x for the corresponding Dirichlet distribution in
		    `self.alpha` and `self.beta`. `x` is only legal if it sums up to one.
		  name:  Name to give this Op, defaults to "prob".
		
		Returns:
		  Probabilities for each record, shape `[N1,...,Nm]`.
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
		Sample `n` observations from the distributions.
		
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