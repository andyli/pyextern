/* This file is generated, do not edit! */
package matplotlib;
@:pythonImport("matplotlib.colors") extern class Colors {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var absolute_import : Dynamic;
	static public var cnames : Dynamic;
	static public var colorConverter : Dynamic;
	static public var division : Dynamic;
	/**
		A helper routine to generate a cmap and a norm instance which
		behave similar to contourf's levels and colors arguments.
		
		Parameters
		----------
		levels : sequence of numbers
		    The quantization levels used to construct the :class:`BoundaryNorm`.
		    Values ``v`` are quantizized to level ``i`` if
		    ``lev[i] <= v < lev[i+1]``.
		colors : sequence of colors
		    The fill color to use for each level. If `extend` is "neither" there
		    must be ``n_level - 1`` colors. For an `extend` of "min" or "max" add
		    one extra color, and for an `extend` of "both" add two colors.
		extend : {'neither', 'min', 'max', 'both'}, optional
		    The behaviour when a value falls out of range of the given levels.
		    See :func:`~matplotlib.pyplot.contourf` for details.
		
		Returns
		-------
		(cmap, norm) : tuple containing a :class:`Colormap` and a                    :class:`Normalize` instance
	**/
	static public function from_levels_and_colors(levels:Dynamic, colors:Dynamic, ?extend:Dynamic):Dynamic;
	/**
		Take a hex string *s* and return the corresponding rgb 3-tuple
		Example: #efefef -> (0.93725, 0.93725, 0.93725)
	**/
	static public function hex2color(s:Dynamic):Dynamic;
	static public var hexColorPattern : Dynamic;
	/**
		convert hsv values in a numpy array to rgb values
		all values assumed to be in range [0, 1]
		
		Parameters
		----------
		hsv : (..., 3) array-like
		   All values assumed to be in range [0, 1]
		
		Returns
		-------
		rgb : (..., 3) ndarray
		   Colors converted to RGB values in range [0, 1]
	**/
	static public function hsv_to_rgb(hsv:Dynamic):Dynamic;
	/**
		Return *True* if *c* can be converted to *RGB*
	**/
	static public function is_color_like(c:Dynamic):Dynamic;
	static public var k : Dynamic;
	/**
		Create an *N* -element 1-d lookup table
		
		*data* represented by a list of x,y0,y1 mapping correspondences.
		Each element in this list represents how a value between 0 and 1
		(inclusive) represented by x is mapped to a corresponding value
		between 0 and 1 (inclusive). The two values of y are to allow
		for discontinuous mapping functions (say as might be found in a
		sawtooth) where y0 represents the value of y for values of x
		<= to that given, and y1 is the value to be used for x > than
		that given). The list must start with x=0, end with x=1, and
		all values of x must be in increasing order. Values between
		the given mapping points are determined by simple linear interpolation.
		
		Alternatively, data can be a function mapping values between 0 - 1
		to 0 - 1.
		
		The function returns an array "result" where ``result[x*(N-1)]``
		gives the closest value for values of x between 0 and 1.
	**/
	static public function makeMappingArray(N:Dynamic, data:Dynamic, ?gamma:Dynamic):Dynamic;
	/**
		.. deprecated:: 1.3
		    The no_norm class alias was deprecated in version 1.3. Use NoNorm instead.
		
		Dummy replacement for Normalize, for the case where we
		want to use indices directly in a
		:class:`~matplotlib.cm.ScalarMappable` .
	**/
	static public function no_norm(?vmin:Dynamic, ?vmax:Dynamic, ?clip:Dynamic):Dynamic;
	/**
		.. deprecated:: 1.3
		    The normalize class alias was deprecated in version 1.3. Use Normalize instead.
		
		A class which, when called, can normalize data into
		the ``[0.0, 1.0]`` interval.
	**/
	static public function normalize(?vmin:Dynamic, ?vmax:Dynamic, ?clip:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Given an rgb or rgba sequence of 0-1 floats, return the hex string
	**/
	static public function rgb2hex(rgb:Dynamic):Dynamic;
	/**
		convert float rgb values (in the range [0, 1]), in a numpy array to hsv
		values.
		
		Parameters
		----------
		arr : (..., 3) array-like
		   All values must be in the range [0, 1]
		
		Returns
		-------
		hsv : (..., 3) ndarray
		   Colors converted to hsv values in range [0, 1]
	**/
	static public function rgb_to_hsv(arr:Dynamic):Dynamic;
	static public var unicode_literals : Dynamic;
	static public var v : Dynamic;
}