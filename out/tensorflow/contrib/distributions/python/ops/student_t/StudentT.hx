/* This file is generated, do not edit! */
package tensorflow.contrib.distributions.python.ops.student_t;
@:pythonImport("tensorflow.contrib.distributions.python.ops.student_t", "StudentT") extern class StudentT {
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
		Construct Student's t distributions.
		
		The distributions have degree of freedom `df`, mean `mu`, and scale `sigma`.
		
		The parameters `df`, `mu`, and `sigma` must be shaped in a way that supports
		broadcasting (e.g. `df + mu + sigma` is a valid operation).
		
		Args:
		  df: Floating point tensor, the degrees of freedom of the
		    distribution(s). `df` must contain only positive values.
		  mu: Floating point tensor, the means of the distribution(s).
		  sigma: Floating point tensor, the scaling factor for the
		    distribution(s). `sigma` must contain only positive values.
		    Note that `sigma` is not the standard deviation of this distribution.
		  validate_args: Whether to assert that `df > 0, sigma > 0`. If
		    `validate_args` is `False` and inputs are invalid, correct behavior is
		    not guaranteed.
		  allow_nan_stats:  Boolean, default `False`.  If `False`, raise an
		    exception if a statistic (e.g. mean/mode/etc...) is undefined for any
		    batch member.  If `True`, batch members with valid parameters leading to
		    undefined statistics will return NaN for this statistic.
		  name: The name to give Ops created by the initializer.
		
		Raises:
		  TypeError: if mu and sigma are different dtypes.
	**/
	@:native("__init__")
	public function ___init__(df:Dynamic, mu:Dynamic, sigma:Dynamic, ?validate_args:Dynamic, ?allow_nan_stats:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Construct Student's t distributions.
		
		The distributions have degree of freedom `df`, mean `mu`, and scale `sigma`.
		
		The parameters `df`, `mu`, and `sigma` must be shaped in a way that supports
		broadcasting (e.g. `df + mu + sigma` is a valid operation).
		
		Args:
		  df: Floating point tensor, the degrees of freedom of the
		    distribution(s). `df` must contain only positive values.
		  mu: Floating point tensor, the means of the distribution(s).
		  sigma: Floating point tensor, the scaling factor for the
		    distribution(s). `sigma` must contain only positive values.
		    Note that `sigma` is not the standard deviation of this distribution.
		  validate_args: Whether to assert that `df > 0, sigma > 0`. If
		    `validate_args` is `False` and inputs are invalid, correct behavior is
		    not guaranteed.
		  allow_nan_stats:  Boolean, default `False`.  If `False`, raise an
		    exception if a statistic (e.g. mean/mode/etc...) is undefined for any
		    batch member.  If `True`, batch members with valid parameters leading to
		    undefined statistics will return NaN for this statistic.
		  name: The name to give Ops created by the initializer.
		
		Raises:
		  TypeError: if mu and sigma are different dtypes.
	**/
	public function new(df:Dynamic, mu:Dynamic, sigma:Dynamic, ?validate_args:Dynamic, ?allow_nan_stats:Dynamic, ?name:Dynamic):Void;
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
	public function _zeros():Dynamic;
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
		Degrees of freedom in these Student's t distribution(s).
	**/
	public var df : Dynamic;
	/**
		dtype of samples from this distribution.
	**/
	public var dtype : Dynamic;
	/**
		The entropy of Student t distribution(s).
		
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
		Log prob of observations in `x` under these Student's t-distribution(s).
		
		Args:
		  x: tensor of dtype `dtype`, must be broadcastable with `mu` and `df`.
		  name: The name to give this op.
		
		Returns:
		  log_prob: tensor of dtype `dtype`, the log-PDFs of `x`.
	**/
	public function log_prob(x:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Mean of the distribution.
		
		The mean of Student's T equals `mu` if `df > 1`, otherwise it is `NaN`.  If
		`self.allow_nan_stats=False`, then an exception will be raised rather than
		returning `NaN`.
		
		Args:
		  name:  A name to give this op.
		
		Returns:
		  The mean for every batch member, a `Tensor` with same `dtype` as self.
	**/
	public function mean(?name:Dynamic):Dynamic;
	/**
		Mode of the distribution.
	**/
	public function mode(?name:Dynamic):Dynamic;
	/**
		Locations of these Student's t distribution(s).
	**/
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
		The PDF of observations in `x` under these Student's t distribution(s).
		
		Args:
		  x: tensor of dtype `dtype`, must be broadcastable with `df`, `mu`, and
		    `sigma`.
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
		Sample `n` observations from the Student t Distributions.
		
		Args:
		  n: `Scalar`, type int32, the number of observations to sample.
		  seed: Python integer, the random seed.
		  name: The name to give this op.
		
		Returns:
		  samples: a `Tensor` of shape `(n,) + self.batch_shape + self.event_shape`
		      with values of type `self.dtype`.
	**/
	public function sample_n(n:Dynamic, ?seed:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Scaling factors of these Student's t distribution(s).
	**/
	public var sigma : Dynamic;
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
		
		Variance for Student's T equals
		
		```
		df / (df - 2), when df > 2
		infinity, when 1 < df <= 2
		NaN, when df <= 1
		```
		
		The NaN state occurs because mean is undefined for `df <= 1`, and if
		`self.allow_nan_stats` is `False`, an exception will be raised if any batch
		members fall into this state.
		
		Args:
		  name:  A name for this op.
		
		Returns:
		  The variance for every batch member, a `Tensor` with same `dtype` as self.
	**/
	public function variance(?name:Dynamic):Dynamic;
}