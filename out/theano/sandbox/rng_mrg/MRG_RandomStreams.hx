/* This file is generated, do not edit! */
package theano.sandbox.rng_mrg;
@:pythonImport("theano.sandbox.rng_mrg", "MRG_RandomStreams") extern class MRG_RandomStreams {
	static public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	@:native("__init__")
	public function ___init__(?seed:Dynamic, ?use_cuda:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(?seed:Dynamic, ?use_cuda:Dynamic):Void;
	/**
		This method is called when a class is subclassed.
		
		The default implementation does nothing. It may be
		overridden to extend subclasses.
	**/
	static public function __init_subclass__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	public function binomial(?size:Dynamic, ?n:Dynamic, ?p:Dynamic, ?ndim:Dynamic, ?dtype:Dynamic, ?nstreams:Dynamic):Dynamic;
	/**
		Sample `size` times from a multinomial distribution defined by
		probabilities `p`, and returns the indices of the sampled elements.
		Sampled values are between 0 and `p.shape[1]-1`.
		Only sampling without replacement is implemented for now.
		
		Parameters
		----------
		size: integer or integer tensor (default 1)
		    The number of samples. It should be between 1 and `p.shape[1]-1`.
		a: int or None (default None)
		    For now, a should be None. This function will sample
		    values between 0 and `p.shape[1]-1`. When a != None will be
		    implemented, if `a` is a scalar, the samples are drawn from the
		    range 0,...,a-1. We default to 2 as to have the same interface as
		    RandomStream.
		replace: bool (default True)
		    Whether the sample is with or without replacement.
		    Only replace=False is implemented for now.
		p: 2d numpy array or theano tensor
		    the probabilities of the distribution, corresponding to values
		    0 to `p.shape[1]-1`.
		
		Example : p = [[.98, .01, .01], [.01, .49, .50]] and size=1 will
		probably result in [[0],[2]]. When setting size=2, this
		will probably result in [[0,1],[2,1]].
		
		Notes
		-----
		-`ndim` is only there keep the same signature as other
		uniform, binomial, normal, etc.
		
		-Does not do any value checking on pvals, i.e. there is no
		check that the elements are non-negative, less than 1, or
		sum to 1. passing pvals = [[-2., 2.]] will result in
		sampling [[0, 0]]
		
		-Only replace=False is implemented for now.
	**/
	public function choice(?size:Dynamic, ?a:Dynamic, ?replace:Dynamic, ?p:Dynamic, ?ndim:Dynamic, ?dtype:Dynamic, ?nstreams:Dynamic):Dynamic;
	/**
		Initialize a matrix in which each row is a MRG stream state,
		and they are spaced by 2**72 samples.
	**/
	public function get_substream_rstates(n_streams:Dynamic, dtype:Dynamic, ?inc_rstate:Dynamic):Dynamic;
	/**
		Update self.rstate to be skipped 2^134 steps forward to the next stream
		start.
	**/
	public function inc_rstate():Dynamic;
	/**
		Sample `n` (`n` needs to be >= 1, default 1) times from a multinomial
		distribution defined by probabilities pvals.
		
		Example : pvals = [[.98, .01, .01], [.01, .49, .50]] and n=1 will
		probably result in [[1,0,0],[0,0,1]]. When setting n=2, this
		will probably result in [[2,0,0],[0,1,1]].
		
		Notes
		-----
		-`size` and `ndim` are only there keep the same signature as other
		uniform, binomial, normal, etc.
		TODO : adapt multinomial to take that into account
		
		-Does not do any value checking on pvals, i.e. there is no
		check that the elements are non-negative, less than 1, or
		sum to 1. passing pvals = [[-2., 2.]] will result in
		sampling [[0, 0]]
	**/
	public function multinomial(?size:Dynamic, ?n:Dynamic, ?pvals:Dynamic, ?ndim:Dynamic, ?dtype:Dynamic, ?nstreams:Dynamic):Dynamic;
	public function multinomial_wo_replacement(?size:Dynamic, ?n:Dynamic, ?pvals:Dynamic, ?ndim:Dynamic, ?dtype:Dynamic, ?nstreams:Dynamic):Dynamic;
	public function n_streams(size:Dynamic):Dynamic;
	/**
		Parameters
		----------
		size
		    Can be a list of integers or Theano variables (ex: the shape
		    of another Theano Variable).
		dtype
		    The output data type. If dtype is not specified, it will be
		    inferred from the dtype of low and high, but will be at
		    least as precise as floatX.
		nstreams
		    Number of streams.
	**/
	public function normal(size:Dynamic, ?avg:Dynamic, ?std:Dynamic, ?ndim:Dynamic, ?dtype:Dynamic, ?nstreams:Dynamic):Dynamic;
	public function pretty_return(node_rstate:Dynamic, new_rstate:Dynamic, sample:Dynamic, size:Dynamic, nstreams:Dynamic):Dynamic;
	/**
		Re-initialize each random stream.
		
		Parameters
		----------
		seed : None or integer in range 0 to 2**30
		    Each random stream will be assigned a unique state that depends
		    deterministically on this value.
		
		Returns
		-------
		None
	**/
	public function seed(?seed:Dynamic):Dynamic;
	public function set_rstate(seed:Dynamic):Dynamic;
	/**
		Sample a tensor of given size whose element from a uniform
		distribution between low and high.
		
		If the size argument is ambiguous on the number of dimensions,
		ndim may be a plain integer to supplement the missing information.
		
		Parameters
		----------
		low
		    Lower bound of the interval on which values are sampled.
		    If the ``dtype`` arg is provided, ``low`` will be cast into
		    dtype. This bound is excluded.
		high
		    Higher bound of the interval on which values are sampled.
		    If the ``dtype`` arg is provided, ``high`` will be cast into
		    dtype. This bound is excluded.
		size
		  Can be a list of integer or Theano variable (ex: the shape
		  of other Theano Variable).
		dtype
		    The output data type. If dtype is not specified, it will be
		    inferred from the dtype of low and high, but will be at
		    least as precise as floatX.
	**/
	public function uniform(size:Dynamic, ?low:Dynamic, ?high:Dynamic, ?ndim:Dynamic, ?dtype:Dynamic, ?nstreams:Dynamic):Dynamic;
	public function updates():Dynamic;
}