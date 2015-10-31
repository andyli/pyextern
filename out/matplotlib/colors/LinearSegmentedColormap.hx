/* This file is generated, do not edit! */
package matplotlib.colors;
@:pythonImport("matplotlib.colors", "LinearSegmentedColormap") extern class LinearSegmentedColormap {
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
		Create color map from linear mapping segments
		
		segmentdata argument is a dictionary with a red, green and blue
		entries. Each entry should be a list of *x*, *y0*, *y1* tuples,
		forming rows in a table. Entries for alpha are optional.
		
		Example: suppose you want red to increase from 0 to 1 over
		the bottom half, green to do the same over the middle half,
		and blue over the top half.  Then you would use::
		
		    cdict = {'red':   [(0.0,  0.0, 0.0),
		                       (0.5,  1.0, 1.0),
		                       (1.0,  1.0, 1.0)],
		
		             'green': [(0.0,  0.0, 0.0),
		                       (0.25, 0.0, 0.0),
		                       (0.75, 1.0, 1.0),
		                       (1.0,  1.0, 1.0)],
		
		             'blue':  [(0.0,  0.0, 0.0),
		                       (0.5,  0.0, 0.0),
		                       (1.0,  1.0, 1.0)]}
		
		Each row in the table for a given color is a sequence of
		*x*, *y0*, *y1* tuples.  In each sequence, *x* must increase
		monotonically from 0 to 1.  For any input value *z* falling
		between *x[i]* and *x[i+1]*, the output value of a given color
		will be linearly interpolated between *y1[i]* and *y0[i+1]*::
		
		    row i:   x  y0  y1
		                   /
		                  /
		    row i+1: x  y0  y1
		
		Hence y0 in the first row and y1 in the last row are never used.
		
		
		.. seealso::
		
		       :meth:`LinearSegmentedColormap.from_list`
		       Static method; factory function for generating a
		       smoothly-varying LinearSegmentedColormap.
		
		       :func:`makeMappingArray`
		       For information about making a mapping array.
	**/
	@:native("__init__")
	public function ___init__(name:Dynamic, segmentdata:Dynamic, ?N:Dynamic, ?gamma:Dynamic):Dynamic;
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
	/**
		Return a new color map with *lutsize* entries.
	**/
	public function _resample(lutsize:Dynamic):Dynamic;
	public function _set_extremes():Dynamic;
	/**
		Make a linear segmented colormap with *name* from a sequence
		of *colors* which evenly transitions from colors[0] at val=0
		to colors[-1] at val=1.  *N* is the number of rgb quantization
		levels.
		Alternatively, a list of (value, color) tuples can be given
		to divide the range unevenly.
	**/
	static public function from_list(name:Dynamic, colors:Dynamic, ?N:Dynamic, ?gamma:Dynamic):Dynamic;
	public function is_gray():Dynamic;
	/**
		Set color to be used for masked values.
		        
	**/
	public function set_bad(?color:Dynamic, ?alpha:Dynamic):Dynamic;
	/**
		Set a new gamma value and regenerate color map.
	**/
	public function set_gamma(gamma:Dynamic):Dynamic;
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