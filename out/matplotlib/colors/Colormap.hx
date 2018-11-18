/* This file is generated, do not edit! */
package matplotlib.colors;
@:pythonImport("matplotlib.colors", "Colormap") extern class Colormap {
	/**
		Parameters
		----------
		X : scalar, ndarray
		    The data value(s) to convert to RGBA.
		    For floats, X should be in the interval ``[0.0, 1.0]`` to
		    return the RGBA values ``X*100`` percent along the Colormap line.
		    For integers, X should be in the interval ``[0, Colormap.N)`` to
		    return RGBA values *indexed* from the Colormap with index ``X``.
		alpha : float, None
		    Alpha must be a scalar between 0 and 1, or None.
		bytes : bool
		    If False (default), the returned RGBA values will be floats in the
		    interval ``[0, 1]`` otherwise they will be uint8s in the interval
		    ``[0, 255]``.
		
		Returns
		-------
		Tuple of RGBA values if X is scalar, otherwise an array of
		RGBA values with a shape of ``X.shape + (4, )``.
	**/
	public function __call__(X:Dynamic, ?alpha:Dynamic, ?bytes:Dynamic):Dynamic;
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Create new object with the same class, update attributes
		        
	**/
	public function __copy__():Dynamic;
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
		Parameters
		----------
		name : str
		    The name of the colormap.
		N : int
		    The number of rgb quantization levels.
	**/
	@:native("__init__")
	public function ___init__(name:Dynamic, ?N:Dynamic):Dynamic;
	/**
		Parameters
		----------
		name : str
		    The name of the colormap.
		N : int
		    The number of rgb quantization levels.
	**/
	public function new(name:Dynamic, ?N:Dynamic):Void;
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
	public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	/**
		Generate the lookup table, self._lut
	**/
	public function _init():Dynamic;
	/**
		Return a new color map with *lutsize* entries.
	**/
	public function _resample(lutsize:Dynamic):Dynamic;
	public function _set_extremes():Dynamic;
	public function is_gray():Dynamic;
	/**
		Make a reversed instance of the Colormap.
		
		.. note :: Function not implemented for base class.
		
		Parameters
		----------
		name : str, optional
		    The name for the reversed colormap. If it's None the
		    name will be the name of the parent colormap + "_r".
		
		Notes
		-----
		See :meth:`LinearSegmentedColormap.reversed` and
		:meth:`ListedColormap.reversed`
	**/
	public function reversed(?name:Dynamic):Dynamic;
	/**
		Set color to be used for masked values.
		        
	**/
	public function set_bad(?color:Dynamic, ?alpha:Dynamic):Dynamic;
	/**
		Set color to be used for high out-of-range values.
		Requires norm.clip = False
	**/
	public function set_over(?color:Dynamic, ?alpha:Dynamic):Dynamic;
	/**
		Set color to be used for low out-of-range values.
		Requires norm.clip = False
	**/
	public function set_under(?color:Dynamic, ?alpha:Dynamic):Dynamic;
}