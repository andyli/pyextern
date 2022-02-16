/* This file is generated, do not edit! */
package matplotlib.colors;
@:pythonImport("matplotlib.colors") extern class Colors_Module {
	static public var BASE_COLORS : Dynamic;
	static public var CSS4_COLORS : Dynamic;
	static public var TABLEAU_COLORS : Dynamic;
	static public var XKCD_COLORS : Dynamic;
	static public var _REPR_PNG_SIZE : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		For each *key, value* pair in *kwargs*, check that *value* is color-like.
	**/
	static public function _check_color_like(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var _colors_full_map : Dynamic;
	/**
		Create an *N* -element 1D lookup table.
		
		This assumes a mapping :math:`f : [0, 1] \rightarrow [0, 1]`. The returned
		data is an array of N values :math:`y = f(x)` where x is sampled from
		[0, 1].
		
		By default (*gamma* = 1) x is equidistantly sampled from [0, 1]. The
		*gamma* correction factor :math:`\gamma` distorts this equidistant
		sampling by :math:`x \rightarrow x^\gamma`.
		
		Parameters
		----------
		N : int
		    The number of elements of the created lookup table; at least 1.
		
		data : (M, 3) array-like or callable
		    Defines the mapping :math:`f`.
		
		    If a (M, 3) array-like, the rows define values (x, y0, y1).  The x
		    values must start with x=0, end with x=1, and all x values be in
		    increasing order.
		
		    A value between :math:`x_i` and :math:`x_{i+1}` is mapped to the range
		    :math:`y^1_{i-1} \ldots y^0_i` by linear interpolation.
		
		    For the simple case of a y-continuous mapping, y0 and y1 are identical.
		
		    The two values of y are to allow for discontinuous mapping functions.
		    E.g. a sawtooth with a period of 0.2 and an amplitude of 1 would be::
		
		        [(0, 1, 0), (0.2, 1, 0), (0.4, 1, 0), ..., [(1, 1, 0)]
		
		    In the special case of ``N == 1``, by convention the returned value
		    is y0 for x == 1.
		
		    If *data* is a callable, it must accept and return numpy arrays::
		
		       data(x : ndarray) -> ndarray
		
		    and map values between 0 - 1 to 0 - 1.
		
		gamma : float
		    Gamma correction factor for input distribution x of the mapping.
		
		    See also https://en.wikipedia.org/wiki/Gamma_correction.
		
		Returns
		-------
		array
		    The lookup table where ``lut[x * (N-1)]`` gives the closest value
		    for values of x between 0 and 1.
		
		Notes
		-----
		This function is internally used for `.LinearSegmentedColormap`.
	**/
	static public function _create_lookup_table(N:Dynamic, data:Dynamic, ?gamma:Dynamic):Dynamic;
	/**
		Return whether *c* can be interpreted as an item in the color cycle.
	**/
	static public function _is_nth_color(c:Dynamic):Dynamic;
	static public function _sanitize_extrema(ex:Dynamic):Dynamic;
	/**
		Convert *c* to an RGBA color, with no support for color-cycle syntax.
		
		If *alpha* is given, force the alpha value of the returned RGBA tuple
		to *alpha*. Otherwise, the alpha value from *c* is used, if it has alpha
		information, or defaults to 1.
		
		*alpha* is ignored for the color value ``"none"`` (case-insensitive),
		which always maps to ``(0, 0, 0, 0)``.
	**/
	static public function _to_rgba_no_colorcycle(c:Dynamic, ?alpha:Dynamic):Dynamic;
	static public function _vector_magnitude(arr:Dynamic):Dynamic;
	static public function _warn_if_global_cmap_modified(cmap:Dynamic):Dynamic;
	static public var cnames : Dynamic;
	static public var colorConverter : Dynamic;
	/**
		A helper routine to generate a cmap and a norm instance which
		behave similar to contourf's levels and colors arguments.
		
		Parameters
		----------
		levels : sequence of numbers
		    The quantization levels used to construct the `BoundaryNorm`.
		    Value ``v`` is quantized to level ``i`` if ``lev[i] <= v < lev[i+1]``.
		colors : sequence of colors
		    The fill color to use for each level. If *extend* is "neither" there
		    must be ``n_level - 1`` colors. For an *extend* of "min" or "max" add
		    one extra color, and for an *extend* of "both" add two colors.
		extend : {'neither', 'min', 'max', 'both'}, optional
		    The behaviour when a value falls out of range of the given levels.
		    See `~.Axes.contourf` for details.
		
		Returns
		-------
		cmap : `~matplotlib.colors.Normalize`
		norm : `~matplotlib.colors.Colormap`
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
		(..., 3) ndarray
		   Colors converted to RGB values in range [0, 1]
	**/
	static public function hsv_to_rgb(hsv:Dynamic):Dynamic;
	/**
		Return whether *c* can be interpreted as an RGB(A) color.
	**/
	static public function is_color_like(c:Dynamic):Dynamic;
	/**
		Decorator for building a `.Normalize` subclass from a `~.scale.ScaleBase`
		subclass.
		
		After ::
		
		    @make_norm_from_scale(scale_cls)
		    class norm_cls(Normalize):
		        ...
		
		*norm_cls* is filled with methods so that normalization computations are
		forwarded to *scale_cls* (i.e., *scale_cls* is the scale that would be used
		for the colorbar of a mappable normalized with *norm_cls*).
		
		If *init* is not passed, then the constructor signature of *norm_cls*
		will be ``norm_cls(vmin=None, vmax=None, clip=False)``; these three
		parameters will be forwarded to the base class (``Normalize.__init__``),
		and a *scale_cls* object will be initialized with no arguments (other than
		a dummy axis).
		
		If the *scale_cls* constructor takes additional parameters, then *init*
		should be passed to `make_norm_from_scale`.  It is a callable which is
		*only* used for its signature.  First, this signature will become the
		signature of *norm_cls*.  Second, the *norm_cls* constructor will bind the
		parameters passed to it using this signature, extract the bound *vmin*,
		*vmax*, and *clip* values, pass those to ``Normalize.__init__``, and
		forward the remaining bound values (including any defaults defined by the
		signature) to the *scale_cls* constructor.
	**/
	static public function make_norm_from_scale(scale_cls:Dynamic, ?base_norm_cls:Dynamic, ?init:Dynamic):Dynamic;
	/**
		Convert *c* to a hex color.
		
		Parameters
		----------
		c : :doc:`color </tutorials/colors/colors>` or `numpy.ma.masked`
		
		keep_alpha: bool, default: False
		  If False, use the ``#rrggbb`` format, otherwise use ``#rrggbbaa``.
		
		Returns
		-------
		str
		  ``#rrggbb`` or ``#rrggbbaa`` hex color string
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
		(..., 3) ndarray
		   Colors converted to hsv values in range [0, 1]
	**/
	static public function rgb_to_hsv(arr:Dynamic):Dynamic;
	/**
		Return whether the colors *c1* and *c2* are the same.
		
		*c1*, *c2* can be single colors or lists/arrays of colors.
	**/
	static public function same_color(c1:Dynamic, c2:Dynamic):Dynamic;
	/**
		Convert *c* to a hex color.
		
		Parameters
		----------
		c : :doc:`color </tutorials/colors/colors>` or `numpy.ma.masked`
		
		keep_alpha: bool, default: False
		  If False, use the ``#rrggbb`` format, otherwise use ``#rrggbbaa``.
		
		Returns
		-------
		str
		  ``#rrggbb`` or ``#rrggbbaa`` hex color string
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
		c : Matplotlib color or ``np.ma.masked``
		
		alpha : float, optional
		    If *alpha* is given, force the alpha value of the returned RGBA tuple
		    to *alpha*.
		
		    If None, the alpha value from *c* is used. If *c* does not have an
		    alpha channel, then alpha defaults to 1.
		
		    *alpha* is ignored for the color value ``"none"`` (case-insensitive),
		    which always maps to ``(0, 0, 0, 0)``.
		
		Returns
		-------
		tuple
		    Tuple of floats ``(r, g, b, a)``, where each channel (red, green, blue,
		    alpha) can assume values between 0 and 1.
	**/
	static public function to_rgba(c:Dynamic, ?alpha:Dynamic):Dynamic;
	/**
		Convert *c* to a (n, 4) array of RGBA colors.
		
		Parameters
		----------
		c : Matplotlib color or array of colors
		    If *c* is a masked array, an ndarray is returned with a (0, 0, 0, 0)
		    row for each masked value or row in *c*.
		
		alpha : float or sequence of floats, optional
		    If *alpha* is given, force the alpha value of the returned RGBA tuple
		    to *alpha*.
		
		    If None, the alpha value from *c* is used. If *c* does not have an
		    alpha channel, then alpha defaults to 1.
		
		    *alpha* is ignored for the color value ``"none"`` (case-insensitive),
		    which always maps to ``(0, 0, 0, 0)``.
		
		    If *alpha* is a sequence and *c* is a single color, *c* will be
		    repeated to match the length of *alpha*.
		
		Returns
		-------
		array
		    (n, 4) array of RGBA colors,  where each channel (red, green, blue,
		    alpha) can assume values between 0 and 1.
	**/
	static public function to_rgba_array(c:Dynamic, ?alpha:Dynamic):Dynamic;
}