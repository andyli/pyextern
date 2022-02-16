/* This file is generated, do not edit! */
package torch.distributions.kumaraswamy;
@:pythonImport("torch.distributions.kumaraswamy", "Kumaraswamy") extern class Kumaraswamy {
	static public var __annotations__ : Dynamic;
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	@:native("__init__")
	public function ___init__(concentration1:Dynamic, concentration0:Dynamic, ?validate_args:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(concentration1:Dynamic, concentration0:Dynamic, ?validate_args:Dynamic):Void;
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
	/**
		Returns the size of the sample returned by the distribution, given
		a `sample_shape`. Note, that the batch and event shapes of a distribution
		instance are fixed at the time of construction. If this is empty, the
		returned shape is upcast to (1,).
		
		Args:
		    sample_shape (torch.Size): the size of the sample to be drawn.
	**/
	public function _extended_shape(?sample_shape:Dynamic):Dynamic;
	public function _get_checked_instance(cls:Dynamic, ?_instance:Dynamic):Dynamic;
	/**
		This conditionally flips ``value -> 1-value`` to ensure :meth:`cdf` is
		monotone increasing.
	**/
	public function _monotonize_cdf(value:Dynamic):Dynamic;
	static public var _validate_args : Dynamic;
	/**
		Argument validation for distribution methods such as `log_prob`,
		`cdf` and `icdf`. The rightmost dimensions of a value to be
		scored via these methods must agree with the distribution's batch
		and event shapes.
		
		Args:
		    value (Tensor): the tensor whose log probability is to be
		        computed by the `log_prob` method.
		Raises
		    ValueError: when the rightmost dimensions of `value` do not match the
		        distribution's batch and event shapes.
	**/
	public function _validate_sample(value:Dynamic):Dynamic;
	static public var arg_constraints : Dynamic;
	/**
		Returns the shape over which parameters are batched.
	**/
	public var batch_shape : Dynamic;
	/**
		Computes the cumulative distribution function by inverting the
		transform(s) and computing the score of the base distribution.
	**/
	public function cdf(value:Dynamic):Dynamic;
	/**
		Returns entropy of distribution, batched over batch_shape.
		
		Returns:
		    Tensor of shape batch_shape.
	**/
	public function entropy():Dynamic;
	/**
		Returns tensor containing all values supported by a discrete
		distribution. The result will enumerate over dimension 0, so the shape
		of the result will be `(cardinality,) + batch_shape + event_shape`
		(where `event_shape = ()` for univariate distributions).
		
		Note that this enumerates over all batched tensors in lock-step
		`[[0, 0], [1, 1], ...]`. With `expand=False`, enumeration happens
		along dim 0, but with the remaining batch dimensions being
		singleton dimensions, `[[0], [1], ..`.
		
		To iterate over the full Cartesian product use
		`itertools.product(m.enumerate_support())`.
		
		Args:
		    expand (bool): whether to expand the support over the
		        batch dims to match the distribution's `batch_shape`.
		
		Returns:
		    Tensor iterating over dimension 0.
	**/
	public function enumerate_support(?expand:Dynamic):Dynamic;
	/**
		Returns the shape of a single sample (without batching).
	**/
	public var event_shape : Dynamic;
	/**
		Returns a new distribution instance (or populates an existing instance
		provided by a derived class) with batch dimensions expanded to
		`batch_shape`. This method calls :class:`~torch.Tensor.expand` on
		the distribution's parameters. As such, this does not allocate new
		memory for the expanded distribution instance. Additionally,
		this does not repeat any args checking or parameter broadcasting in
		`__init__.py`, when an instance is first created.
		
		Args:
		    batch_shape (torch.Size): the desired expanded size.
		    _instance: new instance provided by subclasses that
		        need to override `.expand`.
		
		Returns:
		    New distribution instance with batch dimensions expanded to
		    `batch_size`.
	**/
	public function expand(batch_shape:Dynamic, ?_instance:Dynamic):Dynamic;
	static public var has_enumerate_support : Dynamic;
	static public var has_rsample : Dynamic;
	/**
		Computes the inverse cumulative distribution function using
		transform(s) and computing the score of the base distribution.
	**/
	public function icdf(value:Dynamic):Dynamic;
	/**
		Scores the sample by inverting the transform(s) and computing the score
		using the score of the base distribution and the log abs det jacobian.
	**/
	public function log_prob(value:Dynamic):Dynamic;
	/**
		Returns the mean of the distribution.
	**/
	public var mean : Dynamic;
	/**
		Returns perplexity of distribution, batched over batch_shape.
		
		Returns:
		    Tensor of shape batch_shape.
	**/
	public function perplexity():Dynamic;
	/**
		Generates a sample_shape shaped reparameterized sample or sample_shape
		shaped batch of reparameterized samples if the distribution parameters
		are batched. Samples first from base distribution and applies
		`transform()` for every transform in the list.
	**/
	public function rsample(?sample_shape:Dynamic):Dynamic;
	/**
		Generates a sample_shape shaped sample or sample_shape shaped batch of
		samples if the distribution parameters are batched. Samples first from
		base distribution and applies `transform()` for every transform in the
		list.
	**/
	public function sample(?sample_shape:Dynamic):Dynamic;
	/**
		Generates n samples or n batches of samples if the distribution
		parameters are batched.
	**/
	public function sample_n(n:Dynamic):Dynamic;
	/**
		Sets whether validation is enabled or disabled.
		
		The default behavior mimics Python's ``assert`` statement: validation
		is on by default, but is disabled if Python is run in optimized mode
		(via ``python -O``). Validation may be expensive, so you may want to
		disable it once a model is working.
		
		Args:
		    value (bool): Whether to enable validation.
	**/
	static public function set_default_validate_args(value:Dynamic):Dynamic;
	/**
		Returns the standard deviation of the distribution.
	**/
	public var stddev : Dynamic;
	static public var support : Dynamic;
	/**
		Returns the variance of the distribution.
	**/
	public var variance : Dynamic;
}