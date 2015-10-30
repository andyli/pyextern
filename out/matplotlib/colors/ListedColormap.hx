/* This file is generated, do not edit! */
package matplotlib.colors;
@:pythonImport("matplotlib.colors", "ListedColormap") extern class ListedColormap {
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
		Tuple of RGBA values if X is scalar, othewise an array of
		RGBA values with a shape of ``X.shape + (4, )``.
	**/
	public function __call__(X:Dynamic, ?alpha:Dynamic, ?bytes:Dynamic):Dynamic;
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
		Make a colormap from a list of colors.
		
		*colors*
		    a list of matplotlib color specifications,
		    or an equivalent Nx3 or Nx4 floating point array
		    (*N* rgb or rgba values)
		*name*
		    a string to identify the colormap
		*N*
		    the number of entries in the map.  The default is *None*,
		    in which case there is one colormap entry for each
		    element in the list of colors.  If::
		
		        N < len(colors)
		
		    the list will be truncated at *N*.  If::
		
		        N > len(colors)
		
		    the list will be extended by repetition.
	**/
	@:native("__init__")
	public function ___init__(colors:Dynamic, ?name:Dynamic, ?N:Dynamic):Dynamic;
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
	static public function __new__(args:Dynamic, kwargs:Dynamic):Dynamic;
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
	/**
		Generate the lookup table, self._lut
	**/
	public function _init():Dynamic;
	public function _set_extremes():Dynamic;
	public function is_gray():Dynamic;
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