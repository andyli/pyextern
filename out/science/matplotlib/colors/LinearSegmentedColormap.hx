/* This file is generated, do not edit! */
package matplotlib.colors;
@:pythonImport("matplotlib.colors", "LinearSegmentedColormap") extern class LinearSegmentedColormap {
	/**
		Parameters
		----------
		X : float or int, ndarray or scalar
		    The data value(s) to convert to RGBA.
		    For floats, X should be in the interval ``[0.0, 1.0]`` to
		    return the RGBA values ``X*100`` percent along the Colormap line.
		    For integers, X should be in the interval ``[0, Colormap.N)`` to
		    return RGBA values *indexed* from the Colormap with index ``X``.
		alpha : float or array-like or None
		    Alpha must be a scalar between 0 and 1, a sequence of such
		    floats with shape matching X, or None.
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
	public function __copy__():Dynamic;
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
	public function __eq__(other:Dynamic):Dynamic;
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
	static public var __hash__ : Dynamic;
	/**
		Create colormap from linear mapping segments
		
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
		
		See Also
		--------
		LinearSegmentedColormap.from_list
		    Static method; factory function for generating a smoothly-varying
		    LinearSegmentedColormap.
	**/
	@:native("__init__")
	public function ___init__(name:Dynamic, segmentdata:Dynamic, ?N:Dynamic, ?gamma:Dynamic):Dynamic;
	/**
		Create colormap from linear mapping segments
		
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
		
		See Also
		--------
		LinearSegmentedColormap.from_list
		    Static method; factory function for generating a smoothly-varying
		    LinearSegmentedColormap.
	**/
	public function new(name:Dynamic, segmentdata:Dynamic, ?N:Dynamic, ?gamma:Dynamic):Void;
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
		Generate the lookup table, ``self._lut``.
	**/
	public function _init():Dynamic;
	/**
		Generate an HTML representation of the Colormap.
	**/
	public function _repr_html_():Dynamic;
	/**
		Generate a PNG representation of the Colormap.
	**/
	public function _repr_png_():Dynamic;
	/**
		Return a new colormap with *lutsize* entries.
	**/
	public function _resample(lutsize:Dynamic):Dynamic;
	static public function _reverser(func:Dynamic, x:Dynamic):Dynamic;
	public function _set_extremes():Dynamic;
	/**
		Return a copy of the colormap.
	**/
	public function copy():Dynamic;
	/**
		Create a `LinearSegmentedColormap` from a list of colors.
		
		Parameters
		----------
		name : str
		    The name of the colormap.
		colors : array-like of colors or array-like of (value, color)
		    If only colors are given, they are equidistantly mapped from the
		    range :math:`[0, 1]`; i.e. 0 maps to ``colors[0]`` and 1 maps to
		    ``colors[-1]``.
		    If (value, color) pairs are given, the mapping is from *value*
		    to *color*. This can be used to divide the range unevenly.
		N : int
		    The number of rgb quantization levels.
		gamma : float
	**/
	static public function from_list(name:Dynamic, colors:Dynamic, ?N:Dynamic, ?gamma:Dynamic):Dynamic;
	/**
		Get the color for masked values.
	**/
	public function get_bad():Dynamic;
	/**
		Get the color for high out-of-range values.
	**/
	public function get_over():Dynamic;
	/**
		Get the color for low out-of-range values.
	**/
	public function get_under():Dynamic;
	/**
		Return whether the colormap is grayscale.
	**/
	public function is_gray():Dynamic;
	/**
		Return a reversed instance of the Colormap.
		
		Parameters
		----------
		name : str, optional
		    The name for the reversed colormap. If it's None the
		    name will be the name of the parent colormap + "_r".
		
		Returns
		-------
		LinearSegmentedColormap
		    The reversed colormap.
	**/
	public function reversed(?name:Dynamic):Dynamic;
	/**
		Set the color for masked values.
	**/
	public function set_bad(?color:Dynamic, ?alpha:Dynamic):Dynamic;
	/**
		Set the colors for masked (*bad*) values and, when ``norm.clip =
		False``, low (*under*) and high (*over*) out-of-range values.
	**/
	public function set_extremes(?bad:Dynamic, ?under:Dynamic, ?over:Dynamic):Dynamic;
	/**
		Set a new gamma value and regenerate colormap.
	**/
	public function set_gamma(gamma:Dynamic):Dynamic;
	/**
		Set the color for high out-of-range values.
	**/
	public function set_over(?color:Dynamic, ?alpha:Dynamic):Dynamic;
	/**
		Set the color for low out-of-range values.
	**/
	public function set_under(?color:Dynamic, ?alpha:Dynamic):Dynamic;
	/**
		Return a copy of the colormap, for which the colors for masked (*bad*)
		values and, when ``norm.clip = False``, low (*under*) and high (*over*)
		out-of-range values, have been set accordingly.
	**/
	public function with_extremes(?bad:Dynamic, ?under:Dynamic, ?over:Dynamic):Dynamic;
}