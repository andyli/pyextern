/* This file is generated, do not edit! */
package matplotlib.colors;
@:pythonImport("matplotlib.colors") extern class Colors_Module {
	static public var BASE_COLORS : Dynamic;
	static public var CSS4_COLORS : Dynamic;
	static public var TABLEAU_COLORS : Dynamic;
	static public var XKCD_COLORS : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var _colors_full_map : Dynamic;
	/**
		Return whether *c* can be interpreted as an item in the color cycle.
	**/
	static public function _is_nth_color(c:Dynamic):Dynamic;
	static public function _sanitize_extrema(ex:Dynamic):Dynamic;
	/**
		Convert *c* to an RGBA color, with no support for color-cycle syntax.
		
		If *alpha* is not ``None``, it forces the alpha value, except if *c* is
		``"none"`` (case-insensitive), which always maps to ``(0, 0, 0, 0)``.
	**/
	static public function _to_rgba_no_colorcycle(c:Dynamic, ?alpha:Dynamic):Dynamic;
	static public function _vector_magnitude(arr:Dynamic):Dynamic;
	static public var cnames : Dynamic;
	static public var colorConverter : Dynamic;
	/**
		A helper routine to generate a cmap and a norm instance which
		behave similar to contourf's levels and colors arguments.
		
		Parameters
		----------
		levels : sequence of numbers
		    The quantization levels used to construct the :class:`BoundaryNorm`.
		    Value ``v`` is quantized to level ``i`` if ``lev[i] <= v < lev[i+1]``.
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
		Return the global mapping of names to named colors.
	**/
	static public function get_named_colors_mapping():Dynamic;
	/**
		Convert *c* to an RGB color, silently dropping the alpha channel.
	**/
	static public function hex2color(c:Dynamic):Dynamic;
	static public var hexColorPattern : Dynamic;
	/**
		Convert hsv values to rgb.
		
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
		Return whether *c* can be interpreted as an RGB(A) color.
	**/
	static public function is_color_like(c:Dynamic):Dynamic;
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
		Convert *c* to a hex color.
		
		Uses the ``#rrggbb`` format if *keep_alpha* is False (the default),
		``#rrggbbaa`` otherwise.
	**/
	static public function rgb2hex(c:Dynamic, ?keep_alpha:Dynamic):Dynamic;
	/**
		Convert float rgb values (in the range [0, 1]), in a numpy array to hsv
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
	/**
		Compare two colors to see if they are the same.
		
		Parameters
		----------
		c1, c2 : Matplotlib colors
		
		Returns
		-------
		bool
		    ``True`` if *c1* and *c2* are the same color, otherwise ``False``.
	**/
	static public function same_color(c1:Dynamic, c2:Dynamic):Dynamic;
	/**
		Convert *c* to a hex color.
		
		Uses the ``#rrggbb`` format if *keep_alpha* is False (the default),
		``#rrggbbaa`` otherwise.
	**/
	static public function to_hex(c:Dynamic, ?keep_alpha:Dynamic):Dynamic;
	/**
		Convert *c* to an RGB color, silently dropping the alpha channel.
	**/
	static public function to_rgb(c:Dynamic):Dynamic;
	/**
		Convert *c* to an RGBA color.
		
		Parameters
		----------
		c : Matplotlib color
		
		alpha : scalar, optional
		    If *alpha* is not ``None``, it forces the alpha value, except if *c* is
		    ``"none"`` (case-insensitive), which always maps to ``(0, 0, 0, 0)``.
		
		Returns
		-------
		tuple
		    Tuple of ``(r, g, b, a)`` scalars.
	**/
	static public function to_rgba(c:Dynamic, ?alpha:Dynamic):Dynamic;
	/**
		Convert *c* to a (n, 4) array of RGBA colors.
		
		If *alpha* is not ``None``, it forces the alpha value.  If *c* is
		``"none"`` (case-insensitive) or an empty list, an empty array is returned.
	**/
	static public function to_rgba_array(c:Dynamic, ?alpha:Dynamic):Dynamic;
}