/* This file is generated, do not edit! */
package torch.quasirandom;
@:pythonImport("torch.quasirandom", "SobolEngine") extern class SobolEngine {
	static public var MAXBIT : Dynamic;
	static public var MAXDIM : Dynamic;
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
	public function ___init__(dimension:Dynamic, ?scramble:Dynamic, ?seed:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(dimension:Dynamic, ?scramble:Dynamic, ?seed:Dynamic):Void;
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
	public function _scramble():Dynamic;
	/**
		Function to draw a sequence of :attr:`n` points from a Sobol sequence.
		Note that the samples are dependent on the previous samples. The size
		of the result is :math:`(n, dimension)`.
		
		Args:
		    n (Int, optional): The length of sequence of points to draw.
		                       Default: 1
		    out (Tensor, optional): The output tensor
		    dtype (:class:`torch.dtype`, optional): the desired data type of the
		                                            returned tensor.
		                                            Default: ``torch.float32``
	**/
	public function draw(?n:Dynamic, ?out:Dynamic, ?dtype:Dynamic):Dynamic;
	/**
		Function to draw a sequence of :attr:`2**m` points from a Sobol sequence.
		Note that the samples are dependent on the previous samples. The size
		of the result is :math:`(2**m, dimension)`.
		
		Args:
		    m (Int): The (base2) exponent of the number of points to draw.
		    out (Tensor, optional): The output tensor
		    dtype (:class:`torch.dtype`, optional): the desired data type of the
		                                            returned tensor.
		                                            Default: ``torch.float32``
	**/
	public function draw_base2(m:Dynamic, ?out:Dynamic, ?dtype:Dynamic):Dynamic;
	/**
		Function to fast-forward the state of the ``SobolEngine`` by
		:attr:`n` steps. This is equivalent to drawing :attr:`n` samples
		without using the samples.
		
		Args:
		    n (Int): The number of steps to fast-forward by.
	**/
	public function fast_forward(n:Dynamic):Dynamic;
	/**
		Function to reset the ``SobolEngine`` to base state.
	**/
	public function reset():Dynamic;
}