/* This file is generated, do not edit! */
package matplotlib.contour;
@:pythonImport("matplotlib.contour", "ContourSet") extern class ContourSet {
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
		Draw contour lines or filled regions, depending on
		whether keyword arg 'filled' is *False* (default) or *True*.
		
		The first three arguments must be:
		
		  *ax*: axes object.
		
		  *levels*: [level0, level1, ..., leveln]
		    A list of floating point numbers indicating the contour
		    levels.
		
		  *allsegs*: [level0segs, level1segs, ...]
		    List of all the polygon segments for all the *levels*.
		    For contour lines ``len(allsegs) == len(levels)``, and for
		    filled contour regions ``len(allsegs) = len(levels)-1``.
		
		    level0segs = [polygon0, polygon1, ...]
		
		    polygon0 = array_like [[x0,y0], [x1,y1], ...]
		
		  *allkinds*: *None* or [level0kinds, level1kinds, ...]
		    Optional list of all the polygon vertex kinds (code types), as
		    described and used in Path.   This is used to allow multiply-
		    connected paths such as holes within filled polygons.
		    If not *None*, len(allkinds) == len(allsegs).
		
		    level0kinds = [polygon0kinds, ...]
		
		    polygon0kinds = [vertexcode0, vertexcode1, ...]
		
		    If *allkinds* is not *None*, usually all polygons for a particular
		    contour level are grouped together so that
		
		    level0segs = [polygon0] and level0kinds = [polygon0kinds].
		
		Keyword arguments are as described in
		:class:`~matplotlib.contour.QuadContourSet` object.
		
		**Examples:**
		
		.. plot:: mpl_examples/misc/contour_manual.py
	**/
	@:native("__init__")
	public function ___init__(ax:Dynamic, args:Dynamic, kwargs:Dynamic):Dynamic;
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
	public function _add_label(t:Dynamic, x:Dynamic, y:Dynamic, lev:Dynamic, cvalue:Dynamic):Dynamic;
	/**
		Select contour levels to span the data.
		
		We need two more levels for filled contours than for
		line contours, because for the latter we need to specify
		the lower and upper boundary of each range. For example,
		a single contour boundary, say at z = 0, requires only
		one contour line, but two filled regions, and therefore
		three levels to provide boundaries for both regions.
	**/
	public function _autolev(z:Dynamic, N:Dynamic):Dynamic;
	/**
		Determine the contour levels and store in self.levels.
	**/
	public function _contour_level_args(z:Dynamic, args:Dynamic):Dynamic;
	/**
		Override in derived classes to create and return allsegs and allkinds.
		allkinds can be None.
	**/
	public function _get_allsegs_and_allkinds():Dynamic;
	public function _get_label_clabeltext(x:Dynamic, y:Dynamic, rotation:Dynamic):Dynamic;
	public function _get_label_text(x:Dynamic, y:Dynamic, rotation:Dynamic):Dynamic;
	/**
		Return (lowers,uppers) for filled contours.
	**/
	public function _get_lowers_and_uppers():Dynamic;
	public function _make_paths(segs:Dynamic, kinds:Dynamic):Dynamic;
	/**
		Process *args* and *kwargs*; override in derived classes.
		
		Must set self.levels, self.zmin and self.zmax, and update axes
		limits.
	**/
	public function _process_args(args:Dynamic, kwargs:Dynamic):Dynamic;
	/**
		Color argument processing for contouring.
		
		Note that we base the color mapping on the contour levels
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
		Add an entry to a dictionary of boolean flags
		that are set to True when the mappable is changed.
	**/
	public function add_checker(checker:Dynamic):Dynamic;
	/**
		Add contour label using :class:`~matplotlib.text.Text` class.
	**/
	public function add_label(x:Dynamic, y:Dynamic, rotation:Dynamic, lev:Dynamic, cvalue:Dynamic):Dynamic;
	/**
		Add contour label using :class:`ClabelText` class.
	**/
	public function add_label_clabeltext(x:Dynamic, y:Dynamic, rotation:Dynamic, lev:Dynamic, cvalue:Dynamic):Dynamic;
	/**
		Add a label near the point (x, y). If transform is None
		(default), (x, y) is in data coordinates; if transform is
		False, (x, y) is in display coordinates; otherwise, the
		specified transform will be used to translate (x, y) into
		display coordinates.
		
		*inline*:
		  controls whether the underlying contour is removed or
		  not. Default is *True*.
		
		*inline_spacing*:
		  space in pixels to leave on each side of label when
		  placing inline.  Defaults to 5.  This spacing will be
		  exact for labels at locations where the contour is
		  straight, less so for labels on curved contours.
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
		This function calculates the appropriate label rotation given
		the linecontour coordinates in screen units, the index of the
		label location and the label width.
		
		It will also break contour and calculate inlining if *lc* is
		not empty (lc defaults to the empty list if None).  *spacing*
		is the space around the label in pixels to leave empty.
		
		Do both of these tasks at once to avoid calling mlab.path_length
		multiple times, which is relatively costly.
		
		The method used here involves calculating the path length
		along the contour in pixel coordinates and then looking
		approximately label width / 2 away from central point to
		determine rotation and then to break contour if desired.
	**/
	public function calc_label_rot_and_inline(slc:Dynamic, ind:Dynamic, lw:Dynamic, ?lc:Dynamic, ?spacing:Dynamic):Dynamic;
	/**
		Call this whenever the mappable is changed to notify all the
		callbackSM listeners to the 'changed' signal
	**/
	public function changed():Dynamic;
	/**
		If mappable has changed since the last check,
		return True; else return False
	**/
	public function check_update(checker:Dynamic):Dynamic;
	/**
		Label a contour plot.
		
		Call signature::
		
		  clabel(cs, **kwargs)
		
		Adds labels to line contours in *cs*, where *cs* is a
		:class:`~matplotlib.contour.ContourSet` object returned by
		contour.
		
		::
		
		  clabel(cs, v, **kwargs)
		
		only labels contours listed in *v*.
		
		Optional keyword arguments:
		
		  *fontsize*:
		    size in points or relative size e.g., 'smaller', 'x-large'
		
		  *colors*:
		    - if *None*, the color of each label matches the color of
		      the corresponding contour
		
		    - if one string color, e.g., *colors* = 'r' or *colors* =
		      'red', all labels will be plotted in this color
		
		    - if a tuple of matplotlib color args (string, float, rgb, etc),
		      different labels will be plotted in different colors in the order
		      specified
		
		  *inline*:
		    controls whether the underlying contour is removed or
		    not. Default is *True*.
		
		  *inline_spacing*:
		    space in pixels to leave on each side of label when
		    placing inline.  Defaults to 5.  This spacing will be
		    exact for labels at locations where the contour is
		    straight, less so for labels on curved contours.
		
		  *fmt*:
		    a format string for the label. Default is '%1.3f'
		    Alternatively, this can be a dictionary matching contour
		    levels with arbitrary strings to use for each contour level
		    (i.e., fmt[level]=string), or it can be any callable, such
		    as a :class:`~matplotlib.ticker.Formatter` instance, that
		    returns a string when called with a numeric contour level.
		
		  *manual*:
		    if *True*, contour labels will be placed manually using
		    mouse clicks.  Click the first button near a contour to
		    add a label, click the second button (or potentially both
		    mouse buttons at once) to finish adding labels.  The third
		    button can be used to remove the last label added, but
		    only if labels are not inline.  Alternatively, the keyboard
		    can be used to select label locations (enter to end label
		    placement, delete or backspace act like the third mouse button,
		    and any other key will select a label location).
		
		    *manual* can be an iterable object of x,y tuples. Contour labels
		    will be created as if mouse is clicked at each x,y positions.
		
		  *rightside_up*:
		    if *True* (default), label rotations will always be plus
		    or minus 90 degrees from level.
		
		  *use_clabeltext*:
		    if *True* (default is False), ClabelText class (instead of
		    matplotlib.Text) is used to create labels. ClabelText
		    recalculates rotation angles of texts during the drawing time,
		    therefore this can be used if aspect of the axes changes.
		
		.. plot:: mpl_examples/pylab_examples/contour_demo.py
	**/
	public function clabel(args:Dynamic, kwargs:Dynamic):Dynamic;
	/**
		Finds contour that is closest to a point.  Defaults to
		measuring distance in pixels (screen space - useful for manual
		contour labeling), but this can be controlled via a keyword
		argument.
		
		Returns a tuple containing the contour, segment, index of
		segment, x & y of segment point and distance to minimum point.
		
		Call signature::
		
		  conmin,segmin,imin,xmin,ymin,dmin = find_nearest_contour(
		             self, x, y, indices=None, pixel=True )
		
		Optional keyword arguments:
		
		  *indices*:
		    Indexes of contour levels to consider when looking for
		    nearest point.  Defaults to using all levels.
		
		  *pixel*:
		    If *True*, measure distance in pixel space, if not, measure
		    distance in axes space.  Defaults to *True*.
	**/
	public function find_nearest_contour(x:Dynamic, y:Dynamic, ?indices:Dynamic, ?pixel:Dynamic):Dynamic;
	/**
		returns alpha to be applied to all ContourSet artists
	**/
	public function get_alpha():Dynamic;
	/**
		Return the array
	**/
	public function get_array():Dynamic;
	/**
		return the min, max of the color limits for image scaling
	**/
	public function get_clim():Dynamic;
	/**
		return the colormap
	**/
	public function get_cmap():Dynamic;
	/**
		Return x, y, and the index of a label location.
		
		Labels are plotted at a location with the smallest
		deviation of the contour from a straight line
		unless there is another label nearby, in which case
		the next best place on the contour is picked up.
		If all such candidates are rejected, the beginning
		of the contour is chosen.
	**/
	public function get_label_coords(distances:Dynamic, XX:Dynamic, YY:Dynamic, ysize:Dynamic, lw:Dynamic):Dynamic;
	/**
		Return the width of the label in points.
	**/
	public function get_label_width(lev:Dynamic, fmt:Dynamic, fsize:Dynamic):Dynamic;
	/**
		This computes actual onscreen label width.
		This uses some black magic to determine onscreen extent of non-drawn
		label.  This magic may not be very robust.
		
		This method is not being used, and may be modified or removed.
	**/
	public function get_real_label_width(lev:Dynamic, fmt:Dynamic, fsize:Dynamic):Dynamic;
	/**
		get the text of the label
	**/
	public function get_text(lev:Dynamic, fmt:Dynamic):Dynamic;
	/**
		Return the :class:`~matplotlib.transforms.Transform`
		instance used by this ContourSet.
	**/
	public function get_transform():Dynamic;
	public function labels(_inline:Dynamic, inline_spacing:Dynamic):Dynamic;
	/**
		Return a list of artist and labels suitable for passing through
		to :func:`plt.legend` which represent this ContourSet.
		
		Args:
		
		    *variable_name*: the string used inside the inequality used
		      on the labels
		
		    *str_format*: function used to format the numbers in the labels
	**/
	public function legend_elements(?variable_name:Dynamic, ?str_format:Dynamic):Dynamic;
	/**
		Find a good place to plot a label (relatively flat
		part of the contour).
	**/
	public function locate_label(linecontour:Dynamic, labelwidth:Dynamic):Dynamic;
	/**
		Defaults to removing last label, but any index can be supplied
	**/
	public function pop_label(?index:Dynamic):Dynamic;
	/**
		Return *False* if contours are too short for a label.
	**/
	public function print_label(linecontour:Dynamic, labelwidth:Dynamic):Dynamic;
	/**
		sets alpha for all ContourSet artists
	**/
	public function set_alpha(alpha:Dynamic):Dynamic;
	/**
		Set the image array from numpy array *A*
	**/
	public function set_array(A:Dynamic):Dynamic;
	/**
		set the norm limits for image scaling; if *vmin* is a length2
		sequence, interpret it as ``(vmin, vmax)`` which is used to
		support setp
		
		ACCEPTS: a length 2 sequence of floats
	**/
	public function set_clim(?vmin:Dynamic, ?vmax:Dynamic):Dynamic;
	/**
		set the colormap for luminance data
		
		ACCEPTS: a colormap or registered colormap name
	**/
	public function set_cmap(cmap:Dynamic):Dynamic;
	/**
		.. deprecated:: 1.3
		    The set_colorbar function was deprecated in version 1.3. Use the colorbar attribute instead.
		
		set the colorbar and axes instances associated with mappable
	**/
	public function set_colorbar(im:Dynamic, ax:Dynamic):Dynamic;
	/**
		set the label properties - color, fontsize, text
	**/
	public function set_label_props(label:Dynamic, text:Dynamic, color:Dynamic):Dynamic;
	/**
		set the normalization instance
	**/
	public function set_norm(norm:Dynamic):Dynamic;
	/**
		Return a normalized rgba array corresponding to *x*.
		
		In the normal case, *x* is a 1-D or 2-D sequence of scalars, and
		the corresponding ndarray of rgba values will be returned,
		based on the norm and colormap set for this ScalarMappable.
		
		There is one special case, for handling images that are already
		rgb or rgba, such as might have been read from an image file.
		If *x* is an ndarray with 3 dimensions,
		and the last dimension is either 3 or 4, then it will be
		treated as an rgb or rgba array, and no mapping will be done.
		If the last dimension is 3, the *alpha* kwarg (defaulting to 1)
		will be used to fill in the transparency.  If the last dimension
		is 4, the *alpha* kwarg is ignored; it does not
		replace the pre-existing alpha.  A ValueError will be raised
		if the third dimension is other than 3 or 4.
		
		In either case, if *bytes* is *False* (default), the rgba
		array will be floats in the 0-1 range; if it is *True*,
		the returned rgba array will be uint8 in the 0 to 255 range.
		
		Note: this method assumes the input is well-behaved; it does
		not check for anomalies such as *x* being a masked rgba
		array, or being an integer type other than uint8, or being
		a floating point rgba array with values outside the 0-1 range.
	**/
	public function to_rgba(x:Dynamic, ?alpha:Dynamic, ?bytes:Dynamic):Dynamic;
	/**
		Return *True* if a label is already near this location.
	**/
	public function too_close(x:Dynamic, y:Dynamic, lw:Dynamic):Dynamic;
}