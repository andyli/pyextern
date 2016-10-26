/* This file is generated, do not edit! */
package tensorflow.contrib.distributions.python.ops.transformed_distribution;
@:pythonImport("tensorflow.contrib.distributions.python.ops.transformed_distribution", "TransformedDistribution") extern class TransformedDistribution {
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
		Construct a Transformed Distribution.
		
		Args:
		  base_dist_cls: the base distribution class to transform. Must be a
		      subclass of `Distribution`.
		  transform: a callable that takes a `Tensor` sample from `base_dist` and
		      returns a `Tensor` of the same shape and type. `x => y`.
		  inverse: a callable that computes the inverse of transform. `y => x`. If
		      None, users can only call `log_pdf` on values returned by `sample`.
		  log_det_jacobian: a callable that takes a `Tensor` sample from `base_dist`
		      and returns the log of the determinant of the Jacobian of `transform`.
		  name: The name for the distribution.
		  **base_dist_args: kwargs to pass on to dist_cls on construction.
		
		Raises:
		  TypeError: if `base_dist_cls` is not a subclass of
		      `Distribution`.
	**/
	@:native("__init__")
	public function ___init__(base_dist_cls:Dynamic, transform:Dynamic, inverse:Dynamic, log_det_jacobian:Dynamic, ?name:Dynamic, ?base_dist_args:python.KwArgs<Dynamic>):Dynamic;
	/**
		Construct a Transformed Distribution.
		
		Args:
		  base_dist_cls: the base distribution class to transform. Must be a
		      subclass of `Distribution`.
		  transform: a callable that takes a `Tensor` sample from `base_dist` and
		      returns a `Tensor` of the same shape and type. `x => y`.
		  inverse: a callable that computes the inverse of transform. `y => x`. If
		      None, users can only call `log_pdf` on values returned by `sample`.
		  log_det_jacobian: a callable that takes a `Tensor` sample from `base_dist`
		      and returns the log of the determinant of the Jacobian of `transform`.
		  name: The name for the distribution.
		  **base_dist_args: kwargs to pass on to dist_cls on construction.
		
		Raises:
		  TypeError: if `base_dist_cls` is not a subclass of
		      `Distribution`.
	**/
	public function new(base_dist_cls:Dynamic, transform:Dynamic, inverse:Dynamic, log_det_jacobian:Dynamic, ?name:Dynamic, ?base_dist_args:python.KwArgs<Dynamic>):Void;
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
		Base distribution, p(x).
	**/
	public var base_distribution : Dynamic;
	/**
		Batch dimensions of this instance as a 1-D int32 `Tensor`.
		
		The product of the dimensions of the `batch_shape` is the number of
		independent distributions of this kind the instance represents.
		
		Args:
		  name: name to give to the op.
		
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
		  name: name to give to the op.
		
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
	/**
		Inverse function of transform, y => x.
	**/
	public var inverse : Dynamic;
	public var is_continuous : Dynamic;
	public var is_reparameterized : Dynamic;
	/**
		Log CDF.
	**/
	public function log_cdf(value:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Function computing the log determinant of the Jacobian of transform.
	**/
	public var log_det_jacobian : Dynamic;
	/**
		Log of the probability density function.
	**/
	public function log_pdf(value:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Log of the probability mass function.
	**/
	public function log_pmf(value:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Log prob of observations in `y`.
		
		`log ( p(g(y)) / det|J(g(y))| )`, where `g` is the inverse of `transform`.
		
		Args:
		  y: tensor of dtype `dtype`.
		  name: The name to give this op.
		
		Returns:
		  log_pdf: tensor of dtype `dtype`, the log-PDFs of `y`.
		
		Raises:
		  ValueError: if `inverse` was not provided to the distribution and `y` was
		      not returned from `sample`.
	**/
	public function log_prob(y:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Mean of the distribution.
	**/
	public function mean(?name:Dynamic):Dynamic;
	/**
		Mode of the distribution.
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
		The prob of observations in `y`.
		
		`p(g(y)) / det|J(g(y))|`, where `g` is the inverse of `transform`.
		
		Args:
		  y: `Tensor` of dtype `dtype`.
		  name: The name to give this op.
		
		Returns:
		  pdf: `Tensor` of dtype `dtype`, the pdf values of `y`.
	**/
	public function prob(y:Dynamic, ?name:Dynamic):Dynamic;
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
		Sample `n` observations.
		
		Samples from the base distribution and then passes through the transform.
		
		Args:
		  n: scalar, type int32, the number of observations to sample.
		  seed: Python integer, the random seed.
		  name: The name to give this op.
		
		Returns:
		  samples: `[n, ...]`, a `Tensor` of `n` samples.
	**/
	public function sample_n(n:Dynamic, ?seed:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Standard deviation of the distribution.
	**/
	public function std(?name:Dynamic):Dynamic;
	/**
		Function transforming x => y.
	**/
	public var transform : Dynamic;
	/**
		Boolean describing behavior on invalid input.
	**/
	public var validate_args : Dynamic;
	/**
		Variance of the distribution.
	**/
	public function variance(?name:Dynamic):Dynamic;
}