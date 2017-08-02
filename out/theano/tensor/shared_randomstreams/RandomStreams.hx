/* This file is generated, do not edit! */
package theano.tensor.shared_randomstreams;
@:pythonImport("theano.tensor.shared_randomstreams", "RandomStreams") extern class RandomStreams {
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
		Retrieve the numpy RandomState instance associated with a particular
		stream.
		
		Parameters
		----------
		item
		    A variable of type RandomStateType, associated
		    with this RandomStream.
		
		Returns
		-------
		numpy RandomState (or None, before initialize)
		
		Notes
		-----
		This is kept for compatibility with `tensor.randomstreams.RandomStreams`.
		The simpler syntax ``item.rng.get_value()`` is also valid.
	**/
	public function __getitem__(item:Dynamic):Dynamic;
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
	public function ___init__(?seed:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(?seed:Dynamic):Void;
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
		Set the numpy RandomState instance associated with a particular stream.
		
		Parameters
		----------
		item
		    A variable of type RandomStateType, associated with this
		    RandomStream.
		
		val : numpy RandomState
		    The new value.
		
		Returns
		-------
		None
		
		Notes
		-----
		This is kept for compatibility with `tensor.randomstreams.RandomStreams`.
		The simpler syntax ``item.rng.set_value(val)`` is also valid.
	**/
	public function __setitem__(item:Dynamic, val:Dynamic):Dynamic;
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
	/**
		Sample n times with probability of success p for each trial and
		return the number of successes.
		
		If the size argument is ambiguous on the number of dimensions,
		ndim may be a plain integer to supplement the missing information.
	**/
	public function binomial(?size:Dynamic, ?n:Dynamic, ?p:Dynamic, ?ndim:Dynamic, ?dtype:Dynamic, ?prob:Dynamic):Dynamic;
	/**
		Choose values from `a` with or without replacement.
		
		`a` can be a 1-D array or a positive scalar.
		If `a` is a scalar, the samples are drawn from the range 0,...,a-1.
		
		If the size argument is ambiguous on the number of dimensions,
		ndim may be a plain integer to supplement the missing information.
	**/
	public function choice(?size:Dynamic, ?a:Dynamic, ?replace:Dynamic, ?p:Dynamic, ?ndim:Dynamic, ?dtype:Dynamic):Dynamic;
	/**
		Create a new random stream in this container.
		
		Parameters
		----------
		op
		    A RandomFunction instance to
		args
		    Interpreted by `op`.
		kwargs
		    Interpreted by `op`.
		
		Returns
		-------
		Tensor Variable
		    The symbolic random draw part of op()'s return value.
		    This function stores the updated RandomStateType Variable
		    for use at `build` time.
	**/
	public function gen(op:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Sample n times from a multinomial distribution defined by
		probabilities pvals, as many times as required by size. For
		instance, if size=(p,q), p*q samples will be drawn, and the
		output shape will be (p,q,len(pvals)).
		
		Theano tries to infer the number of dimensions from the length
		of the size argument and the shapes of n and pvals, but you may
		always specify it with the `ndim` parameter.
		
		Notes
		-----
		Note that the output will then be of dimension ndim+1.
	**/
	public function multinomial(?size:Dynamic, ?n:Dynamic, ?pvals:Dynamic, ?ndim:Dynamic, ?dtype:Dynamic):Dynamic;
	/**
		Sample from a normal distribution centered on avg with
		the specified standard deviation (std).
		
		If the size argument is ambiguous on the number of dimensions,
		ndim may be a plain integer to supplement the missing information.
	**/
	public function normal(?size:Dynamic, ?avg:Dynamic, ?std:Dynamic, ?ndim:Dynamic, ?dtype:Dynamic):Dynamic;
	/**
		Return permutations of the integers between 0 and n-1.
		
		Returns them as many times as required by size. For instance,
		if size=(p,q), p*q permutations will be generated,
		and the output shape will be (p,q,n), because each
		permutation is of size n.
		
		Theano tries to infer the number of dimensions from the length
		of the size argument and the shape of n, but you may always
		specify it with the `ndim` parameter.
		
		Notes
		-----
		Note that the output will then be of dimension ndim+1.
	**/
	public function permutation(?size:Dynamic, ?n:Dynamic, ?ndim:Dynamic, ?dtype:Dynamic):Dynamic;
	/**
		Draw samples from a Poisson distribution.
		
		The Poisson distribution is the limit of the Binomial distribution for
		large N.
		
		If the size argument is ambiguous on the number of dimensions,
		ndim may be a plain integer to supplement the missing information.
	**/
	public function poisson(?size:Dynamic, ?lam:Dynamic, ?ndim:Dynamic, ?dtype:Dynamic):Dynamic;
	/**
		Sample a random integer between low and high, both inclusive.
		
		If the size argument is ambiguous on the number of dimensions,
		ndim may be a plain integer to supplement the missing information.
	**/
	public function random_integers(?size:Dynamic, ?low:Dynamic, ?high:Dynamic, ?ndim:Dynamic, ?dtype:Dynamic):Dynamic;
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
	/**
		Return a variable with every row (rightmost index) shuffled.
		
		This uses permutation random variable internally, available via
		the ``.permutation`` attribute of the return value.
	**/
	public function shuffle_row_elements(input:Dynamic):Dynamic;
	/**
		Sample a tensor of given size whose element from a uniform
		distribution between low and high.
		
		If the size argument is ambiguous on the number of dimensions,
		ndim may be a plain integer to supplement the missing information.
	**/
	public function uniform(?size:Dynamic, ?low:Dynamic, ?high:Dynamic, ?ndim:Dynamic, ?dtype:Dynamic):Dynamic;
	public function updates():Dynamic;
}