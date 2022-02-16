/* This file is generated, do not edit! */
package matplotlib.tri.tricontour;
@:pythonImport("matplotlib.tri.tricontour", "TriContourSet") extern class TriContourSet {
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
	public function __getstate__():Dynamic;
	/**
		Return self>value.
	**/
	public function __gt__(value:Dynamic):Dynamic;
	/**
		Return hash(self).
	**/
	public function __hash__():Dynamic;
	/**
		Draw triangular grid contour lines or filled regions,
		depending on whether keyword arg 'filled' is False
		(default) or True.
		
		The first argument of the initializer must be an axes
		object.  The remaining arguments and keyword arguments
		are described in the docstring of `~.Axes.tricontour`.
	**/
	@:native("__init__")
	public function ___init__(ax:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Draw triangular grid contour lines or filled regions,
		depending on whether keyword arg 'filled' is False
		(default) or True.
		
		The first argument of the initializer must be an axes
		object.  The remaining arguments and keyword arguments
		are described in the docstring of `~.Axes.tricontour`.
	**/
	public function new(ax:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Void;
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
	public function _add_label(t:Dynamic, x:Dynamic, y:Dynamic, lev:Dynamic, cvalue:Dynamic):Dynamic;
	/**
		Select contour levels to span the data.
		
		The target number of levels, *N*, is used only when the
		scale is not log and default locator is used.
		
		We need two more levels for filled contours than for
		line contours, because for the latter we need to specify
		the lower and upper boundary of each range. For example,
		a single contour boundary, say at z = 0, requires only
		one contour line, but two filled regions, and therefore
		three levels to provide boundaries for both regions.
	**/
	public function _autolev(N:Dynamic):Dynamic;
	public function _contour_args(args:Dynamic, kwargs:Dynamic):Dynamic;
	/**
		Compute ``allsegs`` and ``allkinds`` using C extension.
	**/
	public function _get_allsegs_and_allkinds():Dynamic;
	public function _get_label_clabeltext(x:Dynamic, y:Dynamic, rotation:Dynamic):Dynamic;
	public function _get_label_text(x:Dynamic, y:Dynamic, rotation:Dynamic):Dynamic;
	/**
		Return ``(lowers, uppers)`` for filled contours.
	**/
	public function _get_lowers_and_uppers():Dynamic;
	/**
		Return the width of the *nth* label, in pixels.
	**/
	public function _get_nth_label_width(nth:Dynamic):Dynamic;
	/**
		Create and return Path objects for the specified segments and optional
		kind codes.  segs is a list of numpy arrays, each array is either a
		closed line loop or open line strip of 2D points with a shape of
		(npoints, 2).  kinds is either None or a list (with the same length as
		segs) of numpy arrays, each array is of shape (npoints,) and contains
		the kinds codes for the corresponding line in segs.  If kinds is None
		then the Path constructor creates the kind codes assuming that the line
		is an open strip.
	**/
	public function _make_paths(segs:Dynamic, kinds:Dynamic):Dynamic;
	/**
		Process args and kwargs.
	**/
	public function _process_args(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Color argument processing for contouring.
		
		Note that we base the colormapping on the contour levels
		and layers, not on the actual range of the Z values.  This
		means we don't have to worry about bad values in Z, and we
		always have the full dynamic range available for the selected
		levels.
		
		The color is based on the midpoint of the layer, except for
		extended end layers.  By default, the norm vmin and vmax
		are the extreme values of the non-extended levels.  Hence,
		the layer color extremes are not the extreme values of
		the colormap itself, but approach those values as the number
		of levels increases.  An advantage of this scheme is that
		line contours, when added to filled contours, take on
		colors that are consistent with those of the filled regions;
		for example, a contour line on the boundary between two
		regions will have a color intermediate between those
		of the regions.
	**/
	public function _process_colors():Dynamic;
	/**
		Determine the contour levels and store in self.levels.
	**/
	public function _process_contour_level_args(args:Dynamic):Dynamic;
	/**
		Assign values to :attr:`layers` based on :attr:`levels`,
		adding extended layers as needed if contours are filled.
		
		For line contours, layers simply coincide with levels;
		a line is a thin layer.  No extended levels are needed
		with line contours.
	**/
	public function _process_levels():Dynamic;
	public function _process_linestyles():Dynamic;
	public function _process_linewidths():Dynamic;
	/**
		Helper for initial scaling.
		
		Used by public functions that create a ScalarMappable and support
		parameters *vmin*, *vmax* and *norm*. This makes sure that a *norm*
		will take precedence over *vmin*, *vmax*.
		
		Note that this method does not set the norm.
	**/
	public function _scale_norm(norm:Dynamic, vmin:Dynamic, vmax:Dynamic):Dynamic;
	/**
		Add contour label using :class:`~matplotlib.text.Text` class.
	**/
	public function add_label(x:Dynamic, y:Dynamic, rotation:Dynamic, lev:Dynamic, cvalue:Dynamic):Dynamic;
	/**
		Add contour label using :class:`ClabelText` class.
	**/
	public function add_label_clabeltext(x:Dynamic, y:Dynamic, rotation:Dynamic, lev:Dynamic, cvalue:Dynamic):Dynamic;
	/**
		Add a label near the point ``(x, y)``.
		
		Parameters
		----------
		x, y : float
		    The approximate location of the label.
		inline : bool, default: True
		    If *True* remove the segment of the contour beneath the label.
		inline_spacing : int, default: 5
		    Space in pixels to leave on each side of label when placing
		    inline. This spacing will be exact for labels at locations where
		    the contour is straight, less so for labels on curved contours.
		transform : `.Transform` or `False`, default: ``self.axes.transData``
		    A transform applied to ``(x, y)`` before labeling.  The default
		    causes ``(x, y)`` to be interpreted as data coordinates.  `False`
		    is a synonym for `.IdentityTransform`; i.e. ``(x, y)`` should be
		    interpreted as display coordinates.
	**/
	public function add_label_near(x:Dynamic, y:Dynamic, ?_inline:Dynamic, ?inline_spacing:Dynamic, ?transform:Dynamic):Dynamic;
	/**
		Autoscale the scalar limits on the norm instance using the
		current array
	**/
	public function autoscale():Dynamic;
	/**
		Autoscale the scalar limits on the norm instance using the
		current array, changing only limits that are None
	**/
	public function autoscale_None():Dynamic;
	/**
		Calculate the appropriate label rotation given the linecontour
		coordinates in screen units, the index of the label location and the
		label width.
		
		If *lc* is not None or empty, also break contours and compute
		inlining.
		
		*spacing* is the empty space to leave around the label, in pixels.
		
		Both tasks are done together to avoid calculating path lengths
		multiple times, which is relatively costly.
		
		The method used here involves computing the path length along the
		contour in pixel coordinates and then looking approximately (label
		width / 2) away from central point to determine rotation and then to
		break contour if desired.
	**/
	public function calc_label_rot_and_inline(slc:Dynamic, ind:Dynamic, lw:Dynamic, ?lc:Dynamic, ?spacing:Dynamic):Dynamic;
	public var callbacksSM : Dynamic;
	/**
		Call this whenever the mappable is changed to notify all the
		callbackSM listeners to the 'changed' signal.
	**/
	public function changed():Dynamic;
	/**
		Label a contour plot.
		
		Adds labels to line contours in this `.ContourSet` (which inherits from
		this mixin class).
		
		Parameters
		----------
		levels : array-like, optional
		    A list of level values, that should be labeled. The list must be
		    a subset of ``cs.levels``. If not given, all levels are labeled.
		
		fontsize : str or float, default: :rc:`font.size`
		    Size in points or relative size e.g., 'smaller', 'x-large'.
		    See `.Text.set_size` for accepted string values.
		
		colors : color or colors or None, default: None
		    The label colors:
		
		    - If *None*, the color of each label matches the color of
		      the corresponding contour.
		
		    - If one string color, e.g., *colors* = 'r' or *colors* =
		      'red', all labels will be plotted in this color.
		
		    - If a tuple of colors (string, float, rgb, etc), different labels
		      will be plotted in different colors in the order specified.
		
		inline : bool, default: True
		    If ``True`` the underlying contour is removed where the label is
		    placed.
		
		inline_spacing : float, default: 5
		    Space in pixels to leave on each side of label when placing inline.
		
		    This spacing will be exact for labels at locations where the
		    contour is straight, less so for labels on curved contours.
		
		fmt : `.Formatter` or str or callable or dict, optional
		    How the levels are formatted:
		
		    - If a `.Formatter`, it is used to format all levels at once, using
		      its `.Formatter.format_ticks` method.
		    - If a str, it is interpreted as a %-style format string.
		    - If a callable, it is called with one level at a time and should
		      return the corresponding label.
		    - If a dict, it should directly map levels to labels.
		
		    The default is to use a standard `.ScalarFormatter`.
		
		manual : bool or iterable, default: False
		    If ``True``, contour labels will be placed manually using
		    mouse clicks. Click the first button near a contour to
		    add a label, click the second button (or potentially both
		    mouse buttons at once) to finish adding labels. The third
		    button can be used to remove the last label added, but
		    only if labels are not inline. Alternatively, the keyboard
		    can be used to select label locations (enter to end label
		    placement, delete or backspace act like the third mouse button,
		    and any other key will select a label location).
		
		    *manual* can also be an iterable object of (x, y) tuples.
		    Contour labels will be created as if mouse is clicked at each
		    (x, y) position.
		
		rightside_up : bool, default: True
		    If ``True``, label rotations will always be plus
		    or minus 90 degrees from level.
		
		use_clabeltext : bool, default: False
		    If ``True``, `.ClabelText` class (instead of `.Text`) is used to
		    create labels. `ClabelText` recalculates rotation angles
		    of texts during the drawing time, therefore this can be used if
		    aspect of the axes changes.
		
		zorder : float or None, default: ``(2 + contour.get_zorder())``
		    zorder of the contour labels.
		
		Returns
		-------
		labels
		    A list of `.Text` instances for the labels.
	**/
	public function clabel(?levels:Dynamic, ?fontsize:Dynamic, ?_inline:Dynamic, ?inline_spacing:Dynamic, ?fmt:Dynamic, ?colors:Dynamic, ?use_clabeltext:Dynamic, ?manual:Dynamic, ?rightside_up:Dynamic, ?zorder:Dynamic):Dynamic;
	/**
		Find the point in the contour plot that is closest to ``(x, y)``.
		
		Parameters
		----------
		x, y : float
		    The reference point.
		indices : list of int or None, default: None
		    Indices of contour levels to consider.  If None (the default), all
		    levels are considered.
		pixel : bool, default: True
		    If *True*, measure distance in pixel (screen) space, which is
		    useful for manual contour labeling; else, measure distance in axes
		    space.
		
		Returns
		-------
		contour : `.Collection`
		    The contour that is closest to ``(x, y)``.
		segment : int
		    The index of the `.Path` in *contour* that is closest to
		    ``(x, y)``.
		index : int
		    The index of the path segment in *segment* that is closest to
		    ``(x, y)``.
		xmin, ymin : float
		    The point in the contour plot that is closest to ``(x, y)``.
		d2 : float
		    The squared distance from ``(xmin, ymin)`` to ``(x, y)``.
	**/
	public function find_nearest_contour(x:Dynamic, y:Dynamic, ?indices:Dynamic, ?pixel:Dynamic):Dynamic;
	/**
		Return alpha to be applied to all ContourSet artists.
	**/
	public function get_alpha():Dynamic;
	/**
		Return the array of values, that are mapped to colors.
		
		The base class `.ScalarMappable` does not make any assumptions on
		the dimensionality and shape of the array.
	**/
	public function get_array():Dynamic;
	/**
		Return the values (min, max) that are mapped to the colormap limits.
	**/
	public function get_clim():Dynamic;
	/**
		Return the `.Colormap` instance.
	**/
	public function get_cmap():Dynamic;
	/**
		[*Deprecated*] Return x, y, and the index of a label location.
		
		Labels are plotted at a location with the smallest
		deviation of the contour from a straight line
		unless there is another label nearby, in which case
		the next best place on the contour is picked up.
		If all such candidates are rejected, the beginning
		of the contour is chosen.
		
		Notes
		-----
		.. deprecated:: 3.4
		   
	**/
	public function get_label_coords(distances:Dynamic, XX:Dynamic, YY:Dynamic, ysize:Dynamic, lw:Dynamic):Dynamic;
	/**
		[*Deprecated*] Return the width of the label in points.
		
		Notes
		-----
		.. deprecated:: 3.5
		   
	**/
	public function get_label_width(lev:Dynamic, fmt:Dynamic, fsize:Dynamic):Dynamic;
	/**
		Get the text of the label.
	**/
	public function get_text(lev:Dynamic, fmt:Dynamic):Dynamic;
	/**
		Return the :class:`~matplotlib.transforms.Transform`
		instance used by this ContourSet.
	**/
	public function get_transform():Dynamic;
	public function labels(_inline:Dynamic, inline_spacing:Dynamic):Dynamic;
	/**
		Return a list of artists and labels suitable for passing through
		to `~.Axes.legend` which represent this ContourSet.
		
		The labels have the form "0 < x <= 1" stating the data ranges which
		the artists represent.
		
		Parameters
		----------
		variable_name : str
		    The string used inside the inequality used on the labels.
		str_format : function: float -> str
		    Function used to format the numbers in the labels.
		
		Returns
		-------
		artists : list[`.Artist`]
		    A list of the artists.
		labels : list[str]
		    A list of the labels.
	**/
	public function legend_elements(?variable_name:Dynamic, ?str_format:Dynamic):Dynamic;
	/**
		Find good place to draw a label (relatively flat part of the contour).
	**/
	public function locate_label(linecontour:Dynamic, labelwidth:Dynamic):Dynamic;
	public var norm : Dynamic;
	/**
		Defaults to removing last label, but any index can be supplied
	**/
	public function pop_label(?index:Dynamic):Dynamic;
	/**
		Return whether a contour is long enough to hold a label.
	**/
	public function print_label(linecontour:Dynamic, labelwidth:Dynamic):Dynamic;
	/**
		Set the alpha blending value for all ContourSet artists.
		*alpha* must be between 0 (transparent) and 1 (opaque).
	**/
	public function set_alpha(alpha:Dynamic):Dynamic;
	/**
		Set the value array from array-like *A*.
		
		Parameters
		----------
		A : array-like or None
		    The values that are mapped to colors.
		
		    The base class `.ScalarMappable` does not make any assumptions on
		    the dimensionality and shape of the value array *A*.
	**/
	public function set_array(A:Dynamic):Dynamic;
	/**
		Set the norm limits for image scaling.
		
		Parameters
		----------
		vmin, vmax : float
		     The limits.
		
		     The limits may also be passed as a tuple (*vmin*, *vmax*) as a
		     single positional argument.
		
		     .. ACCEPTS: (vmin: float, vmax: float)
	**/
	public function set_clim(?vmin:Dynamic, ?vmax:Dynamic):Dynamic;
	/**
		Set the colormap for luminance data.
		
		Parameters
		----------
		cmap : `.Colormap` or str or None
	**/
	public function set_cmap(cmap:Dynamic):Dynamic;
	/**
		Set the label properties - color, fontsize, text.
	**/
	public function set_label_props(label:Dynamic, text:Dynamic, color:Dynamic):Dynamic;
	/**
		Set the normalization instance.
		
		Parameters
		----------
		norm : `.Normalize` or None
		
		Notes
		-----
		If there are any colorbars using the mappable for this norm, setting
		the norm of the mappable will reset the norm, locator, and formatters
		on the colorbar to default.
	**/
	public function set_norm(norm:Dynamic):Dynamic;
	/**
		Return a normalized rgba array corresponding to *x*.
		
		In the normal case, *x* is a 1D or 2D sequence of scalars, and
		the corresponding ndarray of rgba values will be returned,
		based on the norm and colormap set for this ScalarMappable.
		
		There is one special case, for handling images that are already
		rgb or rgba, such as might have been read from an image file.
		If *x* is an ndarray with 3 dimensions,
		and the last dimension is either 3 or 4, then it will be
		treated as an rgb or rgba array, and no mapping will be done.
		The array can be uint8, or it can be floating point with
		values in the 0-1 range; otherwise a ValueError will be raised.
		If it is a masked array, the mask will be ignored.
		If the last dimension is 3, the *alpha* kwarg (defaulting to 1)
		will be used to fill in the transparency.  If the last dimension
		is 4, the *alpha* kwarg is ignored; it does not
		replace the pre-existing alpha.  A ValueError will be raised
		if the third dimension is other than 3 or 4.
		
		In either case, if *bytes* is *False* (default), the rgba
		array will be floats in the 0-1 range; if it is *True*,
		the returned rgba array will be uint8 in the 0 to 255 range.
		
		If norm is False, no normalization of the input data is
		performed, and it is assumed to be in the range (0-1).
	**/
	public function to_rgba(x:Dynamic, ?alpha:Dynamic, ?bytes:Dynamic, ?norm:Dynamic):Dynamic;
	/**
		Return whether a label is already near this location.
	**/
	public function too_close(x:Dynamic, y:Dynamic, lw:Dynamic):Dynamic;
}